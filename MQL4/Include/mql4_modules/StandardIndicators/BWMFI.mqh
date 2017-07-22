//+------------------------------------------------------------------+
//|                                                        BWMFI.mqh |
//|                                 Copyright 2017, Keisuke Iwabuchi |
//|                                         https://order-button.com |
//+------------------------------------------------------------------+


#ifndef _LOAD_MODULE_BWMFI
#define _LOAD_MODULE_BWMFI


#include <mql4_modules\StandardIndicators\IndicatorsBase.mqh>


/** Market Facilitation Index */
class BWMFI : public IndicatorsBase
{
   public:
      BWMFI(void);
      double Value(const int shift);
};


/** constructor. */
BWMFI::BWMFI(void)
{
   this.symbol    = __Symbol;
   this.timeframe = 0;
}


/**
 * Calculates the Market Facilitation Index.
 *
 * @pram const int shift  Shift relative to the current bar.
 *
 * @return double  Returns BWMFI value.
 */
double BWMFI::Value(const int shift)
{
   return(iBWMFI(this.symbol,
                 this.timeframe,
                 shift
                 )
          );
}


#endif
