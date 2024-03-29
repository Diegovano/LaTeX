\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{cours}[2021/27/05]

\LoadClass[12pt, a4paper, leqno, notitlepage]{scrreprt}

\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{array}
\RequirePackage[french]{babel}
\DecimalMathComma
\RequirePackage{lmodern}
\RequirePackage[T1]{fontenc}
\RequirePackage[upright]{fourier}
% \RequirePackage{newpxtext}
% \RequirePackage{newpxmath}
\RequirePackage{caption}
\RequirePackage[automark]{scrlayer-scrpage}
\RequirePackage[normalem]{ulem}
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
\pgfplotsset{compat=1.18}
\RequirePackage{mathrsfs}
\RequirePackage{float}
\RequirePackage{tkz-tab}
\DecimalMathComma

\def\frenchtablename{Tableau}

\makeatletter
\g@addto@macro\@floatboxreset\centering
\makeatother

\definecolor{qqwuqq}{rgb}{0,0.4,0}

\pgfplotsset{
    every axis/.style={
        xticklabel style = {fill=white},
        yticklabel style = {fill=white},
        axis line style=thick,
        axis equal image,
        axis lines=center,
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

\setkomafont{pagehead}{\normalfont}
\setkomafont{pagefoot}{\normalfont}

\setkomafont{chapter}{\huge\normalfont\bfseries}
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

\makeatletter
\renewcommand{\maketitle}[1]{\raggedright
    \setcounter{chapter}{#1}
    \chapter*{Chapitre \arabic{chapter}}

    \setlength{\baselineskip}{20pt}
    {\LARGE \bfseries {{\@title}}} \\[4ex]

    \setlength{\parskip}{0.5em}
    \setlength{\baselineskip}{17pt}
}
\makeatother

\newenvironment{Gpartie}[1]
    {\section{#1}
        \begin{adjustwidth}{2em}{0pt}
    \nointerlineskip\leavevmode\!}
    {
        \end{adjustwidth}
    }

\newenvironment{Spartie}[1]
    {\subsection{#1}
        \begin{adjustwidth}{2em}{0pt}
    \nointerlineskip\leavevmode\!}
    {
        \end{adjustwidth}
    }

\newenvironment{SSpartie}[1]
    {\subsubsection{#1}
        \begin{adjustwidth}{2em}{0pt}
    \nointerlineskip\leavevmode\!}
    {
        \end{adjustwidth}
    }

\newenvironment{SSSpartie}[1]
    {\paragraph{#1}
        \begin{adjustwidth}{2em}{0pt}
    \nointerlineskip\leavevmode\!}
    {
        \end{adjustwidth}
    }

\newenvironment{SSSSpartie}[1]
    {\subparagraph{#1}
        \begin{adjustwidth}{2em}{0pt}
    \nointerlineskip\leavevmode\!}
    {
        \end{adjustwidth}
    }

% \makeatletter
% \ihead*{Chapitre \Roman{chapter} : \@title}
% \ohead*{Spé Mathématiques T\textsuperscript{le}}
% \cfoot*{\thepage}
% \makeatother

\makeatletter
\pagestyle{scrheadings}
\ohead{\chaptername~\thechapter}
\ihead{\@title}
\makeatother

\setlength{\headheight}{15pt}

\let\oldsqrt\sqrt

\def\sqrt{\mathpalette\DHLhksqrt}
\def\DHLhksqrt#1#2{%
\setbox0=\hbox{$#1\oldsqrt{#2\,}$}\dimen0=\ht0
\advance\dimen0-0.2\ht0
\setbox2=\hbox{\vrule height\ht0 depth -\dimen0}%
{\box0\lower0.63pt\box2}}