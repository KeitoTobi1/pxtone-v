/*
 * libmpxtn: decoding pxtone collage file library in C.
 * Copyright (c) 2018 stkchp
 * Copyright (c) 2020 Keito Nagai (V bindings)
 */
module pxtone

#flag -I lib/libmpxtn
#flag lib/libmpxtn.o
#include "mpxtn.h"

struct C.MPXTN {}

struct C.POINT {
mut:
	x int
	y int
}

fn C.mpxtn_fread(&C.FILE,&int) C.MPXTN
fn C.mpxtn_mread(voidptr,C.size_t,&int) C.MPXTN
fn C.mpxtn_set_loop(&C.MPXTN, bool)
fn C.mpxtn_get_loop(&C.MPXTN) C.bool
fn C.mpxtn_close(&C.MPXTN)
fn C.mpxtn_seek(&C.MPXTN) C.bool
fn C.mpxtn_reset(&C.MPXTN) C.bool