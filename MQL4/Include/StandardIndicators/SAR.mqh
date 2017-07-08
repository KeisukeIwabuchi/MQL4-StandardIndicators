//+------------------------------------------------------------------+
//|                                                          SAR.mqh |
//|                                 Copyright 2017, Keisuke Iwabuchi |
//|                                         https://order-button.com |
//+------------------------------------------------------------------+


#ifndef _LOAD_MODULE_SAR
#define _LOAD_MODULE_SAR


#include <mql4_modules\StandardIndicators\IndicatorsBase.mqh>


/** Money Flow Index */
class SAR : public IndicatorsBase
{
   public:
      double step;
      double maximum;
      
      SAR(void);
      double Value(const int shift);
};


SAR::SAR(void)
{
   this.symbol    = _Symbol;
   this.timeframe = 0;
   this.step      = 0.02;
   this.maximum   = 0.2;
}


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
