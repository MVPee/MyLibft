NAME = libft.a
CC = gcc
CFLAGS = -Wall -Wextra -Werror

LIBFT_SRCS =	srcs/libft/ft_isalpha.c \
				srcs/libft/ft_isdigit.c \
				srcs/libft/ft_isalnum.c \
				srcs/libft/ft_isascii.c \
				srcs/libft/ft_isprint.c \
				srcs/libft/ft_strlen.c \
				srcs/libft/ft_memset.c \
				srcs/libft/ft_bzero.c \
				srcs/libft/ft_memcpy.c \
				srcs/libft/ft_memmove.c \
				srcs/libft/ft_strlcpy.c \
				srcs/libft/ft_strlcat.c \
				srcs/libft/ft_toupper.c \
				srcs/libft/ft_tolower.c \
				srcs/libft/ft_strchr.c \
				srcs/libft/ft_strrchr.c \
				srcs/libft/ft_strncmp.c \
				srcs/libft/ft_memchr.c \
				srcs/libft/ft_memcmp.c \
				srcs/libft/ft_strnstr.c \
				srcs/libft/ft_atoi.c \
				srcs/libft/ft_calloc.c \
				srcs/libft/ft_strdup.c \
				srcs/libft/ft_substr.c \
				srcs/libft/ft_strjoin.c \
				srcs/libft/ft_strtrim.c \
				srcs/libft/ft_split.c \
				srcs/libft/ft_itoa.c \
				srcs/libft/ft_strmapi.c \
				srcs/libft/ft_striteri.c \
				srcs/libft/ft_putstr_fd.c \
				srcs/libft/ft_putchar_fd.c \
				srcs/libft/ft_putendl_fd.c \
				srcs/libft/ft_putnbr_fd.c \
				srcs/libft/ft_lstnew_bonus.c \
				srcs/libft/ft_lstadd_front_bonus.c \
				srcs/libft/ft_lstsize_bonus.c \
				srcs/libft/ft_lstlast_bonus.c \
				srcs/libft/ft_lstadd_back_bonus.c \
				srcs/libft/ft_lstdelone_bonus.c \
				srcs/libft/ft_lstclear_bonus.c \
				srcs/libft/ft_lstiter_bonus.c \
				srcs/libft/ft_lstmap_bonus.c

GNL_SRCS = 		srcs/gnl/get_next_line.c

PRINTF_SRCS = 	srcs/printf/ft_printf.c \
				srcs/printf/srcs/ft_putchar_fd_l.c \
				srcs/printf/srcs/ft_putstr_fd_l.c \
				srcs/printf/srcs/ft_putnbr_fd_l.c \
				srcs/printf/srcs/ft_hexadecimal.c \
				srcs/printf/srcs/ft_pointer.c \
				srcs/printf/srcs/ft_u_putnbr_fd_l.c

SRCS = $(LIBFT_SRCS) $(GNL_SRCS) $(PRINTF_SRCS)

OBJS = $(SRCS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
