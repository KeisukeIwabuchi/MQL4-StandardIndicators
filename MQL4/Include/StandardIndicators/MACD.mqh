//+------------------------------------------------------------------+
//|                                                         MACD.mqh |
//|                                 Copyright 2017, Keisuke Iwabuchi |
//|                                        https://order-button.com/ |
//+------------------------------------------------------------------+


#ifndef _LOAD_MODULE_MACD
#define _LOAD_MODULE_MACD


#include <mql4_modules\StandardIndicators\IndicatorsBase.mqh>


/** Moving Averages Convergence/Divergence */
class MACD : public IndicatorsBase
{
   public:
      int fast_ema_period;
      int slow_ema_period;
      int signal_period;
      int applied_price;
      int mode;
      
      MACD(void);
      double Value(const int shift);
};


MACD::MACD(void)
{
   this.symbol        = _Symbol;
   this.timeframe     = 0;
   this.fast_ema_period = 9;
   this.slow_ema_period = 12;
   this.signal_period   = 26;
   this.applied_price = PRICE_CLOSE;
   this.mode          = MODE_MAIN;
}


double MACD::Value(const int shift)
{
   return(iMACD(this.symbol,
                this.timeframe,
                this.fast_ema_period,
                this.slow_ema_period,
                this.signal_period,
                this.applied_price,
                this.mode,
                shift
                )
          );
}


#endif
