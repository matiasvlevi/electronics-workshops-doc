---
title: Analog IO
author: [Ateliers Kikicode, Matías Vazquez-Levi]
date: 2024-03-10
keywords: [analog, adc, dac, io, photoresistor, variables, arduino, kikicode]
---

::: {.latex}
\begin{minipage}[t]{0.65\textwidth}
  \Large \textbf{Analog Input \& Output}
\end{minipage}
\hfill
\begin{minipage}[t]{0.35\textwidth}
  \textbf{Name:} \underline{\hspace{1.65in}}
\end{minipage}
\vspace{1em}
:::

\noindent
\begin{minipage}[t]{0.6\textwidth}
\vspace{0pt}

Read a photoresistor's analog value from your circuit. \vspace{1em}

A photoresistor changes its resistance according to light, used right, we can get an analog value for \textbf{light intensity}.

\end{minipage}
\hfill
\begin{minipage}[t]{0.3\textwidth}
\vspace{0pt}
\includegraphics[width=0.85\linewidth]{docs/assets/photoresistor_s.png}
\end{minipage}


![Photoresistor voltage divider](docs/assets/photo_divider.png){ width=80% }


### Wiring


![Photoresistor voltage divider on a breadboard](docs/assets/photoresistor_b.png){ width=65% }

The circuit requires a `resistor` and a `photoresistor` arranged in series. 

The point in between both components (`A0`), is the analog value we want to read.

1. **Power (Arduino 5V)**: photoresistor pin

2. **Ground (Black Wire)**: resistor pin

3. **Signal (A0)**: between the photoresistor and the resistor

\

> Note: Different types of variable resistors exist, you could use a thermistor for temperature readings instead of light intensity

> Note: The ideal constant resistor would be between 10 to 30 k Ohms

\newpage

# Read analog values

Create an integer variable named `light` and set its initial value to `0`

```cpp
int light = 0;
```

This value should be declared globally (outside the `setup` and `loop` functions)

::: {.latex}
\quad
:::



Read the analog value on pin `A0` and store it in our `light` variable.

```cpp
light = analogRead(A0);
````



## Simple `analogRead` code

Use the serial port to your advantage, you can print code variables in it to understand what is happening.

The code below reads the analog value on `A0` and prints it in the serial monitor

```cpp
int light = 0;

void setup() {
	Serial.begin(9600);
}

void loop() {
	light = analogRead(A0);

	Serial.println(light);
} 
```

> Challenge: If our analog value is greater than `512`, \
> blink a LED on `Pin 8`, else blink a LED On `Pin 13`

\newpage



# Control an Active Piezo Buzzer

![Piezo Buzzer](docs/assets/piezo_b.png){ width=67% }

This code sends an analog signal to the piezo buzzer, the analog value sent represents the buzzer note frequency (in a `0` to `255` range)

```cpp
// Create note frequency variable
int freq = 0;

void setup() {}

void loop() {
  // Increment `freq` and reset to initial value if too large
  if (freq < 255) freq = freq + 28;
  else freq = 0;

  // Set analog signal on Pin 9
  analogWrite(9, freq);

  // Wait in between notes
  delay(100);

  // Remove the signal on Pin 9
  analogWrite(9, 0);
  delay(100);
}
```
