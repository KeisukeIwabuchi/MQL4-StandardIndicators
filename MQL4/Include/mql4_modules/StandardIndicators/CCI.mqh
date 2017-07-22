//+------------------------------------------------------------------+
//|                                                          CCI.mqh |
//|                                 Copyright 2017, Keisuke Iwabuchi |
//|                                         https://order-button.com |
//+------------------------------------------------------------------+


#ifndef _LOAD_MODULE_CCI
#define _LOAD_MODULE_CCI


#include <mql4_modules\StandardIndicators\IndicatorsBase.mqh>


/** Commodity Channel Index */
class CCI : public IndicatorsBase
{
   public:
      int period;
      int applied_price;
      
      CCI(void);
      double Value(const int shift);
};


/** constructor. */
CCI::CCI(void)
{
   this.symbol        = __Symbol;
   this.timeframe     = 0;
   this.period        = 20;
   this.applied_price = PRICE_CLOSE;
}


/**
 * Calculates the Commodity Channel Index.
 *
 * @pram const int shift  Shift relative to the current bar.
 *
 * @return double  Returns CCI value.
 */
double CCI::Value(const int shift)
{
   return(iCCI(this.symbol,
               this.timeframe,
               this.period,
               this.applied_price,
               shift
               )
          );
}


#endif
