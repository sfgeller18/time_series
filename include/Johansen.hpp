#ifndef JOHANSEN_HPP
#define JOHANSEN_HPP

#include "Coeff_Johansen.hpp"

namespace urt {

//=================================================================================================

// Augmented Dickey-Fuller test 
template <typename T>
class Johansen : public UnitRoot<Vector<T>> 
{
 public:
   // parameter constructor for computing ADF test for a given number of lags
   Johansen(const Vector<Vector<T>>& data, int lags, const std::string& trend = "c", bool regression = false);
   // parameter constructor for computing ADF test with lag length optimization
   Johansen(const Vector<Vector<T>>& data, const std::string& method, const std::string& trend = "c", bool regression = false);

 private:
   using ur = UnitRoot<Vector<T>>;
   const char* _test_name = "Johansen";
   const std::vector<std::string> _valid_trends{"nc","c","ct","ctt"};
}; 

//=================================================================================================

}

#endif
