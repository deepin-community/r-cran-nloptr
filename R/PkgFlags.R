## Provide compiler flags.
CFlags <- function( print = TRUE ) {
    if (.Platform$OS.type=="windows") {
        flags <- paste0('-I"', system.file("include", package = "nloptr"), '"') 
    } else {
        flags <- ' '
        # Replace flags by include directory on R source path if flag is empty.
        if (nchar(trimws(flags)) == 0) {
          flags <- paste0('-I"', system.file("include", package = "nloptr"), '"')
        }
    }
    if ( print ) {
        cat( flags )
    } else {
        return( flags )
    }
}

## Provide linker flags.
LdFlags <- function( print = TRUE ) {
    if (.Platform$OS.type=="windows") {
        flags <- ''
    } else {
        flags <- ' -lnlopt'
    }
    if ( print ) {
        cat( flags )
    } else {
        return( flags )
    }
}
