//+------------------------------------------------------------------+
//|                                                           AD.mqh |
//|                                 Copyright 2017, Keisuke Iwabuchi |
//|                                        https://order-button.com/ |
//+------------------------------------------------------------------+


#ifndef _LOAD_MODULE_AD
#define _LOAD_MODULE_AD


#include <mql4_modules\StandardIndicators\IndicatorsBase.mqh>


/** Accumulation/Distribution */
class AD : public IndicatorsBase
{
   public:
      AD(void);
      double Value(const int shift);
};


AD::AD(void)
{
   this.symbol        = _Symbol;
   this.timeframe     = 0;
}


double AD::Value(const int shift)
{
   return(iAC(this.symbol,
               this.timeframe,
               shift
               )
          );
}


#endif
