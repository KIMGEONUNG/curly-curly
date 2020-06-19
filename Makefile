all: a.out

lex.yy.c: ./bracket_lex.l
	flex ./bracket_lex.l

a.out: lex.yy.c 
	cc lex.yy.c -lfl	

re: clean, all

clean:
	rm ./lex.yy.c a.out

