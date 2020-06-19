all: a.out

lex.yy.c: ./to_allman.l
	flex ./to_allman.l

a.out: lex.yy.c 
	cc lex.yy.c -lfl

clean:
	rm ./lex.yy.c a.out
