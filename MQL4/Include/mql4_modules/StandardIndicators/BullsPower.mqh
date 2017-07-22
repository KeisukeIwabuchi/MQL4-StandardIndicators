//+------------------------------------------------------------------+
//|                                                   BullsPower.mqh |
//|                                 Copyright 2017, Keisuke Iwabuchi |
//|                                         https://order-button.com |
//+------------------------------------------------------------------+


#ifndef _LOAD_MODULE_BULLS_POWER
#define _LOAD_MODULE_BULLS_POWER


#include <mql4_modules\StandardIndicators\IndicatorsBase.mqh>


/** Bulls Power */
class BullsPower : public IndicatorsBase
{
   public:
      int period;
      int applied_price;
      
      BullsPower(void);
      double Value(const int shift);
};


/** constructor. */
BullsPower::BullsPower(void)
{
   this.symbol        = __Symbol;
   this.timeframe     = 0;
   this.period        = 13;
   this.applied_price = PRICE_CLOSE;
}


/**
 * Calculates the Bulls Power.
 *
 * @pram const int shift  Shift relative to the current bar.
 *
 * @return double  Returns BullsPower value.
 */
double BullsPower::Value(const int shift)
{
   return(iBullsPower(this.symbol,
                      this.timeframe,
                      this.period,
                      this.applied_price,
                      shift
                      )
          );
}


#endif
