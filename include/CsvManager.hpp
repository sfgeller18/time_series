#ifndef CSVMANAGER_HPP
#define CSVMANAGER_HPP


namespace urt {

//=================================================================================================

// write Vector to csv file
template <typename T>
void WriteToCSV(const std::string& filename, const Vector<T>& x)
{
   std::ofstream myfile(filename);
   int nrows = x.size();

   for (int i = 0; i < nrows; ++i)
      myfile << x[i] << "\n";

   myfile.close();
}

//*************************************************************************************************

// write Matrix to csv file
template <typename T>
void WriteToCSV(const std::string& filename, const Matrix<T>& x)
{
   std::ofstream myfile(filename);

   int nrows = x.rows();
   int ncols = x.cols(); 

   for (int i = 0; i < nrows; ++i) { 
      for (int j = 0; j < ncols; ++j) {

         myfile << x(i, j);

         if (j != ncols - 1) {
            myfile << ",";
         } else {
            myfile << "\n";
         }
      }
   }

   myfile.close();
}

//*************************************************************************************************

// read data from csv file and store them into a Vector 
template <typename T>
void ReadFromCSV(const std::string& filename, Vector<T>& x)
{
   std::ifstream myfile(filename);

   if (!myfile.good())  {
      std::cerr << "\n  Error: " << filename << " cannot be found!\n\n";  
      return;
   }

   std::string line;

   int nrows = 0;

   // reading data
   while (std::getline(myfile, line)) {
      x.conservativeResize(nrows + 1, 1);

      std::stringstream lineStream(line);
      std::string cell;
      std::getline(lineStream, cell, ',');

      x[nrows] = std::stod(cell);
      ++nrows;
   }
   myfile.close();
}

//*************************************************************************************************

// read data from csv file and store them into a Matrix 
template <typename T>
void ReadFromCSV(const std::string& filename, Matrix<T>& x)
{
   std::ifstream myfile(filename);

   if (!myfile.good())  {
      std::cerr << "\n  Error: " << filename << " cannot be found!\n\n";  
      return;
   }

   std::string line;

   int nrows = 0;

   // reading data
   while (std::getline(myfile, line)) {

      std::stringstream lineStream(line);
      std::string cell;
      Vector<T> z;

      int ncols = 0;

      while (std::getline(lineStream, cell, ',')) {
         z.conservativeResize(ncols + 1, Eigen::NoChange);
         z[ncols] = std::stod(cell);
         ++ncols;
      }
      x.conservativeResize(nrows + 1, ncols);
      x.row(nrows) = z;
      ++nrows;
   }
   myfile.close();
}

//=================================================================================================

}

#endif
