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


RVI::RVI(void)
{
   this.symbol    = _Symbol;
   this.timeframe = 0;
   this.period    = 14;
   this.mode      = MODE_MAIN;
}


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
