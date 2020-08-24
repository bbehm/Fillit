# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jhallama <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/15 16:10:31 by jhallama          #+#    #+#              #
#    Updated: 2019/12/09 14:59:46 by jhallama         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = fillit

LIBFTSRC = ft_memset.c ft_bzero.c ft_memcpy.c ft_memccpy.c ft_memmove.c ft_memchr.c ft_memcmp.c ft_strlen.c ft_strdup.c ft_strcpy.c ft_strncpy.c ft_strcat.c ft_strncat.c ft_strlcat.c ft_strchr.c ft_strrchr.c ft_strstr.c ft_strnstr.c ft_strcmp.c ft_strncmp.c ft_atoi.c ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isprint.c ft_isascii.c ft_toupper.c ft_tolower.c ft_memalloc.c ft_memdel.c ft_strnew.c ft_strdel.c ft_strclr.c ft_striter.c ft_striteri.c ft_strmap.c ft_strmapi.c ft_strequ.c ft_strnequ.c ft_strsub.c ft_strjoin.c ft_strtrim.c ft_strsplit.c ft_itoa.c ft_putchar.c ft_putstr.c ft_putendl.c ft_putnbr.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_lstnew.c ft_lstdelone.c ft_lstdel.c ft_lstadd.c ft_lstiter.c ft_lstmap.c

LIBFT = $(LIBFTSRC:%.c=libft/%.c)

FILLIT = srcs/create_tetriminos.c srcs/main.c srcs/map_validator.c srcs/tetriminos_into_alphabet.c srcs/new_map.c srcs/list_maker.c srcs/solver.c srcs/print_map.c

HEADERS = -I libft/libft.h -I srcs/fillit.h

LIBFTOBJ = $(LIBFTSRC:.c=.o)

.PHONY: all clean fclean re

all: $(NAME)

$(NAME):
	gcc -Wall -Wextra -Werror -c $(LIBFT) $(FILLIT) $(HEADERS)
	gcc -Wall -Wextra -Werror -o $(NAME) $(LIBFTOBJ) $(FILLIT) $(HEADERS)

clean:
	/bin/rm -f $(LIBFTOBJ) create_tetriminos.o main.o map_validator.o tetriminos_into_alphabet.o new_map.o list_maker.o solver.o print_map.o

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all
