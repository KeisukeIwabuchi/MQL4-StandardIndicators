//+------------------------------------------------------------------+
//|                                                    Alligator.mqh |
//|                                 Copyright 2017, Keisuke Iwabuchi |
//|                                         https://order-button.com |
//+------------------------------------------------------------------+


#ifndef _LOAD_MODULE_ALLIGATOR
#define _LOAD_MODULE_ALLIGATOR


#include <mql4_modules\StandardIndicators\IndicatorsBase.mqh>


/** Alligator */
class Alligator : public IndicatorsBase
{
   public:
      int jaw_period;
      int jaw_shift;
      int teeth_period;
      int teeth_shift;
      int lips_period;
      int lips_shift;
      int ma_method;
      int applied_price;
      int mode;
      
      Alligator(void);
      double Value(const int shift);
};


Alligator::Alligator(void)
{
   this.symbol        = _Symbol;
   this.timeframe     = 0;
   this.jaw_period    = 13;
   this.jaw_shift     = 8;
   this.teeth_period  = 8;
   this.teeth_shift   = 5;
   this.lips_period   = 5;
   this.lips_shift    = 3;
   this.ma_method     = MODE_SMMA;
   this.applied_price = PRICE_MEDIAN;
   this.mode          = MODE_GATORJAW;
}


double Alligator::Value(const int shift)
{
   return(iAlligator(this.symbol,
                     this.timeframe,
                     this.jaw_period,
                     this.jaw_shift,
                     this.teeth_period,
                     this.teeth_shift,
                     this.lips_period,
                     this.lips_shift,
                     this.ma_method,
                     this.applied_price,
                     this.mode,
                     shift
                     )
          );
}


#endif
