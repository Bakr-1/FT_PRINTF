# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aalseri <aalseri@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/02/24 21:10:12 by aalseri           #+#    #+#              #
#    Updated: 2022/03/11 10:58:52 by aalseri          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRCS = ft_printf.c ft_crazy.c ft_putnbr_base.c ft_putnbr.c ft_putnbr_un.c ft_putpointer.c ft_putstr.c ft_puthexa.c ft_puthexa.c ft_putchar.c

OBJS = ${SRCS:.c=.o}

INCLUDES = ft_printf.h

CC = gcc

FLAGS = -Wall -Wextra -Werror

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
