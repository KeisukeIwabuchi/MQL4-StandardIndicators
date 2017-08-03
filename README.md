# MQL4-StandardIndicators


## Install
1. Download Files
2. Save the file to /MQL4/Includes/mql4_modules/StandardIndicators/


## Usage
At First, include StandardIndicators.mqh.  
Next, create an instance of the technical indicator.
Finally execute Get method.
```cpp
MA ma = new MA();
ma.period = 30;
ma.ma_method = MODE_EMA
double ema30 = ma::Get();
```
