/// File   : ringbuf.h
/// Author : Kevin Su<xianwei.su@ubtrobot.com>
/// Version: 1.0
/// Date   : 2020/12/28
/// Brief  : Common ringbuf implementation, expected to have only one producer
///          In case of one producer and one comsumer reach maximum performance


#include <stdio.h>
#include <vector>
#include <atomic>
#include <thread>
#include <mutex>

namespace ubt {
namespace utils {

template <typename T>
class RingBuf {
public:
    enum RingBufSize {
        SZ_2    = 1<<1,
        SZ_4    = 1<<2,
        SZ_8    = 1<<3,
        SZ_16   = 1<<4,
        SZ_32   = 1<<5,
        SZ_64   = 1<<6,
        SZ_128  = 1<<7,
        SZ_256  = 1<<8,
        SZ_512  = 1<<9,
        SZ_1K   = 1<<10,
        SZ_2K   = 1<<11,
        SZ_4K   = 1<<12,
        SZ_8K   = 1<<13,
        SZ_16K  = 1<<14,
        SZ_32K  = 1<<15,
        SZ_64K  = 1<<16,
        SZ_128K = 1<<17,
        SZ_256K = 1<<18,
        SZ_512K = 1<<19,
        SZ_1M   = 1<<20,
        SZ_2M   = 1<<21,
        SZ_4M   = 1<<22,
        SZ_8M   = 1<<23,
        SZ_16M  = 1<<24,
        SZ_32M  = 1<<25,
        SZ_64M  = 1<<26,
        SZ_128M = 1<<27,
        SZ_256M = 1<<28,
        SZ_512M = 1<<29,
        SZ_1G   = 1<<30
    };

    explicit RingBuf(const RingBufSize size) :
        SIZE(size),
        SIZE_MASK(size-1),
        read_pos_(0),
        write_pos_(0)
    {
        buf_.resize(SIZE);
    }

    bool pop(T &val) {
        std::unique_lock<std::mutex> lock(read_mutex_);
        if (empty()) {
            return false;
        }
        val = buf_[read_pos_&SIZE_MASK];
        read_pos_.fetch_add(1, std::memory_order_release);

        return true;
    }

    bool push(const T &val) {
        if (full()) {
            return false;
        }
        buf_[write_pos_.load(std::memory_order_acquire)&SIZE_MASK] = val;
        write_pos_.fetch_add(1, std::memory_order_release);

        return true;
    }

    bool empty() {
        return read_pos_.load(std::memory_order_acquire) == write_pos_.load(std::memory_order_acquire);
    }

    /// Do not use the whole buffer size, reserve one space for overflow detection
    bool full() {
        return (write_pos_.load(std::memory_order_acquire) - read_pos_.load(std::memory_order_acquire)) >= (SIZE-1);
    }

    void clear() {
        std::unique_lock<std::mutex> lock(read_mutex_);
        read_pos_.store(write_pos_.load(std::memory_order_acquire), std::memory_order_release);
    }

    const size_t size() const {
        return SIZE;
    }

    const size_t count() {
        return write_pos_.load(std::memory_order_acquire) - read_pos_.load(std::memory_order_acquire);
    }

private:
    /// disable copy and assign
    RingBuf(const RingBuf &other) = delete;
    RingBuf & operator =(const RingBuf &other) = delete;

private:
    const size_t SIZE;
    const unsigned long SIZE_MASK;
    std::vector<T> buf_;
    std::atomic_ulong read_pos_;
    std::atomic_ulong write_pos_;
    std::mutex read_mutex_;
}; ///< End of class RingBuf

} ///< End of namespace utils
} ///< End of namespace ubt
