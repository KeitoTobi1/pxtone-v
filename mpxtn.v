module pxtone

#flag -I libmpxtn/src
#include "mpxtn.h"

struct C.MPXTN {}

struct C.POINT {
	x int
	y int
}

fn C.mpxtn_fread(&C.FILE,&int) C.MPXTN
fn C.mpxtn_mread(voidptr,C.size_t,&int) C.MPXTN
fn C.mpxtn_set_loop(&C.MPXTN, bool)
fn C.mpxtn_get_loop(&C.MPXTN) bool
fn C.mpxtn_close(&C.MPXTN)