cc = gcc
vpath %.c ./src
src_path = ./src
inc_path = ./inc
dep_path = Dependencies/
obj_path = object/
quiz=Rizk_MinaRaouf_Wael_Khaled.o

src_files =$(subst $(src_path)/,,$(wildcard $(src_path)/*.c))
# i dont know why every time im using src_files=$(wildcard *.c) give error.

obj_files1 = $(src_files:.c=.o)
#obj_files2 = $(addprefix $(obj_path)/, $(src_files:.c=.o)) if i use add prefix for object files it gave error ?

dep_files1= $(src_files:.c=.d)
#dep_files2 = $(addprefix $(dep_path)/, $(patsubst %.c, %.d, $(wildcard*.c))) ##if i use this command it will work but when use make clean it will not delete .d file in deppendencies,why?
dep_files2 =$(addprefix $(dep_path)/, $(dep_files1))


link_target = app.exe



all : $(link_target)

#to includes .d files
-include $(dep_files2)


clean_files = $(obj_files1) $(link_target) $(dep_files2) 
# remove 
clean :
	-rm $(clean_files)


# till now i dont know why if make $(obj_bath)/%.o to locate object files in specific folder it wont work and give error.
%.o : %.c
	$(cc) -c -I$(inc_path) $< > $(obj_path)\$*.o -o $@ 
	$(cc) -MM -I$(inc_path) $< > $(dep_path)\$*.d

#link
$(link_target) : $(obj_files1) $(quiz) 
	$(cc) $^ -o $@

