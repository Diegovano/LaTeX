\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{coursbook}[2021/27/05]

\LoadClass[ 12pt,
            % draft,
            % overfullrule,
            a4paper, 
            titlepage=firstiscover, 
            toc=chapterentrywithdots,
            open=left,
            chapterprefix]{scrbook}

% \RequirePackage{showframe}
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{array}
\RequirePackage[french]{babel}
\DecimalMathComma
\RequirePackage{lmodern}
\RequirePackage[T1]{fontenc}
\RequirePackage[upright]{fourier}
\RequirePackage{caption}
\RequirePackage[plainheadsepline, automark]{scrlayer-scrpage}
\RequirePackage{scrhack}
\RequirePackage[normalem]{ulem}
\RequirePackage{eso-pic}
\RequirePackage{changepage}
\RequirePackage{graphicx}
\RequirePackage{booktabs}
\RequirePackage{multirow}
\RequirePackage[l2tabu, orthodox]{nag}
\RequirePackage[babel=true, kerning=true]{microtype}
\RequirePackage{mathtools}
\RequirePackage{diagbox}
\RequirePackage[shortlabels]{enumitem}
\RequirePackage{tikz}
\usetikzlibrary{intersections, arrows, arrows.meta, patterns, quotes, angles}
\RequirePackage{pgfplots}
\usepgfplotslibrary{fillbetween}
\pgfplotsset{compat=1.17}
\RequirePackage{mathrsfs}
\RequirePackage{float}
\RequirePackage{tkz-tab}
\DecimalMathComma

\setcounter{tocdepth}{\sectiontocdepth}

\setlength{\parskip}{0.5\baselineskip}
\setlength{\baselineskip}{17pt}

\def\frenchtablename{Tableau}

\makeatletter
\g@addto@macro\@floatboxreset\centering
\makeatother

\renewcommand*{\chapterformat}{\chaptername~\thechapter}

\definecolor{qqwuqq}{rgb}{0,0.4,0}

\pgfplotsset{
    every axis/.style={
        xticklabel style = {fill=white},
        yticklabel style = {fill=white},
        axis equal image,
        axis lines=center,
        axis line style=thick,
        grid=major,
        xlabel=$x$,
        ylabel=$y$,
    }
}

\tikzset{
    dot/.style={
        draw=black,
        fill=darkgray,
        circle,
        minimum size=2pt,
        inner sep=0pt,
        solid,
    }
}

