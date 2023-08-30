% * ntnuthesis.cls - a LaTeX class for theses at NTNU
% * CC-BY CoPCSE@NTNU, 2019

% * Partly merged, partly based on, and partly a simplification of
% * various previous thesis templates by Simon McCallum, Ivar Farup, Kjetil Ørbekk an others, by CoPCSE@NTNU.
% * Heavily modified by Max Hauge 2023

% * IDENTIFICATION
\xdef\ntnuthesisdate{2019/07/18}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ntnuthesis}[\ntnuthesisdate\space CC-BY CoPCSE at NTNU 2019]


% * LOAD PRELIMINARY PACKAGES
% error, Xcolor må loades før pdfpages
% https://tex.stackexchange.com/questions/124636/package-xcolor-error-undefined-colors-maroon-royal-blue-when-master-has-pdf
\RequirePackage[usenames,dvipsnames]{xcolor}  % selecting text color

% Package for some reason needed before the options
\RequirePackage{pdfpages}                   % including pdf files


% * CLASS OPTIONS
% One or twosided paging
\newcommand{\paging}{twoside}  % Must create command before one can change it
\DeclareOption{oneside}{
    \renewcommand{\paging}{oneside}
}
\DeclareOption{twoside}{  % Not needed, but document becomes more intuitive to use
    \renewcommand{\paging}{twoside}
}

% British
\newif\ifcapitalize
\DeclareOption{british}{
    \capitalizetrue  %! CLEVER REF CAPITALIZE av og på
    %\capitalizefalse
    \def\papername{Paper}
    \newcommand{\NTNU}{{N}orwegian {U}niversity of {S}cience and {T}echnology}
    \newcommand{\NTNULowerC}{norwegian university of science and technology}
    \newcommand{\NTNUTrondheim}{{NTNU} in {T}rondheim}
    \newcommand{\NTNUTrondheimLowerC}{ntnu in trondheim}
    \newcommand{\NTNUGjoevik}{{NTNU} in {G}j\o{}vik}
    \newcommand{\NTNUGjoevikLowerC}{ntnu in gj\o{}vik}
    \newcommand{\NTNUAalesund}{{NTNU} in {\AA}lesund}
    \newcommand{\NTNUAalesundLowerC}{ntnu in {\aa}lesund}
    \newcommand{\NTNUinstitutt}{{I}nstitute of {M}athematical {S}ciences}
    \newcommand{\NTNUinstituttLowerC}{institute of mathematical sciences}
    \AtBeginDocument{
        \renewcommand{\lstlistingname}{Code listing}
        \renewcommand{\lstlistlistingname}{Code Listings}
        \crefname{listing}{Code listing}{Code listings}
        \crefname{paper}{Paper}{Papers}
        \addto\captionsbritish{
            \renewcommand{\contentsname}{Contents}
            \renewcommand{\listfigurename}{Figures}
            \renewcommand{\listtablename}{Tables}
            \renewcommand{\glossaryname}{Glossary}
            \renewcommand{\acronymname}{Acronyms}
            \renewcommand{\chaptername}{Chapter}
        }
    }
}

% American
\DeclareOption{american}{
    \capitalizetrue  %! CLEVER REF CAPITALIZE av og på
    \def\papername{Paper}
    \newcommand{\NTNU}{{N}orwegian {U}niversity of {S}cience and {T}echnology}
    \newcommand{\NTNULowerC}{norwegian university of science and technology}
    \newcommand{\NTNUTrondheim}{{NTNU} in {T}rondheim}
    \newcommand{\NTNUTrondheimLowerC}{ntnu in trondheim}
    \newcommand{\NTNUGjoevik}{{NTNU} in {G}j\o{}vik}
    \newcommand{\NTNUGjoevikLowerC}{ntnu in gj\o{}vik}
    \newcommand{\NTNUAalesund}{{NTNU} in {\AA}lesund}
    \newcommand{\NTNUAalesundLowerC}{ntnu in {\aa}lesund}
    \newcommand{\NTNUinstitutt}{{I}nstitute of {M}athematical {S}ciences}
    \newcommand{\NTNUinstituttLowerC}{institute of mathematical sciences}
    \AtBeginDocument{
        \renewcommand{\lstlistingname}{Code listing}
        \renewcommand{\lstlistlistingname}{Code Listings}
        \crefname{listing}{Code listing}{Code listings}
        \crefname{paper}{Paper}{Papers}
        \addto\captionsamerican{
            \renewcommand{\contentsname}{Contents}
            \renewcommand{\listfigurename}{Figures}
            \renewcommand{\listtablename}{Tables}
            \renewcommand{\glossaryname}{Glossary}
            \renewcommand{\acronymname}{Acronyms}
            \renewcommand{\chaptername}{Chapter}
        }
    }
}

