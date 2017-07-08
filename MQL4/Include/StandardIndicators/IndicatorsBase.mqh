//+------------------------------------------------------------------+
//|                                               IndicatorsBase.mqh |
//|                                 Copyright 2017, Keisuke Iwabuchi |
//|                                        https://order-button.com/ |
//+------------------------------------------------------------------+


#ifndef _LOAD_MODULE_INDICATORS_BASE
#define _LOAD_MODULE_INDICATORS_BASE


class IndicatorsBase
{
   public:
      string symbol;
      int    timeframe;
      
      virtual double Value(const int shift);
      double Get(const int shift=0);
      void   Get(double &arr[], const int shift=0, const int length=3);
};


double IndicatorsBase::Value(const int shift)
{
   return(0);
}


double IndicatorsBase::Get(const int shift=0)
{
   return(this.Value(shift));
}


void IndicatorsBase::Get(double &arr[], const int shift=0, const int length=3)
{
   ArrayResize(arr, length);
   
   for(int i = 0; i < length; i++) {
      arr[i] = this.Value(shift + i);
   }
}


#endif 
