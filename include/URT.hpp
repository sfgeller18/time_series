#ifndef URT_HPP
#define URT_HPP

//=================================================================================================

  #define EIGEN_USE_MKL_ALL
  #define EIGEN_NO_DEBUG
  #define EIGEN_NO_STATIC_ASSERT

  #include <eigen3/Eigen/Dense>

  namespace urt {
     template <typename T>
     using Matrix = Eigen::Matrix<T, Eigen::Dynamic, Eigen::Dynamic>;
     template <typename T>
     using Vector = Eigen::Matrix<T, Eigen::Dynamic, 1>;
  }


//*************************************************************************************************

#include <fstream>
#include <map>

#include <boost/math/distributions/students_t.hpp>
#include <boost/math/special_functions/gamma.hpp>
#include <boost/random.hpp>
#include <boost/random/normal_distribution.hpp>
#include <boost/generator_iterator.hpp>

#include "./CsvManager.hpp"
#include "./Tools.hpp"

#include "./OLS.hpp"
#include "./UnitRoot.hpp"
#include "./ADF.hpp"
#include "./DFGLS.hpp"
#include "./PP.hpp"
#include "./KPSS.hpp"
#include "./Johansen.hpp"

// template class specializations
template class urt::OLS<double>;
template class urt::OLS<float>;
template class urt::UnitRoot<double>;
template class urt::UnitRoot<float>;
template class urt::ADF<double>;
template class urt::ADF<float>;
template class urt::DFGLS<double>;
template class urt::DFGLS<float>;
template class urt::PP<double>;
template class urt::PP<float>;
template class urt::KPSS<double>;
template class urt::KPSS<float>;
template class urt::Johansen<urt::Vector<double>>;
template class urt::Johansen<urt::Vector<float>>;
//=================================================================================================

#endif