% Bokmål
\DeclareOption{norsk}{
    \capitalizefalse  %! CLEVER REF CAPITALIZE av og på
    \def\papername{Artikkel}
    \newcommand{\NTNU}{{N}orges teknisk-naturvitenskapelige universitet}
    \newcommand{\NTNULowerC}{norges teknisk-naturvitenskapelige universitet}
    \newcommand{\NTNUTrondheim}{{NTNU} i {T}rondheim}
    \newcommand{\NTNUTrondheimLowerC}{ntnu i trondheim}
    \newcommand{\NTNUGjoevik}{{NTNU} i {G}j\o{}vik}
    \newcommand{\NTNUGjoevikLowerC}{ntnu i gj\o{}vik}
    \newcommand{\NTNUAalesund}{{NTNU} i {\AA}lesund}
    \newcommand{\NTNUAalesundLowerC}{ntnu i {\aa}lesund}
    \newcommand{\NTNUinstitutt}{{I}nstitutt for {M}atematiske {F}ag}
    \newcommand{\NTNUinstituttLowerC}{institutt for matematiske fag}
    \AtBeginDocument{
        \renewcommand{\lstlistingname}{Kodeliste}
        \renewcommand{\lstlistlistingname}{Kodelister}
        \crefname{listing}{kodeliste}{kodelister}
        \crefname{equation}{ligning}{ligninger}
        \crefname{appendix}{vedlegg}{vedlegg}
        \crefname{paper}{artikkel}{artikler}
        \addto\captionsnorsk{
            \renewcommand{\appendixname}{Vedlegg}
            \renewcommand{\glossaryname}{Ordliste}
            \renewcommand{\acronymname}{Akronymer}
            \renewcommand{\chaptername}{Kapittel}
        }
    }
}

% Nynorsk
\DeclareOption{nynorsk}{
    \capitalizefalse  %! CLEVER REF CAPITALIZE av og på
    \def\papername{Artikkel}
    \newcommand{\NTNU}{{N}oregs teknisk-naturvitskaplege universitet}
    \newcommand{\NTNULowerC}{noregs teknisk-naturvitskaplege universitet}
    \newcommand{\NTNUTrondheim}{{NTNU} i {T}rondheim}
    \newcommand{\NTNUTrondheimLowerC}{ntnu i trondheim}
    \newcommand{\NTNUGjoevik}{{NTNU} i {G}j\o{}vik}
    \newcommand{\NTNUGjoevikLowerC}{ntnu i gj\o{}vik}
    \newcommand{\NTNUAalesund}{{NTNU} i {\AA}lesund}
    \newcommand{\NTNUAalesundLowerC}{ntnu i {\aa}lesund}
    \newcommand{\NTNUinstitutt}{{I}nstitutt for {M}atematiske {F}ag}
    \newcommand{\NTNUinstituttLowerC}{institutt for matematiske fag}
    \AtBeginDocument{
        \renewcommand{\lstlistingname}{Kodeliste}
        \renewcommand{\lstlistlistingname}{Kodelister}
        \crefname{listing}{kodeliste}{kodelister}
        \crefname{equation}{likning}{likningar}
        \crefname{table}{tabell}{tabellar}
        \crefname{figure}{figur}{figurar}
        \crefname{section}{avsnitt}{avsnitt}
        \crefname{chapter}{kapittel}{kapittel}
        \crefname{appendix}{vedlegg}{vedlegg}
        \crefname{paper}{artikkel}{artiklar}
        \renewcommand{\appendixname}{Vedlegg}
        \addto\captionsnynorsk{
            \renewcommand{\appendixname}{Vedlegg}
            \renewcommand{\glossaryname}{Ordliste}
            \renewcommand{\acronymname}{Akronym}
            \renewcommand{\chaptername}{Kapittel}
        }
    }
}

\ProcessOptions


% * CLASS FILE LOADING
\LoadClass[a4paper, 11pt, \paging, openright]{report}  % i.e load the standard LaTeX Report class which this is based on


