# bin-annot is required for Merlin and other IDE-like tools
# The -I flag introduces sub-directories to search for code

.PHONY: all 

BOOT_ML_LIBS  := unix.cma  nums.cma  bigarray.cma

OCB_FLAGS = -tag bin_annot -use-ocamlfind -package bigarray -use-menhir -I driver -I util -I fe -I me -I be 
OCB = ocamlbuild $(OCB_FLAGS)

all: native 

clean:
	$(OCB) -clean
	rm -rf _build/*

native:
	$(OCB) main.native

