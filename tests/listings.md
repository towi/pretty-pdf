# Test

Umlaute: Ärger über blöde Maße Österreichs ändern Übersee.

Code Bock

    #!cpp
    #include <stdio>
    int main() {
        std::cerr << "Ende\n";
    }

## Boost test compile

so include ich boost in listings.

    #!cpp filename=99ost-typeinfo-test test=output testcxxflags=-I/home/towi/src/gcc/boost/boost_1_61_0
    #include <boost/core/typeinfo.hpp>
    #include <iostream>
    template<class T1, class T2> struct X {
    };
    int main() {
        typedef X<void const*, void(*)(float)> T;
        boost::core::typeinfo const & ti = BOOST_CORE_TYPEID(T);
        std::cout << boost::core::demangled_name( ti ) << std::endl;
        //= X<void const*, void (*)(float)>
    }

das geht!


## Fused-Multiply-Add

Macht hier oder bei mir keinen Unterschied. https://colfaxresearch.com/knl-avx512/

    #!cpp filename=99fma.cpp testcxxflags="-O2 -mfma -mfma4"
    #include <iostream>
    #include <chrono>
    #include <vector>
    #include <cmath> // cos
    void hist(const float * samples, const int sz, int * const hist, const float group_width) {
        float group_width_rec = 1.0f / group_width;
        #pragma vector aligned
        for (int sample_index = 0; sample_index < sz; sample_index++) {
            const int bin = (int) (samples[sample_index] * group_width_rec);
            hist[bin]++;
        }
    }
    constexpr size_t SZ = 8192*1024*8;
    int main() {
        // init
        std::vector<float> input(SZ);
        for(size_t idx=0; idx<SZ; ++idx) input[idx] = std::cos(1.0f*idx);
        std::vector<int> bars(25); // zeros
        // run
        using namespace std::chrono;
        auto t0 = system_clock::now();
        hist(input.data(), SZ, bars.data()+bars.size()/2, 0.1f);
        std::cout << duration_cast<milliseconds>(system_clock::now()-t0).count()<<"ms\n";
        // show
        for(auto bar : bars) {
            std::cout << bar << " ";
        }
        std::cout << "\n";
        //= x
    }

Wahrscheinlich, weil das Beispiel nicht passt, es bezieht sich auf "conflict detecttion", avx512cd.

besser wäre das hier:

    double A[vec_width], B[vec_width];
    //this loop will be automatically vectorized
    for(int i = 0; i < vec_width; i++)
      A[i]+=B[i];

end.
