(**************************************************************************)
(*  Ocaml-gettext : example code                                           *)
(*                                                                         *)
(*  Copyright (C) 2003, 2004, 2005 Sylvain Le Gall <sylvain@le-gall.net>   *)
(*                                                                         *)
(*  You can redistribute this library and/or modify it under the terms of  *)
(*  the GNU LGPL v2.1 with the OCaml static compilation exception.         *)
(*                                                                         *)
(*  Contact: sylvain@le-gall.net                                           *)
(**************************************************************************)

(* Create the module Gettext, using the textdomain "mydomain" *)
module Gettext = Gettext.Library(struct
  let textdomain   = "mydomain"
  let codeset      = Some "UTF-8"
  let dir          = None
  let dependencies = Gettext.init
end)
;;

(* Create shortand to call Gettext functions. It is important to 
   keep the name s_, f_, sn_ and fn_ *)
let s_ = Gettext.s_
;;

let f_ = Gettext.f_
;;

let sn_ = Gettext.sn_
;;

let fn_ = Gettext.fn_
;;
