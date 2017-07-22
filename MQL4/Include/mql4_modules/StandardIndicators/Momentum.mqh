//+------------------------------------------------------------------+
//|                                                     Momentum.mqh |
//|                                 Copyright 2017, Keisuke Iwabuchi |
//|                                         https://order-button.com |
//+------------------------------------------------------------------+


#ifndef _LOAD_MODULE_MOMENTUM
#define _LOAD_MODULE_MOMENTUM


#include <mql4_modules\StandardIndicators\IndicatorsBase.mqh>


/** Momentum */
class Momentum : public IndicatorsBase
{
   public:
      int period;
      int applied_price;
      
      Momentum(void);
      double Value(const int shift);
};


Momentum::Momentum(void)
{
   this.symbol        = _Symbol;
   this.timeframe     = 0;
   this.period        = 14;
   this.applied_price = PRICE_CLOSE;
}


double Momentum::Value(const int shift)
{
   return(iMomentum(this.symbol,
                    this.timeframe,
                    this.period,
                    this.applied_price,
                    shift
                    )
          );
}


#endif
