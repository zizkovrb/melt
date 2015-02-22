#include "melt.h"

VALUE melt(VALUE self) {
  RBASIC(self)->flags ^= FL_FREEZE;
  return self;
}

void Init_melt(void) {
  rb_define_method(rb_cObject, "melt", melt, 0);
}
