.PHONY: clean install

nvim.sif: nvim.def
	apptainer build nvim.sif nvim.def

install:
	mkdir -p ~/.local/containers
	cp nvim.sif ~/.local/containers
	cp nvim ~/.local/bin/nvim
	ln -s ~/.local/bin/nvim ~/.local/bin/vi
	ln -s ~/.local/bin/nvim ~/.local/bin/vim

clean:
	rm -rf nvim.sif
