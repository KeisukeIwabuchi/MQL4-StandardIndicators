//+------------------------------------------------------------------+
//|                                                     Ichimoku.mqh |
//|                                 Copyright 2017, Keisuke Iwabuchi |
//|                                         https://order-button.com |
//+------------------------------------------------------------------+


#ifndef _LOAD_MODULE_ICHIMOKU
#define _LOAD_MODULE_ICHIMOKU


#include <mql4_modules\StandardIndicators\IndicatorsBase.mqh>


/** Ichimoku Kinko Hyo */
class Ichimoku : public IndicatorsBase
{
   public:
      int tenkan_sen;
      int kijun_sen;
      int senkou_span_b;
      int mode;
      
      Ichimoku(void);
      double Value(const int shift);
};


Ichimoku::Ichimoku(void)
{
   this.symbol        = _Symbol;
   this.timeframe     = 0;
   this.tenkan_sen    = 9;
   this.kijun_sen     = 26;
   this.senkou_span_b = 52;
   this.mode          = MODE_TENKANSEN;
}


double Ichimoku::Value(const int shift)
{
   return(iIchimoku(this.symbol,
                    this.timeframe,
                    this.tenkan_sen,
                    this.kijun_sen,
                    this.senkou_span_b,
                    this.mode,
                    shift
                    )
          );
}


#endif
