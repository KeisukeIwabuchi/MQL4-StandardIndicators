//+------------------------------------------------------------------+
//|                                                   Stochastic.mqh |
//|                                 Copyright 2017, Keisuke Iwabuchi |
//|                                         https://order-button.com |
//+------------------------------------------------------------------+


#ifndef _LOAD_MODULE_STOCHASTIC
#define _LOAD_MODULE_STOCHASTIC


#include <mql4_modules\StandardIndicators\IndicatorsBase.mqh>


/** Stochastic oscillator */
class Stochastic : public IndicatorsBase
{
   public:
      int Kperiod;
      int Dperiod;
      int slowing;
      int method;
      int price_field;
      int mode;
      
      Stochastic(void);
      double Value(const int shift);
};


/** constructor. */
Stochastic::Stochastic(void)
{
   this.symbol      = __Symbol;
   this.timeframe   = 0;
   this.Kperiod     = 5;
   this.Dperiod     = 3;
   this.slowing     = 3;
   this.method      = MODE_SMA;
   this.price_field = 0;
   this.mode        = MODE_MAIN;
}


/**
 * Calculates the Stochastic oscillator.
 *
 * @pram const int shift  Shift relative to the current bar.
 *
 * @return double  Returns Stochastic value.
 */
double Stochastic::Value(const int shift)
{
   return(iStochastic(this.symbol,
                      this.timeframe,
                      this.Kperiod,
                      this.Dperiod,
                      this.slowing,
                      this.method,
                      this.price_field,
                      this.mode,
                      shift
                      )
          );
}


#endif
