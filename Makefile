default all:
	./test.py ./tests s-mips.circ -o ./tests-out -t s-mips-template.circ -v 4

custom:
	./test.py ./tests-custom s-mips.circ -o ./tests-out -t s-mips-template.circ -v 4
