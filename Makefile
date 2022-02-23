#SETUP
NAME		=	pipex
CC			=	gcc
FLAGS		=	-Wall -Wextra -Werror
RM			=	rm -rf

#FILES AND PATH
HEADER_SRCS	=	pipex.h
HEADER_DIR	=	inc/
HEADER		=	$(addprefix $(HEADER_DIR), $(HEADER_SRCS))

PATH_SRCS	=	pipex.c childs.c error.c free.c
PATH_DIR	=	main/
PATH		=	$(addprefix $(PATH_DIR), $(PATH_SRCS))
OBJ			=	$(PATH:.c=.o)

FUNC_SRCS	=	ft_strncmp.c ft_strchr.c ft_split.c ft_strjoin.c ft_strlen.c
FUNC_DIR	=	func/
FUNC 		=	$(addprefix $(FUNC_DIR), $(FUNC_SRCS))
OBJ_F		=	$(FUNC:.c=.o)

#COMMANDS
%.o: %.c $(HEADER) Makefile
				@${CC} ${FLAGS} -c $< -o $@

$(NAME):		$(OBJ_F) $(OBJ)
				@$(CC) $(OBJ_F) $(OBJ) -o $(NAME)
				@echo "$(GREEN)$(NAME) created!$(DEFAULT)"

all:			$(NAME) 

clean:
				@$(RM) $(OBJ)
				@$(RM) $(OBJ_F)
				@echo "$(YELLOW)object files deleted!$(DEFAULT)"

fclean:			clean
				@$(RM) $(NAME)
				@echo "$(RED)pipex deleted!$(DEFAULT)"

re:				fclean all

.PHONY:		all clean fclean re

#COLORS
RED = \033[1;31m
GREEN = \033[1;32m
YELLOW = \033[1;33m
DEFAULT = \033[0m
