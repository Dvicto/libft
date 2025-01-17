NAME = libft.a
SRCS = ./ft_catstr.c ./ft_bzero.c ./ft_memcpy.c ./ft_strcmp.c ./ft_strstr.c ./ft_isalnum.c ./ft_isalpha.c ./ft_isdigit.c ./ft_isprint.c ./ft_isascii.c ./ft_strcat.c ./ft_strncat.c ./ft_strlcat.c ./ft_strchr.c ./ft_strrchr.c ./ft_strstr.c ./ft_strcpy.c ./ft_strdup.c  ./ft_strlen.c ./ft_strncmp.c ./ft_strncpy.c ./ft_tolower.c ./ft_toupper.c ./ft_memset.c ./ft_atoi.c ./ft_strnstr.c ./ft_memccpy.c ./ft_memmove.c ./ft_memchr.c ./ft_memcmp.c ./ft_putchar.c ./ft_putstr.c ./ft_putendl.c ./ft_putnbr.c ./ft_putchar_fd.c ./ft_putstr_fd.c ./ft_putendl_fd.c ./ft_putnbr_fd.c ./ft_itoa.c ./ft_lennbr.c ./ft_strnew.c ./ft_strequ.c ./ft_strnequ.c ./ft_memalloc.c ./ft_strjoin.c ./ft_strlenws.c ./ft_strtrim.c ./ft_strlentrim.c ./ft_malzero.c ./ft_strclr.c ./ft_strsub.c ./ft_memdel.c ./ft_strdel.c ./ft_lstnew.c ./ft_striter.c ./ft_striteri.c ./ft_strmap.c ./ft_strmapi.c ./ft_strsplit.c ./ft_lstiter.c ./ft_lstmap.c ./ft_lstadd.c ./ft_lstdel.c ./ft_lstdelone.c
OBJS = $(SRCS:.c=.o)
INCLUDE = ./
FLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME):
	@gcc $(FLAGS) -c $(SRCS) -I $(INCLUDE)
	@ar rc $(NAME) ./*.o

clean:
	@rm -f $(OBJS)
	@rm -f .*.swp
	@rm -f .*.swo
	@rm -f .*.swn

fclean: clean
	@rm -f $(NAME)

re: fclean all
