#* ************************************************************************** *#
#*                                                                            *#
#*                                                        :::      ::::::::   *#
#*   Makefile                                           :+:      :+:    :+:   *#
#*                                                    +:+ +:+         +:+     *#
#*   By: tpayen <tpayen@student.42.fr>              +#+  +:+       +#+        *#
#*                                                +#+#+#+#+#+   +#+           *#
#*   Created: 2015/01/09 07:38:16 by tpayen            #+#    #+#             *#
#*   Updated: 2016/03/24 21:52:43 by tpayen           ###   ########.fr       *#
#*                                                                            *#
#* ************************************************************************** *#

NAME = libft.a
CC = clang

DEBUG = no

ifeq ($(DEBUG), no)
FLAGS = -Wall -Werror -Wextra
else
FLAGS = -g
endif

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
		get_next_line.c

INCLUDES = -Iincludes

OBJS = $(SRCS:%.c=$(OBJDIR)%.o);

#** Directory to create **#
DIRS = $(OBJDIR)

.SILENT:

all: directories $(NAME)

$(NAME):
ifeq ($(DEBUG), no)
	@echo "\\033[1;34m--- $(NAME) compilation ---\\033[39m"
else
	@echo "\\033[1;34m--- $(NAME) debug compilation ---\\033[39m"
endif
	@echo -n "\\033[1;35mObjects compilation : \\033[0;39"
	$(MAKE) $(OBJS)
	@echo "\n\\033[1;35mFinal compilation\\033[0;39m"
	ar rc $@ $(OBJS)
	@echo "\\033[1;34m--- $(NAME) compilation done ---\\033[39m"

$(OBJDIR)%.o: $(SRCSDIR)%.c
	echo -n "\\033[1;32m.\\033[0;39m"
	$(CC) -o $@ -c $< $(FLAGS) $(INCLUDES)

.PHONY: directories clean fclean

re: fclean all

clean:
	rm -rf $(OBJDIR)
	echo "\\033[32m--- Objects form $(NAME) deleted ---\\033[0;39m"

fclean: clean
	rm -f $(NAME)
	echo "\\033[32m--- $(NAME) deleted ---\\033[0;39m"

directories: $(DIRS)

$(DIRS):
	mkdir -p $@
