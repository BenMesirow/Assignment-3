CC=g++
FLAGS=-stdlib=libstdc++ -Wno-deprecated
LDLIBS=-I/Library/Frameworks/GLUI.framework/Headers -framework OpenGL -framework GLUI -framework GLUT
EXE=sceneview

$(EXE): *.cpp
	$(CC) $(FLAGS) $(LDLIBS) Assignment3.cpp Camera.cpp tiny*.cpp SceneParser.cpp -o $@

clean:
	rm -rf *.o *~ $(EXE)
