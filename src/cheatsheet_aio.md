---
title: Analog I/O Arduino Cheatsheet
---

# Analog I/O Cheat Sheet

### What is an Analog Signal?

An analog signal can be seen as a voltage wave, it has an amplitude (Voltage) and frequency.

When using analog signals with the arduino, make sure the amplitude is no larger than `5V`.

The analog signal is processed by one of the 6 on-chip Analog to Digital Converters (`A0` to `A5` pins) which return a value from `0` to `1023` for us to use in our control logic.



\

## Write a value on an analog pin

`
analogWrite(pin, value);
`


-  `pin` : the pin number (use the ones with the `~` symbol)

-  `value` : Can range from `0` to `255`

\

## Read the value on an analog pin

`
value = analogRead(pin);
`

-  `pin` : the analog pin number (A0 to A5)

- return value can range from `0` to `1023`
\



### Scale the analog value

The returned analog value can range from `0` to `1023`, you can use the `map` function to scale that value to your needs. 


```cpp
// 0 to 100 range
value = map(value, 0, 1023, 0, 100);
```

In this case, we convert `value` to a `0` to `100` range, this can be useful to represent a percentage