// Quick set of includes and helpers

#include <iostream>
#include <algorithm>
#include <memory>
#include <numeric>
#include <filesystem>
#include <iostream>

// containers
#include <string>
#include <vector>
#include <map>
#include <set>
#include <array>

// helpers
template <typename T>
void print_container(const T& c)
{
	std::cout << "{";
    bool isFirst = true;
    for (const auto& e : c) {
        if (isFirst) isFirst = false;
        else std::cout << ",";
        print(e);
    }
	std::cout << "}";
}

template <typename T>
void print(const T& e) { std::cout << e << '\n'; }
