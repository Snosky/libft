#* ************************************************************************** *#
#*                                                                            *#
#*                                                        :::      ::::::::   *#
#*   Makefile                                           :+:      :+:    :+:   *#
#*                                                    +:+ +:+         +:+     *#
#*   By: tpayen <tpayen@student.42.fr>              +#+  +:+       +#+        *#
#*                                                +#+#+#+#+#+   +#+           *#
#*   Created: 2015/01/09 07:38:16 by tpayen            #+#    #+#             *#
#*   Updated: 2016/03/25 14:56:09 by tpayen           ###   ########.fr       *#
#*                                                                            *#
#* ************************************************************************** *#

EXEC = libft.a
CC = clang

FLAGS = -Wall -Werror -Wextra

SRCSDIR = ./
OBJDIR = obj/

SRCS =	ft_memset.c		\
		ft_bzero.c		\
		ft_memcpy.c		\
		ft_memccpy.c	\
		ft_memmove.c	\
		ft_memchr.c		\
		ft_memcmp.c		\
		ft_strlen.c		\
		ft_strdup.c		\
		ft_strcpy.c		\
		ft_strncpy.c	\
		ft_strcat.c		\
		ft_strncat.c	\
		ft_strlcat.c	\
		ft_strchr.c		\
		ft_strrchr.c	\
		ft_strstr.c		\
		ft_strnstr.c	\
		ft_strcmp.c		\
		ft_strncmp.c	\
		ft_atoi.c		\
		ft_isalpha.c	\
		ft_isdigit.c	\
		ft_isalnum.c	\
		ft_isascii.c	\
		ft_isprint.c	\
		ft_toupper.c	\
		ft_tolower.c	\
		ft_strreplace.c	\
		ft_memalloc.c	\
		ft_memdel.c		\
		ft_strnew.c		\
		ft_strdel.c		\
		ft_strclr.c		\
		ft_striter.c	\
		ft_striteri.c	\
		ft_strmap.c		\
		ft_strmapi.c	\
		ft_strequ.c		\
		ft_strnequ.c	\
		ft_strsub.c		\
		ft_strjoin.c	\
		ft_strtrim.c	\
		ft_strsplit.c	\
		ft_strimp.c		\
		ft_itoa.c		\
		ft_putchar.c	\
		ft_putstr.c		\
		ft_putendl.c	\
		ft_putnbr.c		\
		ft_putchar_fd.c	\
		ft_putstr_fd.c	\
		ft_putendl_fd.c	\
		ft_putnbr_fd.c	\
		ft_lstnew.c		\
		ft_lstdelone.c	\
		ft_lstdel.c		\
		ft_lstadd.c		\
		ft_lstiter.c	\
		ft_lstmap.c		\
		ft_lstcount.c	\
		ft_isupper.c	\
		ft_islower.c 	\
		ft_isspace.c	\
		ft_intlen.c		\
		ft_realloc.c	\
		ft_lstpush.c	\
		ft_strswap.c	\
		ft_bcopy.c		\
		ft_tablen.c		\
		get_next_line.c \
		ft_lstdnew.c	\
		ft_lstdadd.c	\
		ft_lstddelone.c \

INCLUDES = -Iincludes

OBJS = $(SRCS:%.c=$(OBJDIR)%.o);

#** Directory to create **#
DIRS = $(OBJDIR)

all: directories $(EXEC)

$(EXEC): $(OBJS)
	ar rc $@ $(OBJS)

$(OBJDIR)%.o: $(SRCDIR)%.c
	$(CC) -o $@ -c $< $(CFLAGS) $(INCLUDES)

.PHONY: directories re clean fclean

re: fclean all

clean:
	rm -rf $(DIRS)

fclean: clean
	rm -rf $(EXEC)

directories: $(DIRS)

$(DIRS):
	mkdir $@
