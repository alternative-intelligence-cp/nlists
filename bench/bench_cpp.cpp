#include <list>
int main() {
    std::list<long long> lst;
    for (long long i = 0; i < 5000000; i++) {
        lst.push_back(i);
    }
    for (long long i = 0; i < 5000000; i++) {
        lst.pop_front();
    }
    return 0;
}
