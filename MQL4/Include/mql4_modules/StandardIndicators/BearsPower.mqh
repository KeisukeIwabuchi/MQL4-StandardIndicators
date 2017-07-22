//+------------------------------------------------------------------+
//|                                                           AC.mqh |
//|                                 Copyright 2017, Keisuke Iwabuchi |
//|                                         https://order-button.com |
//+------------------------------------------------------------------+


#ifndef _LOAD_MODULE_BEARS_POWER
#define _LOAD_MODULE_BEARS_POWER


#include <mql4_modules\StandardIndicators\IndicatorsBase.mqh>


/** Bears Power */
class BearsPower : public IndicatorsBase
{
   public:
      int period;
      int applied_price;
      
      BearsPower(void);
      double Value(const int shift);
};


/** constructor. */
BearsPower::BearsPower(void)
{
   this.symbol        = __Symbol;
   this.timeframe     = 0;
   this.period        = 13;
   this.applied_price = PRICE_CLOSE;
}


/**
 * Calculates the Bears Power.
 *
 * @pram const int shift  Shift relative to the current bar.
 *
 * @return double  Returns BearsPower value.
 */
double BearsPower::Value(const int shift)
{
   return(iBearsPower(this.symbol,
                      this.timeframe,
                      this.period,
                      this.applied_price,
                      shift
                      )
          );
}


#endif
