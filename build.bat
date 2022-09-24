@cd %~dp0/build

cmake -S .. -B .
cmake --build .

Pause 