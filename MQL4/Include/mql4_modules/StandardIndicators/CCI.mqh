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


CCI::CCI(void)
{
   this.symbol        = _Symbol;
   this.timeframe     = 0;
   this.period        = 20;
   this.applied_price = PRICE_CLOSE;
}


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
