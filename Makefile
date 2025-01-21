# author @ItsukiYoshida
.SUFFIXES: .cpp .exe

CXXFLAGS := -fsanitize=undefined -fsanitize=address -fno-omit-frame-pointer -Wall -Wno-unknown-pragmas -std=c++20 -g -o 
A = a.cpp
B = b.cpp
C = c.cpp
D = d.cpp
E = e.cpp
F = f.cpp
G = g.cpp

all:;
	@make --no-print-directory a.exe
	@make --no-print-directory b.exe
	@make --no-print-directory c.exe
	@make --no-print-directory d.exe
	@make --no-print-directory e.exe
	@make --no-print-directory f.exe
	@make --no-print-directory g.exe

a.exe: $(A)
	$(CXX) $(CXXFLAGS) $@ $<

b.exe: $(B)
	$(CXX) $(CXXFLAGS) $@ $<

c.exe: $(C)
	$(CXX) $(CXXFLAGS) $@ $<

d.exe: $(D)
	$(CXX) $(CXXFLAGS) $@ $<

e.exe: $(E)
	$(CXX) $(CXXFLAGS) $@ $<

f.exe: $(F)
	$(CXX) $(CXXFLAGS) $@ $<

g.exe: $(G)
	$(CXX) $(CXXFLAGS) $@ $<

a: a.exe;
	@make --no-print-directory $<
	@while true; do \
		./$<; \
		echo ""; \
	done

b: b.exe;
	@make --no-print-directory $<
	@while true; do \
		./$<; \
		echo ""; \
	done

c: c.exe;
	@make --no-print-directory $<
	@while true; do \
		./$<; \
		echo ""; \
	done

d: d.exe;
	@make --no-print-directory $<
	@while true; do \
		./$<; \
		echo ""; \
	done
e: e.exe;
	@make --no-print-directory $<
	@while true; do \
		./$<; \
		echo ""; \
	done

f: f.exe;
	@make --no-print-directory $<
	@while true; do \
		./$<; \
		echo ""; \
	done

g: g.exe;
	@make --no-print-directory $<
	@while true; do \
		./$<; \
		echo ""; \
	done

clean:;	\rm -f *.exe
