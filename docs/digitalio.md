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


Digital signals are either `0` or `1`, the Arduino Uno has a total of 14 digital pins.

The first example demonstrates how to blink a LED. \
The second example demonstrates how to read a button's state. 

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

> Challenge: Blink 3 LEDs one at a time. Imagine traffic lights running 2 seconds Green, 1 second Yellow, and 2 seconds Red. \
> Each LED must have a resistor.

\newpage


# Read the Button State

![Pin 4 Button Circuit](docs/assets/button_b.png){ width=90% }


In this example, we print the value read on `Pin 4` to the Serial Monitor

```cpp
void setup() {
  // Configure Pin 4 as an Input for button
  pinMode(4, INPUT);

  // Configure Pin 8 as an Output for LED
  pinMode(8, OUTPUT);
}

void loop() {
  // If button is pressed
  if (digitalRead(4)) {
    // Turn on LED
    digitalWrite(8, 1);
  } else {
    // Turn on LED
    digitalWrite(8, 1);
  }
}
```


> Open the `Serial Monitor` with `Ctrl` + `Shift` + `M`


> Challenge: Make a counter with a button. \
> Each time the button is pressed, add 1 to the count. \
> Print the count in the serial monitor. \
> Hint; Create a `count` variable
