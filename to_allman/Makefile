all: a.out

lex.yy.c: ./to_allman.l
	flex ./to_allman.l

a.out: lex.yy.c 
	cc lex.yy.c -lfl -o allman

clean:
	rm ./lex.yy.c allman
