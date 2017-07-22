//+------------------------------------------------------------------+
//|                                               IndicatorsBase.mqh |
//|                                 Copyright 2017, Keisuke Iwabuchi |
//|                                         https://order-button.com |
//+------------------------------------------------------------------+


#ifndef _LOAD_MODULE_INDICATORS_BASE
#define _LOAD_MODULE_INDICATORS_BASE


#include <mql4_modules\Env\Env.mqh>


/** Base class for technical indicators class */
class IndicatorsBase
{
   public:
      string symbol;
      int    timeframe;
      
      virtual double Value(const int shift);
      double Get(const int shift=0);
      void   Get(double &arr[], const int shift=0, const int length=3);
};


/**
 * Calculates the technical indicators.
 *
 * @param const int shift  Shift relative to the current bar.
 *
 * @return  Returns the technical indicators value.
 */
double IndicatorsBase::Value(const int shift)
{
   return(0);
}


/**
 * Get the technical indicators value.
 *
 * @param const int shift  Shift relative to the current bar.
 *
 * @return double  Returns the technical indicators value.
 */
double IndicatorsBase::Get(const int shift=0)
{
   return(this.Value(shift));
}


/**
 * Calculates the technical indicators.
 *
 * @param double &arr[]  Receive the technical indicator values.
 * @param const int shift  Shift relative to the current bar.
 * @param const int length  Array size of receive values.
 */
void IndicatorsBase::Get(double &arr[], const int shift=0, const int length=3)
{
   ArrayResize(arr, length);
   
   for(int i = 0; i < length; i++) {
      arr[i] = this.Value(shift + i);
   }
}


#endif 
