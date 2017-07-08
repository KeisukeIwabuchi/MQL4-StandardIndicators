//+------------------------------------------------------------------+
//|                                                          RSI.mqh |
//|                        Copyright 2017, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+


#include <mql4_modules\StandardIndicators\IndicatorsBase.mqh>


/** Relative Strength Index */
class RSI : public IndicatorsBase
{
   public:
      int period;
      int applied_price;
      
      RSI(void);
      double Value(const int shift);
};


RSI::RSI(void)
{
   this.symbol        = _Symbol;
   this.timeframe     = 0;
   this.period        = 14;
   this.applied_price = PRICE_CLOSE;
}


double RSI::Value(const int shift)
{
   return(iRSI(this.symbol,
               this.timeframe,
               this.period,
               this.applied_price,
               shift
               )
          );
}


