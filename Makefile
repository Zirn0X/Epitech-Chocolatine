##
## EPITECH PROJECT, 2022
## My Sokoban
## File description:
## Makefile
##

SRC =	main.c

OBJ = $(SRC:.c=.o)

NAME = my_sokoban

CC = gcc

CPPFLAGS =	-Iincludes -lncurses

CFLAGS =	 -Wall -Wextra

DEBUG = -g3

TARGS	=	-lcriterion

all:	$(OBJ)
		$(CC) -o $(NAME) $(OBJ) $(MAIN) $(CPPFLAGS) $(CFLAGS)

clean:
		rm -f $(OBJ)

fclean:	clean
		rm -f $(NAME)
		rm -f $(NAME_TEST)
		rm -f vgcore.*
		rm -f ./$(NAME).test
		make fclean -C lib/

tests_run:	$(OBJ) build_lib
			gcc $(OBJ) $(TST) -o $(NAME).test $(TARGS) $(CPPFLAGS) $(CFLAGS)
			./$(NAME).test
			gcovr --exclude tests/
			gcovr --exclude tests/ --branches

re:		fclean all

.PHONY: all clean fclean build_lib tests_run re
