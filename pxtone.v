module pxtone

struct Pxtone {
	mp C.MPXTN
}

pub fn new_pxtone(file string) {

}

pub fn (p Pxtone) pxtone_start() {

}

pub fn (p Pxtone) pxtone_stop() {

}

pub fn (p Pxtone) pxtone_free() {
	C.mpxtn_close(p.mp)
}