---
title: Digital IO
author: [Ateliers Kikicode, Matías Vazquez-Levi]
date: 2024-03-10
keywords: [digital, io, led, button, arduino, kikicode]
---

::: {.latex}
\begin{minipage}[t]{0.65\textwidth}
  \Large \textbf{Digital Input \& Output}
\end{minipage}
\hfill
\begin{minipage}[t]{0.35\textwidth}
  \textbf{Name:} \underline{\hspace{1.65in}}
\end{minipage}
\vspace{1em}
:::


Digital signals are either `0` or `1`, the Arduino Uno has 14 digital pins.

We'll cover how to blink an LED, and read if a button was pressed. 


\noindent
\begin{minipage}[t]{0.35\textwidth}
\vspace{0pt}

What You'll Need:

\begin{itemize}
  \item \text{1 x Arduino Uno board}
  \item \text{1 x Breadboard}
  \item \text{1 x LED}
  \item \text{1 x Button}
  \item \text{Jumper wires}
\end{itemize}

\end{minipage}
\hfill
\begin{minipage}[t]{0.55\textwidth}
\vspace{0pt}
\includegraphics[width=1\linewidth]{docs/assets/led_b_pin8.png}
\end{minipage}

\

This code would blink a LED on Pin 8

```c
void setup() {
  // Configure Pin 8 as output pin
  pinMode(8, OUTPUT);
}

void loop() {
  // Set LED on Pin 8 to ON
  digitalWrite(8, 1);
  delay(500);

  // Set LED on Pin 8 to OFF
  digitalWrite(8, 0);
  delay(500);
}
```

> Challenge:  How could we blink 3 LEDs one at a time? Imagine traffic lights running 2 seconds Green, 1 second Yellow and 2 seconds Red.

\newpage


# Read the Button State

![Pin 4 Button Circuit](docs/assets/button_b.png){ width=90% }


In this example, we print the value read on `Pin 4` to the Serial Monitor

```cpp
void setup() {
  // Configure Pin 4 as an Input pin
  pinMode(4, INPUT);

  // Configure serial communications
  Serial.begin(9600);
}

void loop() {
  // Print out the button value in serial communication
  Serial.println(digitalRead(4));
}
```


> Open the `Serial Monitor` with `Ctrl` + `Shift` + `M`


> Challenge: Make a counter with a button. \
> Each time the button is pressed, we add 1 to the count. \
> Print the count in the serial monitor. \
> Hint; Create a `count` variable
