default all:
	python3 test.py ./tests s-mips.circ -o ./tests-out -t s-mips-template.circ -v 4

custom:
	python3 test.py ./tests-custom s-mips.circ -o ./tests-out -t s-mips-template.circ -v 4

price:
	python3 price.py s-mips.circ S-MIPS
