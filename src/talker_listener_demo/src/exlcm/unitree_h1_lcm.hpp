/** THIS IS AN AUTOMATICALLY GENERATED FILE.  DO NOT MODIFY
 * BY HAND!!
 *
 * Generated by lcm-gen 1.5.0
 **/

#ifndef __exlcm_example_t_hpp__
#define __exlcm_example_t_hpp__

#include <lcm/lcm_coretypes.h>

#include <vector>
#include <string>

namespace exlcm
{

class example_t
{
    public:
        int64_t    timestamp;

        /**
         * LCM Type: double[3]
         */
        double     position[3];

        /**
         * LCM Type: double[4]
         */
        double     orientation[4];

        int32_t    num_ranges;

        /**
         * LCM Type: int16_t[num_ranges]
         */
        std::vector< int16_t > ranges;

        std::string name;

        int8_t     enabled;

    public:
        /**
         * Encode a message into binary form.
         *
         * @param buf The output buffer.
         * @param offset Encoding starts at thie byte offset into @p buf.
         * @param maxlen Maximum number of bytes to write.  This should generally be
         *  equal to getEncodedSize().
         * @return The number of bytes encoded, or <0 on error.
         */
        inline int encode(void *buf, int offset, int maxlen) const;

        /**
         * Check how many bytes are required to encode this message.
         */
        inline int getEncodedSize() const;

        /**
         * Decode a message from binary form into this instance.
         *
         * @param buf The buffer containing the encoded message.
         * @param offset The byte offset into @p buf where the encoded message starts.
         * @param maxlen The maximum number of bytes to read while decoding.
         * @return The number of bytes decoded, or <0 if an error occured.
         */
        inline int decode(const void *buf, int offset, int maxlen);

        /**
         * Retrieve the 64-bit fingerprint identifying the structure of the message.
         * Note that the fingerprint is the same for all instances of the same
         * message type, and is a fingerprint on the message type definition, not on
         * the message contents.
         */
        inline static int64_t getHash();

        /**
         * Returns "example_t"
         */
        inline static const char* getTypeName();

        // LCM support functions. Users should not call these
        inline int _encodeNoHash(void *buf, int offset, int maxlen) const;
        inline int _getEncodedSizeNoHash() const;
        inline int _decodeNoHash(const void *buf, int offset, int maxlen);
        inline static uint64_t _computeHash(const __lcm_hash_ptr *p);
};

int example_t::encode(void *buf, int offset, int maxlen) const
{
    int pos = 0, tlen;
    int64_t hash = getHash();

    tlen = __int64_t_encode_array(buf, offset + pos, maxlen - pos, &hash, 1);
    if(tlen < 0) return tlen; else pos += tlen;

    tlen = this->_encodeNoHash(buf, offset + pos, maxlen - pos);
    if (tlen < 0) return tlen; else pos += tlen;

    return pos;
}

int example_t::decode(const void *buf, int offset, int maxlen)
{
    int pos = 0, thislen;

    int64_t msg_hash;
    thislen = __int64_t_decode_array(buf, offset + pos, maxlen - pos, &msg_hash, 1);
    if (thislen < 0) return thislen; else pos += thislen;
    if (msg_hash != getHash()) return -1;

    thislen = this->_decodeNoHash(buf, offset + pos, maxlen - pos);
    if (thislen < 0) return thislen; else pos += thislen;

    return pos;
}

int example_t::getEncodedSize() const
{
    return 8 + _getEncodedSizeNoHash();
}

int64_t example_t::getHash()
{
    static int64_t hash = static_cast<int64_t>(_computeHash(NULL));
    return hash;
}

const char* example_t::getTypeName()
{
    return "example_t";
}

int example_t::_encodeNoHash(void *buf, int offset, int maxlen) const
{
    int pos = 0, tlen;

    tlen = __int64_t_encode_array(buf, offset + pos, maxlen - pos, &this->timestamp, 1);
    if(tlen < 0) return tlen; else pos += tlen;

    tlen = __double_encode_array(buf, offset + pos, maxlen - pos, &this->position[0], 3);
    if(tlen < 0) return tlen; else pos += tlen;

    tlen = __double_encode_array(buf, offset + pos, maxlen - pos, &this->orientation[0], 4);
    if(tlen < 0) return tlen; else pos += tlen;

    tlen = __int32_t_encode_array(buf, offset + pos, maxlen - pos, &this->num_ranges, 1);
    if(tlen < 0) return tlen; else pos += tlen;

    if(this->num_ranges > 0) {
        tlen = __int16_t_encode_array(buf, offset + pos, maxlen - pos, &this->ranges[0], this->num_ranges);
        if(tlen < 0) return tlen; else pos += tlen;
    }

    char* name_cstr = const_cast<char*>(this->name.c_str());
    tlen = __string_encode_array(
        buf, offset + pos, maxlen - pos, &name_cstr, 1);
    if(tlen < 0) return tlen; else pos += tlen;

    tlen = __boolean_encode_array(buf, offset + pos, maxlen - pos, &this->enabled, 1);
    if(tlen < 0) return tlen; else pos += tlen;

    return pos;
}

int example_t::_decodeNoHash(const void *buf, int offset, int maxlen)
{
    int pos = 0, tlen;

    tlen = __int64_t_decode_array(buf, offset + pos, maxlen - pos, &this->timestamp, 1);
    if(tlen < 0) return tlen; else pos += tlen;

    tlen = __double_decode_array(buf, offset + pos, maxlen - pos, &this->position[0], 3);
    if(tlen < 0) return tlen; else pos += tlen;

    tlen = __double_decode_array(buf, offset + pos, maxlen - pos, &this->orientation[0], 4);
    if(tlen < 0) return tlen; else pos += tlen;

    tlen = __int32_t_decode_array(buf, offset + pos, maxlen - pos, &this->num_ranges, 1);
    if(tlen < 0) return tlen; else pos += tlen;

    if(this->num_ranges) {
        this->ranges.resize(this->num_ranges);
        tlen = __int16_t_decode_array(buf, offset + pos, maxlen - pos, &this->ranges[0], this->num_ranges);
        if(tlen < 0) return tlen; else pos += tlen;
    }

    int32_t __name_len__;
    tlen = __int32_t_decode_array(
        buf, offset + pos, maxlen - pos, &__name_len__, 1);
    if(tlen < 0) return tlen; else pos += tlen;
    if(__name_len__ > maxlen - pos) return -1;
    this->name.assign(
        static_cast<const char*>(buf) + offset + pos, __name_len__ - 1);
    pos += __name_len__;

    tlen = __boolean_decode_array(buf, offset + pos, maxlen - pos, &this->enabled, 1);
    if(tlen < 0) return tlen; else pos += tlen;

    return pos;
}

int example_t::_getEncodedSizeNoHash() const
{
    int enc_size = 0;
    enc_size += __int64_t_encoded_array_size(NULL, 1);
    enc_size += __double_encoded_array_size(NULL, 3);
    enc_size += __double_encoded_array_size(NULL, 4);
    enc_size += __int32_t_encoded_array_size(NULL, 1);
    enc_size += __int16_t_encoded_array_size(NULL, this->num_ranges);
    enc_size += this->name.size() + 4 + 1;
    enc_size += __boolean_encoded_array_size(NULL, 1);
    return enc_size;
}

uint64_t example_t::_computeHash(const __lcm_hash_ptr *)
{
    uint64_t hash = 0x1baa9e29b0fbaa8bLL;
    return (hash<<1) + ((hash>>63)&1);
}

}

#endif
