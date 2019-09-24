vpath %.c ./src
vpath %.h ./inc
CC = gcc
SRC_PATH = ./src
INCLUDE_PATH = ./inc
depence_path=.\Dependencies
obj_1= .\object
dep_1=.\Dependencies
src_1=.\src
#SRCS :=$(shell find $(src_1)-name '*.c')
#OBJS :=$(patsubst%.c,$(obj_1)/%.o,$(SRCS))
#LINK_TARGET = app.exe
#all:$(LINK_TARGET)
#addprefix $(obj_1)
SRCS=$(wildcard*.c)
OBJS=$(SRCS:.c=.o)
#OBJS= $(patsubst %.c, %.o, $(SRCS))
OBJ_location=$(addprefix $(obj_1)/,$(OBJS))
DEPS=$(SRCS:.c=.d)
#DEPS=$(patsubst %.c, %.d, $(SRCS))) i dont know why didnt work and if i merge DEPS and DEPS_location in same line  it wont work
#DEPS_location=$(addprefix $(dep_1)/,DEPS)
target= my app.exe
all: $(target)
#$(obj_1):
	#mkdir $(obj_1)
		
%.o:%.c
	$(CC) -c -I$(INCLUDE_PATH) $< -o $@
	$(CC) -MM -I$(INCLUDE_PATH)$<  > #$(dep_1)\ $*.d
quiz= Rizk_MinaRaouf_Wael_Khaled.o
$(target):$(OBJS)$(quiz)
	$(CC) $^ -o $@
#OBJ = main.o LCD.o DIO.o
CLEAN_TARGET = $(LINK_TARGET) $(OBJ)

	
clean:
	-rm $(CLEAN_TARGET)
	
#$(LINK_TARGET): $(OBJ) $(quiz)
# name of the specified object file should be explicitly added here
	#$(CC) $(OBJ) $(quiz) -o $@
# and here also
	echo Linking done !
#%.o: %.c

#main.o : main.c main.h LCD.h DIO.h code.h
#	$(CC) -c -I$(INCLUDE_PATH) $< -o $@
#$(obj_1)/LCD.o : LCD.c LCD.h DIO.h code.h 
#	$(CC) -c -I$(INCLUDE_PATH) $< -o $@
#$(obj_1)/DIO.o : DIO.c DIO.h code.h
#	$(CC) -c -I$(INCLUDE_PATH) $< -o $@
	#$(obj_1)