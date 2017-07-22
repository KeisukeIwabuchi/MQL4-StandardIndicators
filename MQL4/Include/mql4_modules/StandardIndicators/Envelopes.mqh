//+------------------------------------------------------------------+
//|                                                    Envelopes.mqh |
//|                                 Copyright 2017, Keisuke Iwabuchi |
//|                                         https://order-button.com |
//+------------------------------------------------------------------+


#ifndef _LOAD_MODULE_ENVELOPES
#define _LOAD_MODULE_ENVELOPES


#include <mql4_modules\StandardIndicators\IndicatorsBase.mqh>


/** Envelopes */
class Envelopes : public IndicatorsBase
{
   public:
      int    ma_period;
      int    ma_method;
      int    ma_shift;
      int    applied_price;
      double deviation;
      int    mode;
      
      Envelopes(void);
      double Value(const int shift);
};


Envelopes::Envelopes(void)
{
   this.symbol        = _Symbol;
   this.timeframe     = 0;
   this.ma_period     = 14;
   this.ma_method     = MODE_SMA;
   this.ma_shift      = 0;
   this.applied_price = PRICE_CLOSE;
   this.deviation     = 0.1;
   this.mode          = MODE_MAIN;
}


double Envelopes::Value(const int shift)
{
   return(iEnvelopes(this.symbol,
                     this.timeframe,
                     this.ma_period,
                     this.ma_method,
                     this.ma_shift,
                     this.applied_price,
                     this.deviation,
                     this.mode,
                     shift
                     )
          );
}


#endif
