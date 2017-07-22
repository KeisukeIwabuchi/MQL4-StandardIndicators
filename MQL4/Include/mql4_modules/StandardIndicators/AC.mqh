//+------------------------------------------------------------------+
//|                                                           AC.mqh |
//|                                 Copyright 2017, Keisuke Iwabuchi |
//|                                         https://order-button.com |
//+------------------------------------------------------------------+


#ifndef _LOAD_MODULE_AC
#define _LOAD_MODULE_AC


#include <mql4_modules\StandardIndicators\IndicatorsBase.mqh>


/** Bill Williams Accelerator/Decelerator oscillator */
class AC : public IndicatorsBase
{
   public:
      AC(void);
      double Value(const int shift);
};


/** constructor. */
AC::AC(void)
{
   this.symbol    = __Symbol;
   this.timeframe = 0;
}


/**
 * Calculates the Bill Williams Accelerator/Decelerator oscillator.
 *
 * @pram const int shift  Shift relative to the current bar.
 *
 * @return double  Returns AC value.
 */
double AC::Value(const int shift)
{
   return(iAC(this.symbol,
               this.timeframe,
               shift
               )
          );
}


#endif
