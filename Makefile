# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ler-rech <ler-rech@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/21 15:43:25 by ler-rech          #+#    #+#              #
#    Updated: 2021/01/13 15:56:31 by ler-rech         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

GCC = gcc -Wall -Wextra -Werror
NASM = nasm -f macho64
NAME = libasm.a

FILES_S = _ft_write.s _ft_strlen.s _ft_strcpy.s _ft_strcmp.s _ft_read.s _ft_strdup.s

FILES_O = $(FILES_S:.s=.o)

%.o:	%.s
		$(NASM) $<

all: $(NAME)

$(NAME):	$(FILES_O)
			ar rcs $(NAME) $(FILES_O)
	
test:
			$(GCC) main.c $(NAME)
			
clean:		
		rm -f $(FILES_O) 

fclean: clean
			rm -f $(NAME)

re:	fclean all