.PHONY: all clean

OBJECTS = main.o my_sum.o
CFLAGS = -Wall -Wextra -Werror -pedantic -std=c++17

all: app

app: $(OBJECTS)
	c++ $(OBJECTS) -o app

main.o: src/main.cpp include/workshop1/my_sum.h
	c++ -Iinclude -o main.o $(CFLAGS) -c src/main.cpp

my_sum.o: src/my_sum.cpp include/workshop1/my_sum.h
	c++ -Iinclude -o my_sum.o $(CFLAGS) -c src/my_sum.cpp

clean:
	-find . -name '*.o' -delete
	-rm app
