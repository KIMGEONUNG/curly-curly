all: 
	make -C ./to_allman
	make -C ./to_knr
	g++ main.cpp -l boost_program_options -o curly

clean:
	rm ./to_allman/allman
	rm ./to_allman/lex.yy.c
	rm ./to_knr/knr
	rm ./to_knr/lex.yy.c
	rm ./curly