% * PACKAGE LOADING

% * --- Fonts --- * %
%* LIBERTINE FONT LOADING
% F*** Standard latex report style, go KOMA-style report type i.e: \LoadClass[a4paper,11pt,openright, \paging]{scrreprt} 
\let\underline\undefined % Defined again in sectsty
\let\underbar\undefined % Defined again in sectsty
\usepackage{sectsty}
\allsectionsfont{\sffamily}  % Dette fikset font erroren, dvs det er sans-serif og ikke serif!! Yay

\usepackage{libertine}
%\setmainfont{Linux Libertine O}
%\setsansfont{Linux Biolinum O}
% ? TANKE, LaTeX report class har ikke noe skille på å bruke forksjellige fonter, ei heller designere forskjellige fonter på titler vs. brødtekst. 
% ? Derfor fungerer ingenting ved å sette "setsansfont". Må deklarere dette individuelt
%\RequirePackage{sansmath}  % Optional math font, did not look good in my opinion


%* LOADING OTHER FONTS
%\RequirePackage{fontspec}                % modern font encoding (INN MY ASS, ubrukelig pakke)

%\RequirePackage[charter, cal=cmcal]{mathdesign} % main font with math support
%\let\circledS\undefined % here - PS

%\setmainfont{Atkinson Hyperlegible}       % sans serif font
%\RequirePackage[scaled=.82]{DejaVuSansMono} % monospace font (for code)


% * --- Layout & Graphics --- * %
\RequirePackage{geometry}                   % page layout
\RequirePackage{layout}                     % Gives the ability to use \layout to give the page geometry       
\RequirePackage{listings}                   % code listings
\RequirePackage{etoolbox}                   % fixing list of listings spacing, as well as enviroments for example, eq, etc
\RequirePackage{enumitem}                   % customising list appearance
\RequirePackage{graphicx}                   % including figures
\RequirePackage{emptypage}                  % empty pages should be blank
% \RequirePackage{microtype}
\RequirePackage{emoji}

% * --- Math --- * %
%\usepackage{ bbold }  %\mathbb{1}
%\usepackage{ dsfont }  % \mathds{1}

\RequirePackage{bm}  % Has troubles with defining to many symbols
\let\boldsymbol\undefined
\let\heavysymbol\undefined

\RequirePackage{amsmath}                    % advanced math typesetting
\RequirePackage{amssymb}
\RequirePackage{amsthm}                     % theorem environments
\RequirePackage[                            % figures with captions
    %margin=5mm,
    margin=\parindent,
]{caption}


%* Del 2 av caption setup
\captionsetup{
    % There are three font options which affects different parts of the caption: 
    % 1. One affecting the whole caption (font), 
    % 2. one which only affects the caption label and separator (labelfont) 
    % 3. and at least one which only affects the caption text (textfont). 
	format=plain, 	% hang, plain
    font={small, sf},  % bf, it, up
    % font={small, sf, sansmath},
	% labelfont={sf,up, bf}, 
    labelfont={up, bf},
    labelformat=simple,	 % default, empty, simple, brace, parens
	labelsep=colon,	 % none, colon, period, space, quad, newline, endash
	%textfont={rm,sansmath},
	%textfont={rm, up}, 
    textformat=simple,  % empty, simple, period
    justification=justified,  % text alignment: justified, centering, centerlast, centerfirst, raggedright, raggedleft
	skip=5mm,  % spacing between captions and content of the environment
    %	singlelinecheck=false  % set automatic text centering on/off 
}

\RequirePackage[                           % and subfigures with captions within figures
    font=small,
    labelfont=bf,
    margin=\parindent
]{subcaption}  % enables depiction of several images amongst each other (\subcaptionbox)

\usepackage{placeins}  % Control float placement with /FloatBarrier


% * --- Bibliography --- * %
\RequirePackage{babel}                     % language specifics
\usepackage[english=british]{csquotes}     % recommended for biblatex
\RequirePackage[
    backend=biber,
    style=alphabetic,
    maxbibnames=99,
    minbibnames=3,
    maxcitenames=2,
    mincitenames=1,
    % citestyle=numeric-comp,               % 
    sorting=anyt                             % none -> citation order / anyt -> label, name, year, volume, title / nyt -> name, year, title
    % dashed=false
]{biblatex}                                 % for bibliography
\RequirePackage{booktabs}                   % better formatting of tables
\RequirePackage[acronym]{glossaries}        % create a glossary and acronym list

