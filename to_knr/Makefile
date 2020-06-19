all: a.out

lex.yy.c: ./to_knr.l
	flex ./to_knr.l

a.out: lex.yy.c 
	cc lex.yy.c -lfl

clean:
	rm ./lex.yy.c a.out
