CPP := g++
CPPFLAGS := -g -O2 
OBJECTS := 
LDFLAGS := 
TARGETS := $(patsubst %.cpp, %, $(wildcard *.cpp))


all: $(TARGETS) 

%: %.cpp
		$(CPP) $(CPPFLAGS) $(LDFLAGS) $< -o $@ 
	
clean:
	-rm -f $(TARGETS)

