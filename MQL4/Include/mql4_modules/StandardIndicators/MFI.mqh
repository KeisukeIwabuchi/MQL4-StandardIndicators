//+------------------------------------------------------------------+
//|                                                          MFI.mqh |
//|                                 Copyright 2017, Keisuke Iwabuchi |
//|                                         https://order-button.com |
//+------------------------------------------------------------------+


#ifndef _LOAD_MODULE_MFI
#define _LOAD_MODULE_MFI


#include <mql4_modules\StandardIndicators\IndicatorsBase.mqh>


/** Money Flow Index */
class MFI : public IndicatorsBase
{
   public:
      int period;
      
      MFI(void);
      double Value(const int shift);
};


/** constructor. */
MFI::MFI(void)
{
   this.symbol    = __Symbol;
   this.timeframe = 0;
   this.period    = 14;
}


/**
 * Calculates the Money Flow Index.
 *
 * @pram const int shift  Shift relative to the current bar.
 *
 * @return double  Returns MFI value.
 */
double MFI::Value(const int shift)
{
   return(iMFI(this.symbol,
               this.timeframe,
               this.period,
               shift
               )
          );
}


#endif
