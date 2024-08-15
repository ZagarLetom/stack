CC=gcc
PP=g++
FLAGS=-Wall -Wextra -Werror -std=c++17 -Wpedantic
TEST_FILE=testing_stack.cpp
all: clean format test coverage
clean:
	@clear
	@rm -rf *.[og]* stack* REPORT.html unit_test
test:
	@echo "==========================="
	@echo "The program is being tested\n==========="
	@echo "Please wait\n==========="
	$(CC) $(FLAGS) -c $(TEST_FILE) --coverage
	$(PP) $(FLAGS) -o unit_test *.o -lgtest -lgtest_main --coverage
	chmod +x unit_test
	./unit_test
coverage:
	gcovr -r . --html-details -o stack_coverage_report.html
rebuild: all
format:
	@clang-format -i *.cpp *.h -style=Google
cppcheck:
	cppcheck --enable=all --suppress=missingIncludeSystem *.cpp *.h stack_cpps/* 
valgrind:
	valgrind --tool=memcheck --leak-check=yes ./stack_test
