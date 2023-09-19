 # @file Makefile
 # @author Justin Finn
 # @date 2023-09-18
 # @brief Makefile that compiles files
 # 
 # A file that puts together and compiles while checking for errors
 #


# Compiles files
CC = g++
# Checks for warnings
CFLAGS = -g -Wall -Wextra

# exectuable
default: employee

# links variables
employee: main.o Employee.o Officer.o Supervisor.o 
	$(CC) $(CFLAGS) -o employee main.o Employee.o Officer.o Supervisor.o

# Employee cpp and header file
Employee.o: Employee.cpp Employee.h
	$(CC) $(CFLAGS) -c Employee.cpp

# Officer cpp and header file
Officer.o: Officer.cpp Officer.h
	$(CC) $(CFLAGS) -c Officer.cpp

# Supervisor cpp and header file
Supervisor.o: Supervisor.cpp Supervisor.h
	$(CC) $(CFLAGS) -c Supervisor.cpp 

# main cpp file and other header files
main.o: main.cpp Employee.h Officer.h Supervisor.h 
	$(CC) $(CFLAGS) -c main.cpp

# cleans repo 
clean: $(RM) employee *.o *~



