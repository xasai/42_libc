CCF = gcc -Wall -Wextra -Werror -c 
NAME = libft.a

SRC = ft_strtrim.c ft_strjoin.c ft_substr.c ft_memmove.c ft_strdup.c ft_calloc.c ft_atoi.c ft_strnstr.c ft_strlcpy.c ft_strlcat.c ft_strncmp.c ft_strrchr.c ft_strchr.c ft_memchr.c ft_memcmp.c ft_memccpy.c ft_memcpy.c ft_bzero.c ft_isalpha.c ft_isdigit.c ft_isprint.c ft_isalnum.c ft_isascii.c ft_memset.c ft_strlen.c ft_tolower.c ft_toupper.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_itoa.c ft_putnbr_fd.c ft_strmapi.c ft_split.c ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c ft_putchar.c ft_putstr.c ft_ctod.c ft_intwid.c ft_putnbr_base.c ft_skip_atoi.c

OBJ = $(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ) 
	ar rc $(NAME) $(OBJ) 

%.o: %.c
	$(CCF) -g $< -o $@ 

clean: 
	rm -rf *.o

fclean: clean 
	rm $(NAME)

re: clean all

.PHONY: bonus clean fclean re all
