# Forked thesis-NTNU

### General info
This is a heavy modification of CoPCSE@NTNUs LaTeX document class. Its purpose is to make a more friendly environment for writing mathematics while removing some redundancy. The main modifications in this version are the packages loaded, commands implemented, the font used, page layout, document structure, as well as a functional way to choose between a one-sided (digital) document and a two-sided (printable) document.  

Another change to this template is that it uses LuaLaTeX instead of pdflatex to compile PDFs. This allows us to use more modern web fonts, such as Opentype fonts. The main font of this document is [**Libertine**](https://libertine-fonts.org), which provides both a sans font *Libertine* for use in the main text, and a sans serif font *Biolinum* for use in titles, captions, etc. The biggest advantage of using this font is its support for Ligatures, optimized Superiors and Inferiors, and Contextual Chaining Substitution. The link web link provides more details. For changing the font see the note at the end of this document.

With the additional change to LuaLaTeX, we now have support for emojis. For how to use emojis, see [**package documentation**](https://texdoc.org/serve/emoji/0).


**Hot tip!** In this template, there also exists a folder with some handy LaTeX files with handy stuff. Recommend printing these out the two PDFs for easy access. Note that this template without any changes will generate a a PDF with some tips. A copy of this generated PDF named `max_template_tips.pdf` exists in this folder, so you will always have access to these tips after you begin to adapt this template to your specific thesis. 


### Setting up

You can use the template with [Overleaf](http://overleaf.com), and you are encouraged to do so for small projects. The alternative is to install a local copy of LaTeX on your laptop. As for now, the author recommends an installation of TeX Live, instructions may be found [**here**](https://www.tug.org/texlive/quickinstall.html).


#### Building document locally
Option 1: **(Recommended!!)** Run/build the main tex file named `thesis.tex` with your LaTex program of choice, such as Visual Studio Code, Sublime Text, TeXShop, Atom, etc. 

Option 2: Build the document locally using the attached `Makefile`. This requires that you have a LuaLaTeX compiler, such as ['texlive'](https://www.tug.org/texlive/), installed locally, which has to provide the commands 'lualatex' and 'biber'.


#### Setup using Overleaf

There are two ways to set up the [**Overleaf**](http://overleaf.com) project with the template:

* Use the `.zip` copy and upload.
* Remember to first fork this repository so that you have your **own** files to edit.

When you have successfully uploaded the files, you also need to change the compilator to LuaLaTeX. Instructions on how to do that may be found [**here**](https://www.overleaf.com/learn/how-to/Changing_compiler).


### On using this template (**Important**)

* The file for compiling/building the main document is labeled `thesis.tex`. 
* To find a few writing tips, further LaTeX hacks, as well as some examples of the functionality of this template, open the outputted PDF file after compiling the first time. 

* The template provides the **subfiles** package so that each chapter may be compiled individually if the user wants. This is done via the `\subfile{FILENAME.tex}` or `\subfile{foldername/foldername/FILENAME.tex}` commands. Note that each subfile requires some special commands, therefore it is recommended to duplicate the file `00_A_TEMPLATE_empty.tex`. 

* The author recommends using separate `.tex` files for large and or all subsections within a chapter. Additionally, separate `.tex` files for figure environments. Meaning, if using images these are located in one place and loaded into an `MYfigure.tex` file, and the `MYfigure.tex` file is loaded into the document via the `\input{figures/figure-tex/MYfigure.tex}`. If using tikzpicture this code is instead just directly inserted into the `MYfigure.tex` file and then loaded into the document. An example of this is in the initial state of this template.

* The option for one-sided or two-sided documents is done via the `\PRINTINGtrue` or `\PRINTINGfalse` command. The main difference between these two options is that the one-sided document treats every page as the same, ideal for a digital document, while the two-sided document introduces an offset as well as different headers on the "left" and "right" pages which are ideal for the final physical printing of the document by NTNU. This option also forces each chapter to begin on the right side which is the norm when creating a "book-type print". When using this option note that the output from some places in the **thesis.tex** file must manually be checked to look correct so that the offset matches what will be the "left" and "right" pages, and that the NTNU added front and back cover "adheres" correctly. 

* Update the `critical_info.tex` file with your information. Note that this is mainly for the temporary title page of the document or if you want to use these commands later on in headers, etc. 
* Update `thesis.tex` and the folders with your document structure!
* Take note of the `glossary.tex` file you might want to add to the document, and the `commands.tex` file which you might want to further edit to your liking.

* NOTE: If you have another preamble with packages, this can be loaded with `\usepackage{preamble/head_mk2}` for `.sty` files, or simply `\input{preamble/MYhead.tex}` for `.tex` files. IMPORTANT! When doing this conflict may arise because packages might be loaded twice, which can break the functionality of the template. It is therefore recommended to copy out the packages needed and paste these into their own `.sty` file or into the already created `head_mk2.sty` file. 


#### If using **vscode**
Recommended extensions
* aaron-bond.better-comments : This adds support for different colorization of the comments seen throughout the document. An overview of the coloring is seen in the `00_A_TEMPLATE_empty.tex` file. 

* James-Yu.latex-workshop: This adds support for equation preview, snippets, etc. A must-have for LaTeX in VScode.

* znck.grammarly : This adds support for Grammarly directly into the document. From the "view" tab or `shift` + `cmd` + `P` open the command palette and run the login option. When this extension underlines an error hover over to see the problem and hit `cmd` + `.` for quick fixes if any. This extension can also be excluded from running on all files via the extension options. Last, to avoid cluttering the `problems` tab with spelling errors use `!grammarly` in the filter box to filter all of these "errors" out so that you only get "errors" related to the LaTeX compilation. NOTE: **Grammarly is not perfect, and will sometimes underline words that are actually correct or need to be written in this specific way**.

* tonybaloney.vscode-pets : This adds some nice creatures to spawn in your document explorer tab <3



### A note on changing the font

If using a recent tex distribution it should be included in the local installation and is activated via the `\usepackage{libertine}` as well as two other commands for activating the sans serif font. Since this document uses LaTeX's basic *report* documentclass, this was needed. If using another documentclass such as *scrreprt* no other commands than `\usepackage{libertine}` is needed to load the font correctly. 

Note that you can freely change the font by using `\setmainfont{#Font here}` with the addition of loading the package *fontspec* and removing the code in the font loading section. This is done in the `ntnuthesis.cls` Note that the font you want to load has to be both installed and visible to the compiler. When using Overleaf, this shouldn't be a problem, it may however be some problem when working locally. Googling "installing opentype font" should give you some answers, if you are on windows this [**link**](https://www.lifewire.com/installing-truetype-or-opentype-fonts-in-windows-1074134) may be of help.

---
 