#lang scribble/doc
@(require "common.ss")

@definterface/title[readable-snip<%> ()]{

A @scheme[readable-snip<%>] object is treated specially by the port
 generated by @scheme[open-input-text-editor]. When a
 @scheme[readable-snip<%>] object is encountered for the input stream,
 its @method[readable-snip<%> read-special] method is called to
 generate the read result for the snip.

@defmethod[(read-special [source any/c]
                         [line (or/c nonnegative-exact-integer? false/c)]
                         [column (or/c nonnegative-exact-integer? false/c)]
                         [position (or/c nonnegative-exact-integer? false/c)])
           any/c]{

The arguments are the same as the arguments to a procedure returned by
 a custom input port's @scheme[read]; see @secref[#:doc '(lib
 "scribblings/reference/reference.scrbl") "customport"] for
 details. The result is also the same as the result from a
 @scheme[read]-produced procedure.


}}
