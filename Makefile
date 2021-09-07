CC=gcc
EXECUTABLE=game
SOURCES=$(wildcard src/*.c)
OBJS=$(SOURCES:.c=.o)
LIBFLAGS= -lSDL -lSDL_ttf

debug : $(EXECUTABLE)
release : $(EXECUTABLE)

all: $(SOURCES) $(EXECUTABLE)
$(EXECUTABLE): $(OBJS)
	$(CC) $(OBJS) -o $@
.cpp.o:
	$(CC) -c $(LIBFLAGS) $< -o $@

clean:
	rm -f main $(OBJS)

