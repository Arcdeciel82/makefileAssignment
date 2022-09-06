# Curt Lynch
# Makefile
# 09/06/2022
# Makefile for the employee project

CC = g++ # using g++ for compilation
CFLAGS = -g -Wall -Wextra # flags for all warnings, extra warning, and g for debugging
TARGET = Employee # Target binary

default = $(TARGET)

all: $(TARGET)

$(TARGET): Employee.o Officer.o Supervisor.o main.o
	$(CC) $(CFLAGS) -o $(TARGET) Employee.o Officer.o Supervisor.o main.o

Employee.o: Employee.h Employee.cpp
	$(CC) $(CFLAGS) -c Employee.cpp

Officer.o: Officer.h Officer.cpp
	$(CC) $(CFLAGS) -c Officer.cpp

Supervisor.o: Supervisor.h Supervisor.cpp
	$(CC) $(CFLAGS) -c Supervisor.cpp

main.o: main.cpp
	$(CC) $(CFLAGS) -c main.cpp

clean:
	$(RM) $(TARGET) *.o *~ 
