set(MY_MODS   com.f90
            inputoutput.f90
            molecules.f90
            data.f90
              CACHE INTERNAL "")
add_library(mylib "${MY_MODS}")
add_executable(my_exe main.f90)
target_link_libraries(my_exe PRIVATE mylib ${LAPACK_LIBRARIES})
