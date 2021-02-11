CC = g++
OUT_DIR = build
CFLAGS = -c -Wall -Werror -Wpedantic -g
INC = -I includes
all : compiler

compiler : main.o lexer.o dfa.o
			$(CC) main.o lexer.o dfa.o -o compiler
		    @mkdir -p $(OUT_DIR)
		    @mv *.o $(OUT_DIR)
		    @mv compiler $(OUT_DIR)

main.o : main.cpp
			$(CC) $(CFLAGS) main.cpp $(OUTPUT) $(INC)
lexer.o :  lexer.cpp
			$(CC) $(CFLAGS) lexer.cpp $(OUTPUT) $(INC)

dfa.o :  dfa.cpp
			$(CC) $(CFLAGS) dfa.cpp $(OUTPUT) $(INC)

clean : 
			rm -rf $(OUT_DIR) compiler
			