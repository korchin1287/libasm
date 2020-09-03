# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nofloren <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/09/02 17:44:51 by nofloren          #+#    #+#              #
#    Updated: 2020/09/03 15:41:35 by nofloren         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a

SRC = ft_read.s ft_strcmp.s ft_strcpy.s ft_strdub.s ft_strlen.s ft_write.s

MAIN = main.c

OBJ = $(SRC:.s=.o)

all: $(NAME)

$(NAME): $(OBJ) $(MAIN)
		ar rc $(NAME) $(OBJ)
		ranlib $(NAME)
		gcc	-Wall -Wextra -Werror $(MAIN) -L. -lasm -o libasm

$(OBJ): $(SRC)
		nasm -f macho64 ft_read.s
		nasm -f macho64 ft_strcmp.s
		nasm -f macho64 ft_strcpy.s
		nasm -f macho64 ft_strdub.s
		nasm -f macho64 ft_strlen.s
		nasm -f macho64 ft_write.s

clean:
		rm -f *.o

fclean: clean
		rm -f $(NAME)
		rm -f libasm

re: fclean all

.PHONY: re, clean, fclean, all