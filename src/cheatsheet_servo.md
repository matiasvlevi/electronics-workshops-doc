---
title: Servo Motor Arduino Cheatsheet
---

# Servo Motor Cheatsheet


Include the `Servo.h` library which gives us utilities to drive the servo motors 

`
	#include <Servo.h>
`

::: {.latex}
\quad
:::


Declare your virtual servo object globaly.

This is what allows us to represent one real world servo motor in our code.

`
	Servo myMotor;
`

You could create more motors, \ and give them different names 

> ex: \
> `Servo motorArmLeft;` \
> `Servo motorArmRight;`

::: {.latex}
\quad
:::


At the start of the program, we configure the motor to listen for a signal from `Pin 9`

`
	myMotor.attach(9);
`

> all pins with the `~` symbol can be used for motors.


::: {.latex}
\quad
:::


We can now control our motor with the `write` method, it accepts values from `0` to `180`

`
	myMotor.write(45); // Move to 45 degrees
`

\

You can convert an analog value `x` range (range `0` to `1023`) to a motor angle (range `0` to `180`), we can use the `map` function

`
	myMotor.write(map(x, 0, 1023, 0, 180)); 
`