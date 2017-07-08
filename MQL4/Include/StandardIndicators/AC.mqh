//+------------------------------------------------------------------+
//|                                                           AC.mqh |
//|                                 Copyright 2017, Keisuke Iwabuchi |
//|                                         https://order-button.com |
//+------------------------------------------------------------------+


#ifndef _LOAD_MODULE_AC
#define _LOAD_MODULE_AC


#include <mql4_modules\StandardIndicators\IndicatorsBase.mqh>


/** Bill William's Accelerator/Decelerator oscillator */
class AC : public IndicatorsBase
{
   public:
      AC(void);
      double Value(const int shift);
};


AC::AC(void)
{
   this.symbol    = _Symbol;
   this.timeframe = 0;
}


double AC::Value(const int shift)
{
   return(iAC(this.symbol,
               this.timeframe,
               shift
               )
          );
}


#endif
