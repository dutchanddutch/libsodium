cscript msvc-scripts/rep.vbs //Nologo s/@VERSION@/1.0.16/ < src\libsodium\include\sodium\version.h.in > tmp
cscript msvc-scripts/rep.vbs //Nologo s/@SODIUM_LIBRARY_VERSION_MAJOR@/10/ < tmp > tmp2
cscript msvc-scripts/rep.vbs //Nologo s/@SODIUM_LIBRARY_VERSION_MINOR@/1/ < tmp2 > src\libsodium\include\sodium\version.h
del tmp tmp2
cscript msvc-scripts/rep.vbs //Nologo s/@SODIUM_LIBRARY_MINIMAL_DEF@// < src\libsodium\include\sodium\export.h.in > tmp
cscript msvc-scripts/rep.vbs //Nologo s/@SODIUM_LIBRARY_SIZE_T_DEF@// < tmp > src\libsodium\include\sodium\export.h
del tmp
