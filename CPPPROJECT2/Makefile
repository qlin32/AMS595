CXX = g++
CXXFLAGS = -std=c++11 -Wall

SRCS = HW2main.cpp approximations.cpp pi_approx.cpp

OBJS = $(SRCS:.cpp=.o)

EXEC = HW2main

all: $(EXEC)

$(EXEC): $(OBJS)
	$(CXX) $(CXXFLAGS) $(OBJS) -o $(EXEC)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(EXEC)