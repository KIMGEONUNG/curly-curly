all: a.out

lex.yy.c: ./to_knr.l
	flex ./to_knr.l

a.out: lex.yy.c 
	cc lex.yy.c -lfl -o knr

clean:
	rm ./lex.yy.c knr
