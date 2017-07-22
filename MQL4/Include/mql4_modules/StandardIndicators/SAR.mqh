//+------------------------------------------------------------------+
//|                                                          SAR.mqh |
//|                                 Copyright 2017, Keisuke Iwabuchi |
//|                                         https://order-button.com |
//+------------------------------------------------------------------+


#ifndef _LOAD_MODULE_SAR
#define _LOAD_MODULE_SAR


#include <mql4_modules\StandardIndicators\IndicatorsBase.mqh>


/** Parabolic Stop and Reverse */
class SAR : public IndicatorsBase
{
   public:
      double step;
      double maximum;
      
      SAR(void);
      double Value(const int shift);
};


/** constructor. */
SAR::SAR(void)
{
   this.symbol    = __Symbol;
   this.timeframe = 0;
   this.step      = 0.02;
   this.maximum   = 0.2;
}


/**
 * Calculates the Parabolic Stop and Reverse.
 *
 * @pram const int shift  Shift relative to the current bar.
 *
 * @return double  Returns SAR value.
 */
double SAR::Value(const int shift)
{
   return(iSAR(this.symbol,
               this.timeframe,
               this.step,
               this.maximum,
               shift
               )
          );
}


#endif
