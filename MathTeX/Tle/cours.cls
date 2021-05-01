\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{cours}[2021/20/01]

\LoadClass[12pt, a4paper, leqno, notitlepage, draft]{scrreprt}

\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage[french]{babel}
\RequirePackage{lmodern}
\RequirePackage[T1]{fontenc}
\RequirePackage[upright]{fourier}
\RequirePackage{caption}
\RequirePackage[headsepline, plainheadsepline, automark]{scrlayer-scrpage}
\RequirePackage{ulem}
\RequirePackage{changepage}
\RequirePackage{graphicx}
\RequirePackage[l2tabu, orthodox]{nag}
\RequirePackage{microtype}

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
\renewcommand*{\thesubsection}{\Roman{section}.\alph{subsection}}
\RedeclareSectionCommand[
    beforeskip=0pt,
    afterskip=.5\baselineskip
]{subsection}

\setkomafont{subsubsection}{\normalsize\normalfont\scshape\uline}
\renewcommand*{\thesubsubsection}{\Roman{section}.\alph{subsection}.\arabic{subsubsection}}
\RedeclareSectionCommand[
    beforeskip=0pt,
    afterskip=.5\baselineskip
]{subsubsection}

\setkomafont{paragraph}{\normalsize\normalfont\scshape\uline}
\renewcommand*{\theparagraph}{\Roman{section}.\alph{subsection}.\arabic{subsubsection}.\arabic{paragraph}}
\RedeclareSectionCommand[
    beforeskip=0pt,
    afterskip=.5\baselineskip
]{paragraph}

\setkomafont{subparagraph}{\normalsize\normalfont\scshape\uline}
\renewcommand*{\thesubparagraph}{\Roman{section}.\alph{subsection}.\arabic{subsubsection}.\arabic{paragraph}.\arabic{subparagraph}}
\RedeclareSectionCommand[
    beforeskip=0pt,
    afterskip=.5\baselineskip
]{subparagraph}

\renewcommand{\ULdepth}{4pt}

\renewcommand{\maketitle}[1]{\raggedright
    \setcounter{chapter}{#1}
    \chapter*{Chapitre \Roman{chapter}}

    \setlength{\baselineskip}{20pt}
    {\LARGE \bfseries {\uline{\@title}}} \\[4ex]

    \setlength{\parskip}{0.5em}
    \setlength{\baselineskip}{17pt}
}

\newenvironment{Gpartie}[1]
    {\section{#1}\begin{adjustwidth}{2em}{0pt}\nointerlineskip\leavevmode\!}
    {\end{adjustwidth}}

\newenvironment{Spartie}[1]
    {\subsection{#1}\begin{adjustwidth}{2em}{0pt}\nointerlineskip\leavevmode\!}
    {\end{adjustwidth}}

\newenvironment{SSpartie}[1]
    {\subsubsection{#1}\begin{adjustwidth}{2em}{0pt}\nointerlineskip\leavevmode\!}
    {\end{adjustwidth}}

\newenvironment{SSSpartie}[1]
    {\paragraph{#1}\begin{adjustwidth}{2em}{0pt}\nointerlineskip\leavevmode\!}
    {\end{adjustwidth}}

\newenvironment{SSSSpartie}[1]
    {\subparagraph{#1}\begin{adjustwidth}{2em}{0pt}\nointerlineskip\leavevmode\!}
    {\end{adjustwidth}}

\ihead*{\today}
\ohead*{Spé Mathématiques T\textsuperscript{le}}
\cfoot*{\thepage}

\setlength{\headheight}{15pt}

\let\oldsqrt\sqrt

\def\sqrt{\mathpalette\DHLhksqrt}
\def\DHLhksqrt#1#2{%
\setbox0=\hbox{$#1\oldsqrt{#2\,}$}\dimen0=\ht0
\advance\dimen0-0.2\ht0
\setbox2=\hbox{\vrule height\ht0 depth -\dimen0}%
{\box0\lower0.63pt\box2}}