//+------------------------------------------------------------------+
//|                                                         OsMA.mqh |
//|                                 Copyright 2017, Keisuke Iwabuchi |
//|                                         https://order-button.com |
//+------------------------------------------------------------------+


#ifndef _LOAD_MODULE_OS_MA
#define _LOAD_MODULE_OS_MA


#include <mql4_modules\StandardIndicators\IndicatorsBase.mqh>


/** Moving Average of Oscillator */
class OsMA : public IndicatorsBase
{
   public:
      int fast_ema_period;
      int slow_ema_period;
      int signal_period;
      int applied_price;
      
      OsMA(void);
      double Value(const int shift);
};


OsMA::OsMA(void)
{
   this.symbol          = _Symbol;
   this.timeframe       = 0;
   this.fast_ema_period = 12;
   this.slow_ema_period = 26;
   this.signal_period   = 9;
   this.applied_price   = PRICE_CLOSE;
}


double OsMA::Value(const int shift)
{
   return(iOsMA(this.symbol,
               this.timeframe,
               this.fast_ema_period,
               this.slow_ema_period,
               this.signal_period,
               this.applied_price,
               shift
               )
          );
}


#endif
