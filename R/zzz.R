.onLoad <- function(libname, pkgname) {
  library.dynam("FloatExpansion", pkgname, libname)
  .C("HsStart")
  invisible()
}

.onUnLoad <- function(libpath) {
  library.dynam.unload("FloatExpansion", libpath)
  invisible()
}
