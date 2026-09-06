@echo off
rem x86 Native Tools prompt. Builds the shipping proxy: dinput8.dll
rem Same flags as the development build on purpose. /O2 is NOT added:
rem every hook here was verified against code the dev build generated,
rem and a shipping binary is the wrong place to find out that a
rem calling convention only held at /Od.
cl /LD /EHsc /DDA2_PROXY_BUILD da2_proxy.cpp da2_console.cpp ^
   /I.. ..\libMinHook.x86.lib XInput9_1_0.lib user32.lib shell32.lib ^
   /Fe:dinput8.dll /link /LTCG /DEF:da2_proxy.def
