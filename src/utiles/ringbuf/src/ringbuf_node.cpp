/// File   : ringbuf_node.cpp
/// Author : Kevin Su<xianwei.su@ubtrobot.com>
/// Version: 1.0
/// Date   : 2020/12/28
/// Brief  : ringbuf example

#include "ringbuf/ringbuf.h"
#include <iostream>
#include <future>
#include <chrono>
#include <time.h>

#define BUF_SIZE        ubt::utils::RingBuf<int>::SZ_64
#define TEST_CNT    (ubt::utils::RingBuf<int>::SZ_64M)

int main(int argc, char *argv[])
{
    ubt::utils::RingBuf<int> ringbuf(BUF_SIZE);
    auto start = std::chrono::steady_clock::now();

    std::future<int> pret = std::async(std::launch::async ,[&ringbuf](){
        int i=0;
        while (true) {
            if (i >= TEST_CNT) {
                break;
            }
            if (!ringbuf.push(i)) {
//                std::cout << "FULL! push " << i << " failed!" << std::endl;
                std::this_thread::yield();
            } else {
                i++;
            }
        }
        return i;
    });

    std::future<int> cret = std::async(std::launch::async, [&ringbuf](){
       int i=0, val = 0;
       while (true) {
           if (i >= TEST_CNT) {
               break;
           }
           if (ringbuf.pop(val)) {
               if (i != val) {
                   std::cout << "MISMATCH!!! cur: " << val << ", exp: " << i << std::endl;
                   break;
               }
               i++;
           } else {
//               std::cout << "EMPTY(" << i << ")!" << std::endl;
               std::this_thread::yield();
           }
       }
       return i;
    });

    int ret1 = pret.get();
    int ret2 = cret.get();

    auto end = std::chrono::steady_clock::now();
    std::chrono::duration<double> diff = end - start;

    if (ret1 != ret2) {
        std::cout << "Result mismatch!!" << std::endl;
    } else {
        std::cout << "pret(" << ret1 << ") == cret(" << ret2 << "), time spent: " << diff.count()
                  << ", " << diff.count()*1000000000.0/TEST_CNT << " ns/cnt"
                  << std::endl;
    }

    return 0;
}
