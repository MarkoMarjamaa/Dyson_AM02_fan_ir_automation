Finally working command for Dyson AM02.  
Dyson uses sequence counter with ir code, so you just can't copy&paste one code and use it.  
This has all four commands, START_STOP, SPEED_UP, SPEED_DOWN, OSCILLATION.  
All four commands have four versions of ir codes and dyson_sequence file keeps count what version we should be using.  
Just call DysonSend.sh START_STOP and down worry about counter.  
Of cource you need working lirc, I'm using it with usb-uirt.  
