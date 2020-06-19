<img src="https://raw.githubusercontent.com/KIMGEONUNG/curly-curly/master/git_material/curly-brackets.png?token=AHU4PHMV2QO6IGWI3GPQFUS65QUNO" width=300>


## 1. Overview
- This project is for convert K&R style code into Allman style code, or vice versa.

### Styles

| Style Name | Example |
|:----------:|---------|
| K&R style  | while (x == y) {<br>&nbsp;&nbsp;&nbsp;&nbsp;something(); <br>&nbsp;&nbsp;&nbsp;&nbsp;somethingelse();<br>}|
| Allman style  | while (x == y) <br>{<br>&nbsp;&nbsp;&nbsp;&nbsp;something(); <br>&nbsp;&nbsp;&nbsp;&nbsp;somethingelse();<br>}|

## 2. Environment & Dependency
- **Linux** : Ubuntu 18.04.4 LTS
- **Flex** : ver. 2.6.4
- **Bison** : ver. 3.0.4

This project use cpp language and cc compiler of which version is v7.5.0. 

## 3. Features
- Convert _K&R_ style into _Allman_ style (Not Implemented)
- Convert _Allman_ style into _K&R_ style (Not Implemented)
- Convert _"no bracket"_ into _K&R_ style (Not Implemented)
- Convert _"no bracket"_ into _Allman_ style (Not Implemented)

## 4. Usage

### Flags

- **--kr** : Convert to K&R style
- **--allman** :  Convert to K&R Allman style
- **--include-no-bracket** : If this flag would be included, no bracket style will convert to target bracket style.
- **--help**

You can also check the options description from --help option like below.

```bash
  > curly --help
```

### 5. Example

```bash
  > curly ./sample_code/allman_style.cs --kr > new_kr_style.cs
```

```bash
  > curly ./sample_code/kr_style.cs --allman > new_allman_style.cs
```
