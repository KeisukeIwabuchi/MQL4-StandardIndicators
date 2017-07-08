//+------------------------------------------------------------------+
//|                                                       StdDev.mqh |
//|                                 Copyright 2017, Keisuke Iwabuchi |
//|                                         https://order-button.com |
//+------------------------------------------------------------------+


#ifndef _LOAD_MODULE_STD_DEV
#define _LOAD_MODULE_STD_DEV


#include <mql4_modules\StandardIndicators\IndicatorsBase.mqh>


/** Standard Deviation */
class StdDev : public IndicatorsBase
{
   public:
      int ma_period;
      int ma_shift;
      int ma_method;
      int applied_price;
      
      StdDev(void);
      double Value(const int shift);
};


StdDev::StdDev(void)
{
   this.symbol        = _Symbol;
   this.timeframe     = 0;
   this.ma_period     = 20;
   this.ma_shift      = 0;
   this.ma_method     = MODE_SMA;
   this.applied_price = PRICE_CLOSE;
}


double StdDev::Value(const int shift)
{
   return(iStdDev(this.symbol,
                  this.timeframe,
                  this.ma_period,
                  this.ma_shift,
                  this.ma_method,
                  this.applied_price,
                  shift
                  )
          );
}


#endif
