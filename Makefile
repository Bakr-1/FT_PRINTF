# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aalseri <aalseri@student.42abudhabi.ae>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/02/24 21:10:12 by aalseri           #+#    #+#              #
#    Updated: 2022/09/12 18:05:08 by aalseri          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRCS = srcs/ft_printf.c srcs/ft_putnbr.c srcs/ft_puthexa.c

CFLAGS = -Wall -Wextra -Werror

CC = gcc

INCLUDES = -I includes

OBJS = ${SRCS:.c=.o}

all: ${NAME}

${NAME} : ${OBJS}
	ar rsc $@ ${OBJS}

%.o : %.c ${INCLUDES}
	$(CC) -c $(FLAGS) -o $@ $<

clean:
	rm -rf ${OBJS} ${OBJS_BONUS}

fclean: clean
	rm -rf ${NAME}

re: fclean all

.PHONY: all clean fclean re
