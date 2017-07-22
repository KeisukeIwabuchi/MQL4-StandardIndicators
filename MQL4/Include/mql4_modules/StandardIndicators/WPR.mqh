//+------------------------------------------------------------------+
//|                                                          WPR.mqh |
//|                                 Copyright 2017, Keisuke Iwabuchi |
//|                                         https://order-button.com |
//+------------------------------------------------------------------+


#ifndef _LOAD_MODULE_WPR
#define _LOAD_MODULE_WPR


#include <mql4_modules\StandardIndicators\IndicatorsBase.mqh>


/** Larry Williams Percent Range */
class WPR : public IndicatorsBase
{
   public:
      int period;
      
      WPR(void);
      double Value(const int shift);
};


/** constructor. */
WPR::WPR(void)
{
   this.symbol    = __Symbol;
   this.timeframe = 0;
   this.period    = 14;
}


/**
 * Calculates the Larry Williams Percent Range.
 *
 * @pram const int shift  Shift relative to the current bar.
 *
 * @return double  Returns WPR value.
 */
double WPR::Value(const int shift)
{
   return(iWPR(this.symbol,
               this.timeframe,
               this.period,
               shift
               )
          );
}


#endif
