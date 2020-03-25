module main

#include "git2.h"
#flag -lgit2.dll

/* prime31 converter.....
 * https://github.com/prime31/V-C-Wrapper-Generator
 */

fn C.git_libgit2_init() int

struct C.git_repository

/* Guide at:
 * https://libgit2.org/docs/guides/101-samples/
 */ 

fn main() {

    C.git_libgit2_init()


    git_repository *repo = NULL;

    C.git_clone("https://github.com/MartenH/v-code.git",)

    println("hej")
}
