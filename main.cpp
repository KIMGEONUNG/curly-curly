#include <stdio.h>
#include <iostream>
#include <boost/program_options.hpp>
#include <exception>
#include <string>
#include <cstring>

using namespace boost::program_options;

#define PATH_MAX_ 255

std::string get_exe_path() {
  char buf[PATH_MAX_ + 1];
  if (readlink("/proc/self/exe", buf, sizeof(buf) - 1) == -1)
  throw std::string("readlink() failed");
  std::string str(buf);
  return str.substr(0, str.rfind('/'));
}

int main(int argc, char *argv[])
{
    std::string base = get_exe_path();
    std::string knr_path_str = base + "/to_knr/knr";
    std::string allman_path_str = base + "/to_allman/allman";

    char knr_path[knr_path_str.size() + 1];
    strcpy(knr_path, knr_path_str.c_str());
    char allman_path[allman_path_str.size() + 1];
    strcpy(allman_path, allman_path_str.c_str());

    try
    {
        options_description desc{"Options"};

        // (option,description to be printed at help)
        desc.add_options()
            ("help,h", "Help screen")
            ("knr", "Convert to K&R style indentation")
            ("allman", "Convert to Allman style indentation")
            ("include-no-bracket", "If there is no bracket, insert bracket");

        variables_map vm;
        store(parse_command_line(argc, argv, desc), vm);
        notify(vm);

        if (vm.count("help"))
        {
            std::cout << desc << '\n';
        }
        else if (vm.count("knr"))
        {
            //std::cout << "Convert to K&R style..." << '\n';
            std::system(knr_path);
        }
        else if (vm.count("allman"))
        {
            //std::cout << "Convert to Allman style..." << '\n';
            std::system(allman_path);
        }
        else if (vm.count("include-no-bracket"))
        {
            std::cout << "Not inplemented" << std::endl;
        }
        else
        {
            std::cout << "Execute nothing" << std::endl;
        }

    }
    catch (const error &ex)
    {
        std::cerr << ex.what() << '\n';
    }
}
