name = demo
compile_flags = -Wall -Wextra -Werror -std=c++17
GLEW = /Users/edavid/.brew/Cellar/glew/2.2.0_1
GLFW = /Users/edavid/.brew/Cellar/glfw/3.3.6
link_flags = -L$(GLEW)/lib -lGLEW -L$(GLFW)/lib -lglfw -framework OpenGL
compiler = clang++
pwd = $(shell pwd)
header_directory = $(pwd)/headers
source_directory = $(pwd)/sources
object_directory = $(pwd)/objects
source_files = $(foreach file,$(shell find sources -type f -not -name "*.h"),$(pwd)/$(file))
object_files = $(subst $(source_directory),$(object_directory),$(source_files:.cpp=.o))
header_files = $(foreach file,$(shell find headers -type f),$(pwd)/$(file))
precompiledheader_file = $(header_directory)/pch.hpp.gch

dependencies: $(name) $(precompiledheader_file) | $(source_directory) $(header_directory) $(object_directory)

$(precompiledheader_file): $(basename $(precompiledheader_file))
	$(compiler) -I$(header_directory) -I$(GLEW)/include -I$(GLFW)/include $^

$(name): $(subst $(source_directory),$(object_directory),$(source_files:.cpp=.o)) | $(source_directory) $(header_directory) $(object_directory)
	$(compiler) $(link_flags) -o $@ $^

.SECONDEXPANSION:
$(object_directory)/main.o: $(source_directory)/main.cpp $(header_files) | $(object_directory)
	cd $(dir $@) && $(compiler) $(compile_flags) -I$(header_directory) -c $<

# each .hpp file needs to reside in the same directory structure as 'sources' except 'sources' replaced with 'headers'
.SECONDEXPANSION:
%.o: $$(subst $(object_directory),$(source_directory),$$(subst .o,.cpp,$$@)) $$(subst $(object_directory),$(header_directory),$$(subst .o,.hpp,$$@)) | $(object_directory)
	cd $(dir $@) && $(compiler) $(compile_flags) -I$(header_directory) -I$(GLEW)/include -I$(GLFW)/include -c $<

# rule for .cpp files that don't have header dependencies
.SECONDEXPANSION:
%.o: $$(subst $(object_directory),$(source_directory),$$(subst .o,.cpp,$$@)) | $(object_directory)
	cd $(dir $@) && $(compiler) $(compile_flags) -I$(header_directory) -I$(GLEW)/include -I$(GLFW)/include -c $<

$(object_directory):
	mkdir $@ && cd $@ && touch .gitkeep
$(source_directory):
	mkdir $@
$(header_directory):
	mkdir $@

.PHONY: all clean re fclean
all:
	make $(name)
clean:
	find $(object_directory) -name "*.o" -delete
	rm -f imgui.ini
	rm -f $(precompiledheader_file)
fclean: clean
	rm -f $(name)
re: fclean
	make $(name)
