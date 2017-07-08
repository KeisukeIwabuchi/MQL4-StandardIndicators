//+------------------------------------------------------------------+
//|                                                          RSI.mqh |
//|                        Copyright 2017, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+


#include <mql4_modules\StandardIndicators\IndicatorsBase.mqh>


/** ADX */
class ADX : public IndicatorsBase
{
   public:
      int period;
      int applied_price;
      int mode;
      
      ADX(void);
      double Value(const int shift);
};


ADX::ADX(void)
{
   this.symbol        = _Symbol;
   this.timeframe     = 0;
   this.period        = 14;
   this.applied_price = PRICE_CLOSE;
   this.mode          = MODE_MAIN;
}


double ADX::Value(const int shift)
{
   return(iADX(this.symbol,
               this.timeframe,
               this.period,
               this.applied_price,
               this.mode,
               shift
               )
          );
}


