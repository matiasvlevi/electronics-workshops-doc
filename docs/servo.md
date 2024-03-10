---
title: Servo Motor
author: [Ateliers Kikicode, Matías Vazquez-Levi]
date: 2024-03-10
keywords: [servo, arduino, kikicode]
---

::: {.latex}
\begin{minipage}[t]{0.65\textwidth}
  \Large \textbf{Servo Motor}
\end{minipage}
\hfill
\begin{minipage}[t]{0.35\textwidth}
  \textbf{Name:} \underline{\hspace{1.65in}}
\end{minipage}
\vspace{1em}
:::

\noindent
\begin{minipage}[t]{0.65\textwidth}
\vspace{0pt}
Servo motors are components that allow you to control the position of a shaft. 
They can be used in a wide range of applications, from moving robot arms to controlling the rudder on a model boat.
\end{minipage}
\hfill
\begin{minipage}[t]{0.25\textwidth}
\vspace{0pt}
\includegraphics[width=0.88\linewidth]{docs/assets/servo_cartoon.png}
\end{minipage}

We'll cover how to control a servo motor with Arduino. 

## What You'll Need:

- 1 x Arduino Uno board 
- 1 x Servo Motor
- 1 x Breadboard 
- 1 x Power Supply 
- 1 x 9v Battery (optional)
- Jumper wires


\newpage

# Circuit

Although the Arduino can provide 5V, it can't provide enough current for a motor to work.

This is why we use an *external 5V power source*. 

![Servo Motor Circuit](docs/assets/sweep_servo.png){ width=70% }


#### Servo Wires

1. **Power (Red wire)**: Connect the red wire from the servo to the 5V pin on the Arduino.

2. **Ground (Brown/Black wire)**: Connect the brown or black wire from the servo to one of the GND pins on the Arduino.

3. **Signal (Orange/Yellow wire)**: Connect the orange or yellow wire from the servo to digital pin 9 on the Arduino.



# Example: Motor Sweep 

The code below makes the servo go back and forth every 3 seconds

```cpp
#include <Servo.h>

// The servo motor instance 
Servo motorA;

void setup() {
  	// Configure the motor on Pin 9
	motorA.attach(9);
}

void loop() {
	// Set the motor to 0 degrees
	motorA.write(0);
	delay(3000);

	// Set the motor to 180 degrees
	motorA.write(180);
	delay(3000);
}
```

\newpage

# Example: Light intensity motor 

Control a servo motor based on the photoresistor's analog value.

Use the same photoresistor voltage divider circuit that we used previously. 

\

# Fix the code: Light intensity motor

This code is expected to control the motor according to light sensed on the photoresistor.

The problem is that `light` can range from `0` to `1023` and the motor can not take more than `180` degrees.

What should we add to the code so it behaves as expected ?

```c
#include <Servo.h>

// The analog light value
int light = 0;

// The servo motor instance
Servo lightMotor;

void setup() {
  // Configure the motor on Pin 9
  lightMotor.attach(9);
}

void loop() {
  // Read the analog value on Pin A0
  light = analogRead(A0);

  // IMPORTANT: 
  // Convert light to a 0 to 180 value 

  // Send the analog value to the servo
  lightMotor.write(light);

  // Wait, to much `write` calls can overload a motor
  delay(150);
}
```
