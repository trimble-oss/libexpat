/* windows config by Juha Laukala */

#define XML_NS 1
#define XML_DTD 1
#define XML_CONTEXT_BYTES 1024

/* we will assume all Windows platforms are little endian */
#define BYTEORDER 1234

/* Windows has memmove() available. */
#define HAVE_MEMMOVE
