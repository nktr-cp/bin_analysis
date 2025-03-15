#include <iostream>

template <typename T>
void func() {
    std::cout << "Template function\n";
}

int main() {
    func<int>();
    return 0;
}
