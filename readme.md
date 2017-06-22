
## For the readers

This repository contains the [main documentation](./DivaUserGuide.pdf), the source files (.tex) in the [source](./src/) directory and the figures necessary to build the pdf.

### Organisation 

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

### Compilation

You need to have [LaTeX](https://www.latex-project.org/) and [BibTex](http://www.bibtex.org/) installed on your machine if you want to compile the sources.
```bash
cd src/
latex DivaUserGuide.tex
bibtex bibtex DivaUserGuide.aux
latex DivaUserGuide.tex
latex DivaUserGuide.tex
```
The last 2 lines are identical but necessary to obtain the correct references to the bibliography. 



## For the editors

1. Try to use the commands 
```
\file{}
\command{}
\directory{}
```
in order to evidence the files, command and directory names.

Example:
```latex
"Execute \command{divafit}, and you get file \file{param.par.fit} in \directory{output}"
```

2. Progressively add commands such as `\index{key-word}` to build a consistent index.

3. English: try to stick to British English
