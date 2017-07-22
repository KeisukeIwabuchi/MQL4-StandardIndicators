//+------------------------------------------------------------------+
//|                                                          OBV.mqh |
//|                                 Copyright 2017, Keisuke Iwabuchi |
//|                                         https://order-button.com |
//+------------------------------------------------------------------+


#ifndef _LOAD_MODULE_OBV
#define _LOAD_MODULE_OBV


#include <mql4_modules\StandardIndicators\IndicatorsBase.mqh>


/** On Balance Valume */
class OBV : public IndicatorsBase
{
   public:
      int applied_price;
      
      OBV(void);
      double Value(const int shift);
};


OBV::OBV(void)
{
   this.symbol        = _Symbol;
   this.timeframe     = 0;
   this.applied_price = PRICE_CLOSE;
}


double OBV::Value(const int shift)
{
   return(iOBV(this.symbol,
               this.timeframe,
               this.applied_price,
               shift
               )
          );
}


#endif