% Hyperrref has \autoref, instead we opt to use \cref from cleverref 
\usepackage[
    colorlinks=true,  % Toggles all references colours on or off, or set all colours to black
    urlcolor=RoyalBlue,
    citecolor=Green,
    linkcolor=purple
]{hyperref}     % hyperref is for interactive cross references

% Automatic cross references for theorems, lemmas, chapters
%! capitalization option in language options above
\ifcapitalize
    \RequirePackage[capitalize, noabbrev, nameinlink]{cleveref} 
\else
    \RequirePackage[noabbrev, nameinlink]{cleveref}
\fi


% * --- Tikz & Plots --- * %
\RequirePackage{pgfplots}
\RequirePackage{tikz}
\RequirePackage{tikz-cd}



% * CUSTOMISATION
% pgf customs
\pgfplotsset{compat=1.15}

% Tikz customs
\usetikzlibrary{graphs}
\usetikzlibrary{arrows}


% * --- Geometry & Spacing --- * %
\frenchspacing
\setlength{\parindent}{0pt}
\setlength{\parskip}{1em}
% Geometry for changing the "binding offset" (atleast an attempt at it)
\ifPRINTING
    \geometry{left=2.5cm, right=2.5cm, top=4cm, bottom=4.5cm}  %! Dont think this geometry thing works...
\else
    \geometry{left=2.5cm, right=2.5cm, top=4cm, bottom=4.5cm}
\fi


% * --- Typesetting --- * %
% Roman page numbers from the beginning of the document
\pagenumbering{roman}
\setcounter{page}{5}  % Counter set to 5 since NTNU adds 4 pages in front

% Switch to Arabic page numbering at the beginning of the first numbered chapter
\newif\iffirstchapter
\firstchaptertrue
\let\std@chapter\@chapter
\def\@chapter{
    \iffirstchapter
        \pagenumbering{arabic}
        \firstchapterfalse
    \fi
    \std@chapter
}

