set LIB=%LIBRARY_LIB%;%LIB%
set LIBPATH=%LIBRARY_LIB%;%LIBPATH%;%INSTALL_DIR%\lib
set INCLUDE=%LIBRARY_INC%;%INCLUDE%;%RECIPE_DIR%;%INSTALL_DIR%\include

%PYTHON% setup.py clean --all
%PYTHON% setup.py build
%PYTHON% setup.py bdist_wheel
dir
cd dist
dir
%PYTHON% -m pip install tess*.whl
