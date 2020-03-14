require "mkmf"

$warnflags = "-Wall -Wextra -Wno-unused-parameter"
$CFLAGS << " -std=c99 -D_GNU_SOURCE #{ENV["CFLAGS"]}"

have_library "glib-2.0"
have_header "glib.h"
have_header "dtext.h"
create_makefile "dtext/dtext"
