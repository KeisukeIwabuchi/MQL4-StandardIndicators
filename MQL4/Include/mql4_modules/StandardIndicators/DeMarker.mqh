//+------------------------------------------------------------------+
//|                                                     DeMarker.mqh |
//|                                 Copyright 2017, Keisuke Iwabuchi |
//|                                         https://order-button.com |
//+------------------------------------------------------------------+


#ifndef _LOAD_MODULE_DE_MARKER
#define _LOAD_MODULE_DE_MARKER


#include <mql4_modules\StandardIndicators\IndicatorsBase.mqh>


/** DeMarker */
class DeMarker : public IndicatorsBase
{
   public:
      int period;
      
      DeMarker(void);
      double Value(const int shift);
};


DeMarker::DeMarker(void)
{
   this.symbol    = _Symbol;
   this.timeframe = 0;
   this.period    = 20;
}


double DeMarker::Value(const int shift)
{
   return(iDeMarker(this.symbol,
                    this.timeframe,
                    this.period,
                    shift
                    )
          );
}


#endif
