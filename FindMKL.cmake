if(WIN32)
    # On Windows, MKL is typically installed in the standard location.
    set(MKL_ROOT "" CACHE PATH "Path to the Intel MKL root directory")
    if(NOT MKL_ROOT)
        # Try default paths if MKL_ROOT is not provided
        set(CMAKE_PROGRAM_FILES "C:/Program Files")
        set(CMAKE_PROGRAM_FILES_X86 "C:/Program Files (x86)")
        list(APPEND MKL_ROOT "${CMAKE_PROGRAM_FILES}/Intel/oneAPI/mkl/latest")
        list(APPEND MKL_ROOT "${CMAKE_PROGRAM_FILES_X86}/Intel/oneAPI/mkl/latest")
    endif()
else()
    # On Linux and macOS, MKL may be in standard locations or user-specified.
    set(MKL_ROOT "/opt/intel/oneapi/mkl/latest" CACHE PATH "Path to the Intel MKL root directory")
endif()

# Check if MKL_INCLUDE_DIR exists
find_path(MKL_INCLUDE_DIR mkl.h HINTS ${MKL_ROOT}/include)

# Check if MKL_LIBRARIES exists
find_library(MKL_CORE_LIBRARY NAMES mkl_core HINTS ${MKL_ROOT}/lib)
find_library(MKL_THREAD_LIBRARY NAMES mkl_gnu_thread HINTS ${MKL_ROOT}/lib)
find_library(MKL_ILP64_LIBRARY NAMES mkl_intel_ilp64 HINTS ${MKL_ROOT}/lib)

# Check if all components are found
if (MKL_INCLUDE_DIR AND MKL_CORE_LIBRARY AND MKL_THREAD_LIBRARY AND MKL_ILP64_LIBRARY)
    set(MKL_FOUND TRUE)
    message(STATUS "Found Intel MKL")
else()
    set(MKL_FOUND FALSE)
    message(STATUS "Intel MKL not found. Please specify MKL_ROOT.")
endif()
