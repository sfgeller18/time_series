#include "../include/URT.hpp"

namespace urt {

//=================================================================================================

// parameter constructor for computing KPSS test for a given number of lags
template <typename T>
KPSS<T>::KPSS(const Vector<T>& data, int lags, const std::string& trend) : ur(data, lags, trend)
{
   ur::test_name = _test_name;
   ur::valid_trends = _valid_trends;
}  

//*************************************************************************************************

// parameter constructor for computing PP test for a default number of lags (long or short)
template <typename T>
KPSS<T>::KPSS(const Vector<T>& data, const std::string lags_type, const std::string& trend) : ur(data, 0, trend)
{
   ur::test_name = _test_name;
   ur::valid_trends = _valid_trends;
   ur::lags_type = lags_type;
}  

//*************************************************************************************************

// compute test statistic
template <typename T>
void KPSS<T>::compute_stat()
{
   T factor = 1.0 / ur::nobs;

   Vector<T> s(ur::nobs);
   std::partial_sum(&ur::ptr->operator[](0), &ur::ptr->operator[](ur::nobs), &s[0]);
   T eta = factor * factor * s.dot(s);
   T s2 = factor * ur::ptr->dot(*ur::ptr);


   T tmp1 = 0;
   // estimating long run variance
   for (int i = 1; i <= ur::lags; ++i) {
      T tmp2 = ur::ptr->tail(ur::nobs - i).transpose() * ur::ptr->head(ur::nobs - i);
       // computing Bartlett weight
      T weight = 1.0 - i / (ur::lags + 1.0);
      tmp1 += weight * tmp2;
   }
   s2 += factor * 2.0 * tmp1;

   ur::stat = eta / s2;
}

//*************************************************************************************************

// compute KPSS test statistic
template <typename T>
const T& KPSS<T>::statistic()
{  
   // setting type of lags (if a default type of lags value has been chosen)
   ur::set_lags_type();
   // setting number of lags
   ur::set_lags();
   // setting regression trend
   ur::set_trend();
   // if new trend
   if (ur::new_trend) {
      // setting pointer back to original data for new detrending
      ur::set_data();
      // detrending data by OLS
      ur::ols_detrend();
   }
   // if new trend or new lags
   if (ur::new_trend || ur::new_lags) {
      // computing statistic
      this->compute_stat();
      ur::new_trend = false;
      ur::new_lags = false;
   }

   return ur::stat;
}

//*************************************************************************************************

// compute KPSS test p-value
template <typename T>
const T& KPSS<T>::pvalue()
{
   // computing test statistic
   this->statistic();
   // KPSS does not have bootstrap available
   if (ur::bootstrap) {
      std::cout << "\n  Sorry, bootstrap is not available for KPSS test.\n\n";
      ur::bootstrap = false;
   }
   // setting critical values coefficients pointer
   ur::coeff_ptr = &coeff_kpss.at(ur::trend);
   // computing p-value
   T pval = 1 - ur::pvalue();
   // setting test p-value
   ur::pval = pval;

   return ur::pval;
}

//*************************************************************************************************

// output KPSS test results
template <class T>
void KPSS<T>::show()
{
   // in case user modified test type, for KPSS it should always be empty
   ur::test_type = std::string();  
   // in case user modified method for KPSS it should always be empty
   ur::method = std::string();
   // in case user turned ur::regression to true, KPSS did not use an OLS regression but an OLS detrending
   ur::regression = false;
   // computing p-value
   this->pvalue();
   // outputting results
   ur::show();
}

//=================================================================================================

}

