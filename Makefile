CC=g++
FLAGS=-stdlib=libstdc++ -Wno-deprecated
LDLIBS=-I/Library/Frameworks/GLUI.framework/Headers -framework OpenGL -framework GLUI -framework GLUT
SHAPES=Shape.cpp Cone.cpp Cube.cpp Cylinder.cpp Sphere.cpp Torus.cpp
EXE=sceneview

$(EXE): *.cpp
	$(CC) $(FLAGS) $(LDLIBS) Assignment3.cpp $(SHAPES) Camera.cpp tiny*.cpp SceneParser.cpp -o $@

clean:
	rm -rf *.o *~ $(EXE)
