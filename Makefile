CXX = g++
CXXFLAGS = -Wall -Wextra -std=c++17
AR = ar
ARFLAGS = rcs

TARGET = calculator.exe
LIB = libcalculator.a

all: $(TARGET)

$(TARGET): main.o $(LIB)
	$(CXX) main.o $(LIB) -o $@

$(LIB): calculator.o
	$(AR) $(ARFLAGS) $@ $^

main.o: main.cpp calculator.h
	$(CXX) $(CXXFLAGS) -c $< -o $@

calculator.o: calculator.cpp calculator.h
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f *.o $(LIB) $(TARGET)

.PHONY: all clean
