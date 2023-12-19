#include "../include/URT.hpp"

namespace urt {

//=================================================================================================

// parameter constructor for computing ADF test for a given number of lags
template <typename T>
Johansen<T>::Johansen(const Vector<Vector<T>>& data, int lags, const std::string& trend, bool regression) : ur(data, lags, trend, regression)
{
   ur::test_name = _test_name;
   ur::valid_trends = _valid_trends;
}

//*************************************************************************************************

// parameter constructor for computing ADF test with lag length optimization
template <typename T>
Johansen<T>::Johansen(const Vector<Vector<T>>& data, const std::string& method, const std::string& trend, bool regression) : ur(data, method, trend, regression)
{
   ur::test_name = _test_name;
   ur::valid_trends = _valid_trends;
}

//*************************************************************************************************

// compute test statistic
template <typename T>
const T& Johansen<T>::statistic()
{
   // setting type of lags (if a default type of lags value has been chosen)
   ur::set_lags_type();
   // setting optimization method
   ur::set_method();
   // setting number of lags
   ur::set_lags();
   // setting regression trend
   ur::set_trend();
   // computing ADF test
   ur::compute_johansen();

   return ur::stat;
}

//*************************************************************************************************

}