\newcommand*\circled[1]{\tikz[baseline=(char.base)]{
            \node[shape=circle,draw,inner sep=1pt] (char) {#1};}}

\newcommand*\nowtitle{}

\RedeclareSectionCommand[tocnumwidth=2em]{chapter}
\RedeclareSectionCommand[tocindent=2em]{section}
\RedeclareSectionCommand[tocbeforeskip=1em plus 3pt]{chapter}
\makeatletter
\renewcommand{\@pnumwidth}{1.75em}
\makeatother

\let\oldchaptermark=\chaptermark
\renewcommand*\chaptermark[1]{%
  \renewcommand*\nowtitle{#1}%
  \oldchaptermark{#1}}

\pagestyle{scrheadings}
\ihead{\chaptername~\thechapter}
\ohead{\nowtitle}
%\automark{chapter}

\newcolumntype{M}{>{\centering\arraybackslash}{m}}
\newcolumntype{C}{>{\centering\arraybackslash}{c}}

\newcommand{\me}{\mathrm{e}} % exp
\newcommand{\Pde}{\mathrm{P}} % P de ... P(X=5)
\newcommand{\dt}{\,\mathrm{d}\hspace*{-0.05em}t}
\newcommand{\dx}{\,\mathrm{d}\hspace*{-0.05em}x}

\let\oldgeq\geq
\let\oldleq\leq

\let\geq\geqslant
\let\leq\leqslant

\setcounter{secnumdepth}{5}

\setlength{\parindent}{0pt}
\def\arraystretch{1.5}

\addtokomafont{disposition}{\rmfamily}

\setkomafont{pagehead}{\normalfont}
\setkomafont{pagefoot}{\normalfont}

\setkomafont{chapter}{\normalfont\Huge\bfseries}
\renewcommand*{\thechapter}{\arabic{chapter}}

\setkomafont{title}{\normalfont\huge\bfseries}

\RedeclareSectionCommand[
    beforeskip=0pt,
    afterskip=2\baselineskip
]{chapter}

\setkomafont{section}{\large\normalfont\scshape\uline}
\renewcommand*{\thesection}{\Roman{section}}
\RedeclareSectionCommand[
    afterskip=.5\baselineskip
]{section}

\setkomafont{subsection}{\normalsize\normalfont\scshape\uline}
% \renewcommand*{\thesubsection}{\Roman{section}.\Alph{subsection}}
\renewcommand*{\thesubsection}{\Alph{subsection}}
\RedeclareSectionCommand[
    beforeskip=\baselineskip,
    afterskip=.5\baselineskip
]{subsection}

\setkomafont{subsubsection}{\normalsize\normalfont\scshape\uline}
% \renewcommand*{\thesubsubsection}{\Roman{section}.\Alph{subsection}.\arabic{subsubsection}}
\renewcommand*{\thesubsubsection}{\arabic{subsubsection}}
\RedeclareSectionCommand[
    beforeskip=.5\baselineskip,
    afterskip=.5\baselineskip
]{subsubsection}

\setkomafont{paragraph}{\normalsize\normalfont\scshape\uline}
% \renewcommand*{\theparagraph}{\Roman{section}.\Alph{subsection}.\arabic{subsubsection}.\arabic{paragraph}}
\renewcommand*{\theparagraph}{\alph{paragraph}}
\RedeclareSectionCommand[
    beforeskip=.5\baselineskip,
    afterskip=.5\baselineskip
]{paragraph}

\setkomafont{subparagraph}{\normalsize\normalfont\scshape\uline}
% \renewcommand*{\thesubparagraph}{\Roman{section}.\Alph{subsection}.\arabic{subsubsection}.\arabic{paragraph}.\arabic{subparagraph}}
\renewcommand*{\thesubparagraph}{\arabic{subparagraph}}
\RedeclareSectionCommand[
    beforeskip=0pt,
    afterskip=.5\baselineskip,
    indent=0pt
]{subparagraph}

% \makeatletter
% \renewcommand\subparagraph{%
%     \@startsection {subparagraph}{5}{\z@ }{3.25ex \@plus 1ex
%     \@minus .2ex}{-1em}{\normalsize\normalfont\scshape\uline}}%
% \makeatother


\renewcommand{\ULdepth}{4pt}

% \makeatletter
% \renewcommand{\maketitle}[1]{\raggedright
%     \setcounter{chapter}{#1}
%     \chapter*{Chapitre \Roman{chapter}}

%     \setlength{\baselineskip}{20pt}
%     {\LARGE \bfseries {\uline{\@title}}} \\[4ex]

%     \setlength{\parskip}{0.5em}
%     \setlength{\baselineskip}{17pt}
% }
% \makeatother

\newenvironment{Gpartie}[1]
    {\section{#1}
        \nopagebreak\begin{adjustwidth}{2em}{0pt}
    \nointerlineskip\leavevmode\hspace*{-0.5ex}}
    {
        \end{adjustwidth}\pagebreak[3]
    }

\newenvironment{Spartie}[1]
    {\subsection{#1}
        \nopagebreak\begin{adjustwidth}{2em}{0pt}
    \nointerlineskip\leavevmode\hspace*{-0.5ex}}
    {
        \end{adjustwidth}\pagebreak[2]
    }

\newenvironment{SSpartie}[1]
    {\subsubsection{#1}
        \nopagebreak\begin{adjustwidth}{2em}{0pt}
    \nointerlineskip\leavevmode\hspace*{-0.5ex}}
    {
        \end{adjustwidth}\pagebreak[2]
    }

\newenvironment{SSSpartie}[1]
    {\paragraph{#1}
        \nopagebreak\begin{adjustwidth}{2em}{0pt}
    \nointerlineskip\leavevmode\hspace*{-0.5ex}}
    {
        \end{adjustwidth}\pagebreak[1]
    }

\newenvironment{SSSSpartie}[1]
    {\subparagraph{#1}
        \nopagebreak\begin{adjustwidth}{2em}{0pt}
    \nointerlineskip\leavevmode\hspace*{-0.5ex}}
    {
        \end{adjustwidth}\pagebreak[1]
    }

\makeatletter
% \ihead*{Chapitre \Roman{chapter} : \@chapter}
% \ohead*{Mathématiques T\textsuperscript{le}}
% \cfoot*{\thepage}

%\renewcommand*{\chaptermarkformat}{\chapter}

%\clearpairofpagestyles
%\ohead{\leftmark}
%\ihead{Chapitre \arabic{chapter}}
% \ohead{\Ifstr{\leftmark}{\rightmark}{}{\rightmark}}
% \cfoot*{\pagemark}
\makeatother

\setlength{\headheight}{15pt}

\let\oldsqrt\sqrt

\def\sqrt{\mathpalette\DHLhksqrt}
\def\DHLhksqrt#1#2{%
\setbox0=\hbox{$#1\oldsqrt{#2\,}$}\dimen0=\ht0
\advance\dimen0-0.2\ht0
\setbox2=\hbox{\vrule height\ht0 depth -\dimen0}%
{\box0\lower0.63pt\box2}}