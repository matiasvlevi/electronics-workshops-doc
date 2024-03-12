---
title: Digital I/O Arduino Cheatsheet
---

# Digital I/O Cheat Sheet



### What is a Digital Signal?

A digital signal can either carry a `1` (5V) or a `0` (0V) value.


\


## Configure an Arduino digital pin

`
pinMode(pin, mode);
`

-  `pin` : the pin number 

-  `mode` : Can be `OUTPUT` or `INPUT`

\

## Write a value on a digital pin

`
digitalWrite(pin, value);
`


-  `pin` : the pin number 

-  `value` : Can be `0` or `1`

\

## Read the value on a digital pin

`
value = digitalRead(pin);
`

-  `pin` : the pin number

- return value can be `0` or `1`

\
