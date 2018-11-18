#shader: main.cpp gizmo.cpp skeleton.cpp node.cpp object3d.cpp common/shader.cpp common/controls.cpp common/objloader.cpp common/texture.cpp common/vboindexer.cpp
build:	
	g++ -std=c++11 main.cpp gizmo.cpp object3d.cpp skeleton.cpp node.cpp -o shader common/shader.cpp common/controls.cpp common/objloader.cpp common/texture.cpp common/vboindexer.cpp -lGL -lGLU -lGLEW `pkg-config --libs glfw3` -lfbxsdk  -L/usr/local/lib/gcc4/x64/release

clean:
	rm -fr shader