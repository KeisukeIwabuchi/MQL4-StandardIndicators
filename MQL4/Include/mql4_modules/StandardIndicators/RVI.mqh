//+------------------------------------------------------------------+
//|                                                          RVI.mqh |
//|                                 Copyright 2017, Keisuke Iwabuchi |
//|                                         https://order-button.com |
//+------------------------------------------------------------------+


#ifndef _LOAD_MODULE_RVI
#define _LOAD_MODULE_RVI


#include <mql4_modules\StandardIndicators\IndicatorsBase.mqh>


/** Relative Vigor Index */
class RVI : public IndicatorsBase
{
   public:
      int period;
      int mode;
      
      RVI(void);
      double Value(const int shift);
};


/** constructor. */
RVI::RVI(void)
{
   this.symbol    = __Symbol;
   this.timeframe = 0;
   this.period    = 10;
   this.mode      = MODE_MAIN;
}


/**
 * Calculates the Relative Vigor Index.
 *
 * @pram const int shift  Shift relative to the current bar.
 *
 * @return double  Returns RVI value.
 */
double RVI::Value(const int shift)
{
   return(iRVI(this.symbol,
               this.timeframe,
               this.period,
               this.mode,
               shift
               )
          );
}


#endif
