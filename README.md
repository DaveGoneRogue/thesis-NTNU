# Forked thesis-NTNU

This is a heavy modification of CoPCSE@NTNUs LaTeX document class. Its purpose is to make a more friendly environment for writing mathematics while removing some redundancy. The main modifications in this version are the packages loaded, commands implemented, the font used, page layout, document structure, as well as a functional way to choose between a one-sided (digital) document and a two-sided (printable) document.  

Another change to this template is that it uses LuaLaTeX instead of pdflatex to compile PDFs. This allows us to use more modern web fonts, such as Opentype fonts. The main font of this document is [**Libertine**](https://libertine-fonts.org), which provides both a sans font Libertine for use in the main text, and a sans serif font *Biolinum* for use in titles, captions, etc. The biggest advantage of using this font is its support for Ligatures, optimized Superiors and Inferiors, and Contextual Chaining Substitution. The link web link provides more details. For changing the font see the note at the end of this document.

With the additional change to LuaLaTeX, we now have support for emojis. For how to use emojis, see [**package documentation**](https://texdoc.org/serve/emoji/0).

### Setting up

You can use the template with [Overleaf](http://overleaf.com), and you are encouraged to do so for small projects. The alternative is to install a local copy of LaTeX on your laptop. As for now, the author recommends an installation of TeX Live, instructions may be found [**here**](https://www.tug.org/texlive/quickinstall.html).

Whenever you can, you should **fork** the CoPCSE repo so that you have your own files to edit and you can always merge with the upstream changes to the template, in case the template is updated. 

#### Setup using Overleaf

There are two ways for setting up the [**Overleaf**](http://overleaf.com) project with the template:

* Use the `.zip` copy and upload.
* Fork the the CoPCSE repo so that you have your own files to edit.

When you have succsessfully uploaded the files, you also need to change the compilator to LuaLaTeX. Instructions on how to do that may be found [**here**](https://www.overleaf.com/learn/how-to/Changing_compiler).

#### Building document locally

The template also provides a simple `Makefile` which allows you to build the document locally. This requires that you have a LuaLaTeX compiler, such as [`texlive`](https://www.tug.org/texlive/), installed locally, which has to provide the commands `lualatex` and `biber`.




#### A note on changing the font

If using a recent tex distribution it should be included in the local installation and is activated via the *\usepackage{libertine}* as well as two other commands for activating the sans serif font. Since this document uses LaTeX's basic documentclass *report* this was needed. If using another documentclass such as *scrreprt* no other commands are needed to load the font correctly. 

Note that you can freely change font by using \setmainfont{#Font here} with the addition of loading the package *fontspec* and removing the code in the font loading section. Note that the font you want to load has to be both installed and visible to the compiler. When using Overleaf, this shouldn't be a problem, it may however be some problem when working locally. Googling "installing opentype font" should give you some answers, if you are on windows this [**link**](https://www.lifewire.com/installing-truetype-or-opentype-fonts-in-windows-1074134) may be of help.

---
