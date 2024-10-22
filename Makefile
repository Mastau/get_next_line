# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: thomarna <thomarna@42angouleme.fr>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/08 22:19:48 by thomarna          #+#    #+#              #
#    Updated: 2024/10/22 19:41:48 by thomarna         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = cc
SRCS = 	get_next_line.c \
		get_next_line_utils.c \

OBJS = $(SRCS:.c=.o)

FLAGS = -Werror -Wall -Wextra

HEADER = get_next_line.h

all: $(NAME)

$(NAME): $(OBJS)
	@ar -rcs $(NAME) $(OBJS)


%.o: %.c
	$(CC) $(FLAGS) -I $(HEADER) $< -c -o $@
clean:
	@rm -f $(OBJS)

fclean: clean
	@rm -f $(NAME)

re: fclean all

.PHONY: clean all re fclean
