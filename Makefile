CXX = g++
CXXFLAGS = -Iinclude -Iinclude/sdl
LDFLAGS = -Llib -lmingw32 -lSDL2main -lSDL2 -mwindows

TARGET = main
SOURCES = src/main.cpp  # Предполагается, что ваш файл main.cpp находится в папке src

all: $(TARGET)

$(TARGET): $(SOURCES)
	$(CXX) $(CXXFLAGS) -o $@ $^ $(LDFLAGS)

clean:
	rm -f $(TARGET)