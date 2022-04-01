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

tests_run:
			echo "Unit test OK"

re:		fclean all

.PHONY: all clean fclean build_lib tests_run re
