[![DOI](https://zenodo.org/badge/95117345.svg)](https://zenodo.org/badge/latestdoi/95117345)

This repository contains the source files ([LaTeX](https://www.latex-project.org/)) and the figures necessary to generate the User Guide of the [Diva](https://github.com/gher-ulg/DIVA) (Data Interpolating Variational Analysis) tool.

![Diva logo](https://cloud.githubusercontent.com/assets/11868914/24106959/c6d8fb44-0d89-11e7-921b-a36fcccf5a21.png)

## For the readers

Directly download the [main documentation](./DivaUserGuide.pdf) in pdf format.      
The source files (.tex) in the [source](./src/) directory and the figures necessary to build the pdf.

### Directory organisation 

```
.
├── DivaWorkshop
│   ├── figures
│   ├── SlidesDivaLecce2016
│   └── SlidesDivaWorkshop2015
├── src
│   ├── figures
│   │   ├── advection
│   │   ├── analysis
│   │   ├── divaonweb
│   │   ├── errors
│   │   ├── examples
│   │   ├── gallery
│   │   ├── GUI
│   │   ├── icones
│   │   ├── images
│   │   ├── papers
│   │   ├── postprocessing
│   │   ├── preprocessing
│   │   └── test_cases
│   └── old
└── tags
    └── DivaUserGuide_March2013
        └── figures
```


## For the editors

If you plan to edit the User Guide, here are some instructions.

### Requirements

The manual requires several LaTeX packages to be compiled; the [header](src/00-DivaHeader.tex) file contains the list package to be installed along with the commands for the layout.

### Compilation

You need to have [LaTeX](https://www.latex-project.org/) and [BibTex](http://www.bibtex.org/) installed on your machine in order to compile the sources.
```bash
cd src/
latex DivaUserGuide.tex
bibtex bibtex DivaUserGuide.aux
mkindex DivaUserGuide.tex
latex DivaUserGuide.tex
latex DivaUserGuide.tex
```
* The 3rd line creates a list of references for the bibliography.
* The 4th line prepares the index.
* The last 2 lines are identical but necessary to obtain the correct references to the bibliography. 

1. Try to use the commands 
```
\file{}
\command{}
\directory{}
```
in order to evidence the file, command and directory names.

Example:
```latex
"Execute \command{divafit}, and you get file \file{param.par.fit} in \directory{output}"
```

2. Progressively add commands such as `\index{key-word}` to build a consistent index.

3. English: try to stick to British English.

## Related projects 

### DIVAnd.jl ![Julia](https://img.shields.io/badge/-Julia-9558B2?style=for-the-badge&logo=julia&logoColor=white)

[DIVAndnd.jl](https://github.com/gher-uliege/divand.jl)  performs n-dimensional variational analysis of arbitrarily located observations.

### divand.py ![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54)

[divand.py](https://github.com/gher-uliege/divand.py) is the Python interface to the previous code (not maintained anymore).

### DivaPythonTools ![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54)

[DivaPythonTools](https://github.com/gher-ulg/DivaPythonTools) is a set of utilies to read, write and plot the content of input or output files used in DIVA.
