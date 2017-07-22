//+------------------------------------------------------------------+
//|                                                        Force.mqh |
//|                                 Copyright 2017, Keisuke Iwabuchi |
//|                                         https://order-button.com |
//+------------------------------------------------------------------+


#ifndef _LOAD_MODULE_FORCE
#define _LOAD_MODULE_FORCE


#include <mql4_modules\StandardIndicators\IndicatorsBase.mqh>


/** Force */
class Force : public IndicatorsBase
{
   public:
      int period;
      int ma_method;
      int applied_price;
      
      Force(void);
      double Value(const int shift);
};


/** constructor. */
Force::Force(void)
{
   this.symbol        = __Symbol;
   this.timeframe     = 0;
   this.period        = 13;
   this.ma_method     = MODE_SMA;
   this.applied_price = PRICE_CLOSE;
}


/**
 * Calculates the Force.
 *
 * @pram const int shift  Shift relative to the current bar.
 *
 * @return double  Returns Force value.
 */
double Force::Value(const int shift)
{
   return(iForce(this.symbol,
                 this.timeframe,
                 this.period,
                 this.ma_method,
                 this.applied_price,
                 shift
                 )
          );
}


#endif
