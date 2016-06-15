all:
	g++ -c BigClass.cpp
	g++ -shared -o BigClass.dll BigClass.o
	g++ BigInt.cpp BigClass.dll -I. -Wl,-rpath,. -L. -o BigInt2.exe
	rm -rf *.o