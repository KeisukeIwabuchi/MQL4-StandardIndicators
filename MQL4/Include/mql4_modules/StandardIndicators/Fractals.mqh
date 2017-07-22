//+------------------------------------------------------------------+
//|                                                     Fractals.mqh |
//|                                 Copyright 2017, Keisuke Iwabuchi |
//|                                         https://order-button.com |
//+------------------------------------------------------------------+


#ifndef _LOAD_MODULE_FRACTALS
#define _LOAD_MODULE_FRACTALS


#include <mql4_modules\StandardIndicators\IndicatorsBase.mqh>


/** Fractals */
class Fractals : public IndicatorsBase
{
   public:
      int mode;
      
      Fractals(void);
      double Value(const int shift);
};


Fractals::Fractals(void)
{
   this.symbol    = _Symbol;
   this.timeframe = 0;
   this.mode      = MODE_UPPER;
}


double Fractals::Value(const int shift)
{
   return(iFractals(this.symbol,
                    this.timeframe,
                    this.mode,
                    shift
                    )
          );
}


#endif
