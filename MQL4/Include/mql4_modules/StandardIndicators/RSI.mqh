//+------------------------------------------------------------------+
//|                                                          RSI.mqh |
//|                                 Copyright 2017, Keisuke Iwabuchi |
//|                                         https://order-button.com |
//+------------------------------------------------------------------+


#ifndef _LOAD_MODULE_RSI
#define _LOAD_MODULE_RSI


#include <mql4_modules\StandardIndicators\IndicatorsBase.mqh>


/** Relative Strength Index */
class RSI : public IndicatorsBase
{
   public:
      int period;
      int applied_price;
      
      RSI(void);
      double Value(const int shift);
};


/** constructor. */
RSI::RSI(void)
{
   this.symbol        = __Symbol;
   this.timeframe     = 0;
   this.period        = 14;
   this.applied_price = PRICE_CLOSE;
}


/**
 * Calculates the Relative Strength Index.
 *
 * @pram const int shift  Shift relative to the current bar.
 *
 * @return double  Returns RSI value.
 */
double RSI::Value(const int shift)
{
   return(iRSI(this.symbol,
               this.timeframe,
               this.period,
               this.applied_price,
               shift
               )
          );
}


#endif
