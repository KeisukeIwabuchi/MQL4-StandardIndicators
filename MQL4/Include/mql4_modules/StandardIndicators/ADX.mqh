//+------------------------------------------------------------------+
//|                                                          ADX.mqh |
//|                                 Copyright 2017, Keisuke Iwabuchi |
//|                                         https://order-button.com |
//+------------------------------------------------------------------+


#ifndef _LOAD_MODULE_ADX
#define _LOAD_MODULE_ADX


#include <mql4_modules\StandardIndicators\IndicatorsBase.mqh>


/** Average Directional Movement Index */
class ADX : public IndicatorsBase
{
   public:
      int period;
      int applied_price;
      int mode;
      
      ADX(void);
      double Value(const int shift);
};


/** constructor. */
ADX::ADX(void)
{
   this.symbol        = __Symbol;
   this.timeframe     = 0;
   this.period        = 14;
   this.applied_price = PRICE_CLOSE;
   this.mode          = MODE_MAIN;
}


/**
 * Calculates the Average Directional Movement Index.
 *
 * @pram const int shift  Shift relative to the current bar.
 *
 * @return double  Returns ADX value.
 */
double ADX::Value(const int shift)
{
   return(iADX(this.symbol,
               this.timeframe,
               this.period,
               this.applied_price,
               this.mode,
               shift
               )
          );
}


#endif 
