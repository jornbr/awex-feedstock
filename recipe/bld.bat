
(
echo [build_ext]
echo cmake_opts=-DPython3_EXECUTABLE="%PYTHON%" -DCMAKE_C_COMPILER=gcc -G "MinGW Makefiles"
echo compiler=gfortran
) > "%SRC_DIR%\setup.cfg"

set CFLAGS=-DMS_WIN64
set CMAKE_BUILD_PARALLEL_LEVEL=%CPU_COUNT%
python -m pip install --no-deps -v "%SRC_DIR%"
