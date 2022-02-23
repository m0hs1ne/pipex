<h1 align=center>
	<b>⛓Pipex</b>
</h1>

<h2 align=center>
	 <i>42cursus project #6</i>
</h2>

<p align=center>
	The <b>Pipex</b> program is a executable for the `pipe` shell command, where you can redirect the output of some commands to the input of others. 


---

<h3 align=center>
Mandatory
</h3>

> <i> Pipex <b>must</b>: 
> - Read and write from/to files;
> - Redirect single pipes and truncate existing file output.</i>
<h3 align=center>
<h2>
The project
</h2>


### Implementation files
	
- [`Makefile`](Makefile)

Header files
- [`pipex.h`](inc/pipex.h)

Main file	
- [`pipex.c`](main/pipex.c)

Utilities
- [`childs.c`](main/childs.c)
- [`free.c`](main/free.c)

Error management and program closing
- [`error.c`](main/error.c)

---
<h2>
Usage
</h2>

### Requirements
`pipex` requires a *clang* compiler and some standard libraries. 

### Instructions

Clone this repository in your local computer:

```sh
$> git clone https://github.com/m0hs1ne/pipex.git path/to/pipex
```

In your local repository, run `make`

```sh
$> make 
```

> `make` suports 6 flags:
> - `make all` or simply `make` compiles pipex in its mandatory format
> - `make clean` deletes the `.o` files generated during compilation
> - `make fclean` deletes the `.o` and the `pipex` file generated
> - `make re` executes `fclean` and `all` in sequence, recompiling the program
To run `pipex`, type:
```sh
./pipex files/<choose-input-file> cmd1 cmd2 files/<choose-output-file>
# works like: 
< files/<choose-input-file> cmd1 | cmd2 > files/<choose-output-file>
```