% Add unnumbered chapters (abstract, preface, etc) to table of contents and headings
\let\std@schapter\@schapter
\def\@schapter#1{
    \std@schapter{#1}
    \addcontentsline{toc}{chapter}{#1}
    \def\ch@ptermark{#1}
}

% Dotted line and tighter vertical spacing for chapters in the table of contents
\def\l@chapter#1#2{\@dottedtocline{1}{0em}{1.5em}{\bf #1}{\bf #2}}


% Support for included papers (for compiled PhD theses)
\newcounter{paper}
\setcounter{paper}{0}
\def\thepaper{\Roman{paper}}
\newenvironment{paper}[2]
{
    \refstepcounter{paper}
    \def\include@papername{#1}
    \chapter*{\papername~\thepaper}
    \label[paper]{#2}
}{
    \cleardoublepage
    \includepdf[pages=-]{\include@papername}
}


% Allow for two versions of title and authors – full and short
\def\title#1{\def\@title{#1}\def\@shorttitle{#1}}
\def\shorttitle#1{\def\@shorttitle{#1}}
\def\author#1{\def\@author{#1}\def\@shortauthor{#1}}
\def\shortauthor#1{\def\@shortauthor{#1}}


% Headers and footers
\ifPRINTING  % Two side, both odd and even pages
    \def\ps@ntnuheadings{
        \let\@evenfoot\@empty
        \let\@oddfoot\@empty
        \def\@oddhead{\small\textit{\rightmark}\hfil\thepage}  % \rightmark is the current section name
        \def\@evenhead{\small\thepage\hfil\textit{\leftmark}}  % \leftmark is the current chapter name
    }
\else  % Single page, only "odd pages"
    \def\ps@ntnuheadings{
        \let\@oddfoot\@empty
        \def\@oddhead{\small\textit{\leftmark}\hfil\thepage}
    }
\fi
\pagestyle{ntnuheadings}
% Note that \leftmark and \rightmark convert the names to uppercase, whichever was the formatting of the text. 
% If you want them to print the actual name of the chapter without converting it to uppercase use the following command:
\renewcommand{\chaptermark}[1]{ \markboth{\chaptername\ \thechapter.\ #1}{} } 
\renewcommand{\sectionmark}[1]{ \markright{\thesection.\ #1}{} }



% Itemize and enumerate: tighter and with other symbols
\setlist[enumerate]{itemsep=0mm, topsep=3pt, partopsep=0mm, parsep=0mm}
\setlist[enumerate,1]{label=\arabic*., ref=\arabic*}
\setlist[enumerate,2]{label=\alph*., ref=\alph*}
\setlist[enumerate,3]{label=\roman*., ref=\roman*}
\setlist[itemize]{itemsep=0mm, topsep=3pt, partopsep=0mm, parsep=0mm}
\setlist[itemize,1]{label=$\bullet$}
\setlist[itemize,2]{label=$\circ$}
\setlist[itemize,3]{label=$-$}



% Make \fullcite show all authors irrespectively of maxcitenames
\preto\fullcite{\AtNextCite{\defcounter{maxnames}{99}}}



% Colour palette
\definecolor{thesisblue}{rgb}{.15, .15, .6}
\definecolor{thesisred}{rgb}{.4, .05, .15}
\definecolor{thesisgreen}{rgb}{.2, .3, .2}


% * --- Theorems and definitions --- * %
% Numbered enviroments: \newtheorem{environment name}{displayed name}
% Unnumbered enviroments:  \newtheorem*{environment name}{displayed name}
% The link for linking with sections, subsections, chapters etc. : \newtheorem{environment name}{displayed name}[link]
% Remark. The position of the link lable matters depending on the level wanted (i.e Lemma 2.4 or Lemma 2.4.3)
%  The three different Theorem styles:
% - plain: The default with plain heading, italicised text
% - definition: plain heading, plain text
% - remark: italicised heading, plain text

% All enviroments using the plain style
\theoremstyle{plain}
\newtheorem{theorem}{Theorem}[chapter]  % [section] for alternative labeling
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{conjecture}[theorem]{Conjecture}


% All enviroments using the definition style
\theoremstyle{definition}
\newtheorem{definition}[theorem]{Definition}
% Close the enviroment with its own qed sumbol
\AtBeginEnvironment{definition}{\pushQED{\qed}\renewcommand{\qedsymbol}{$\diamondsuit$}}
\AtEndEnvironment{definition}{\popQED\enddefinition}


% All enviroments using the remark style
\theoremstyle{remark}
\newtheorem{remark}[theorem]{Remark}
\newtheorem{construction}[theorem]{Construction}
\newtheorem{observation}[theorem]{Observation}
\newtheorem{example}[theorem]{Example}
% Close the enviroment with its own qed sumbol
\AtBeginEnvironment{example}{\pushQED{\qed}\renewcommand{\qedsymbol}{$\diamondsuit$}}
\AtEndEnvironment{example}{\popQED\endexample}


%* Symbol for ending the proof enviroment 
\renewcommand\qedsymbol{$\square$}


%* For repeating/recalling a previous Theorem, Lemma, ...
% Remark! To use rep enviroment one must use the following command with doubble curly brackets: 
% \begin{repEnviromenttype}{TheLabel}
    % MyText, i.e copy/paste the identical content of the enviroment you want to repeat
% \end{repEnviromenttype}

% Ex:
%\begin{reptheorem}{thrm:MyTheoremLabel}
    %TheContents of the thrm 
%\end{reptheorem}

%\begin{replemma}{lem:MyLemmaLabel}
    %The Contents of the lemma
%\end{replemma}

% The code implementation
\makeatletter
\newcommand{\newreptheorem}[2]{
    \newtheorem*{rep@#1}{\rep@title}
    \newenvironment{rep#1}[1]{
        \def\rep@title{#2 \ref*{##1}}
        \begin{rep@#1}
        }
    {\end{rep@#1}}
}
\makeatother

% Rep enviroments currently supported, i.e the enviroments we have made above using \newtheorem command
\theoremstyle{plain}  % Remember to chose/check the style before making a new rep enviroment!
\newreptheorem{theorem}{Theorem}
\newreptheorem{lemma}{Lemma}
\newreptheorem{proposition}{Proposition}
\newreptheorem{corollary}{Corollary}
\newreptheorem{conjecture}{Conjecture}

\theoremstyle{definition}  % Remember to chose/check the style before making a new rep enviroment!
\newreptheorem{definition}{Definition}

\theoremstyle{remark}  % Remember to chose/check the style before making a new rep enviroment!
\newreptheorem{remark}{Remark}
\newreptheorem{construction}{Construction}
\newreptheorem{observation}{Observation}
\newreptheorem{example}{Example}
%*––––