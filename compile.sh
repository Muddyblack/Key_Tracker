LINUX
gcc -shared -o "testing/custom_keyboard.so" -I "/usr/include/python3.9" -fPIC key_tracker.c

WINDOWS
gcc -shared -o key_tracker.pyd -I "C:/Program Files (x86)/Python311-32/include" -L "C:/Program Files (x86)/Python311-32/include" -lpython311-32 key_tracker_x86.c

gcc -shared -o key_tracker.pyd key_tracker.c -I "C:/Program Files/Python311/include" -L"C:/Program Files/Python311/libs" -lpython311 key_tracker_x64



cl /LD /I"C:/Program Files/Python311/include"  key_tracker.c /link /LIBPATH:"C:/Program Files/Python311/libs" /OUT:key_tracker_x64.pyd

cl /LD /I"C:/Program Files (x86)/Python311-32/include" key_tracker.c /link /LIBPATH:"C:/Program Files (x86)/Python311-32/libs"  /OUT:key_tracker_x86.pyd


cl /LD /I"D:/Programme/Python310/include"  key_tracker.c /link /LIBPATH:"D:/Programme/Python310/libs" /OUT:key_tracker_x64.pyd