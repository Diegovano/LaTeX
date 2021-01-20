\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{cours}[2021/20/01]

\LoadClass[12pt, a4paper, leqno, notitlepage, draft]{report}

\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage[french]{babel}
\RequirePackage[T1]{fontenc}
\RequirePackage{lmodern}
\RequirePackage{caption}
\RequirePackage{fancyhdr}
\RequirePackage{ulem}
\RequirePackage{titlesec}
\RequirePackage{changepage}

\setcounter{secnumdepth}{3}

\renewcommand{\ULdepth}{4pt}

\renewcommand{\maketitle}[1]{\raggedright
    \setcounter{chapter}{#1}

    {\large \bfseries Chapitre \Roman{chapter}} \\[4ex]
    \setlength{\baselineskip}{20pt}
    {\Large \bfseries {\uline{\@title}}} \\[4ex]
}

\titleformat{\section}
    {\large\normalfont\scshape}{\Roman{section}}{1em}{\uline}

\titleformat{\subsection}
    {\normalsize\normalfont\scshape}{\Roman{section}.\arabic{subsection}}{1em}{\uline}

\titleformat{\subsubsection}
    {\normalsize\normalfont\scshape}{\Roman{section}.\arabic{subsection}.\alph{subsubsection}}{1em}{\uline}

\newenvironment{Gpartie}[1]
    {\section{#1}\begin{adjustwidth}{1em}{0pt}}
    {\end{adjustwidth}}

\newenvironment{Spartie}[1]
    {\subsection{#1}\begin{adjustwidth}{1em}{0pt}}
    {\end{adjustwidth}}

\newenvironment{SSpartie}[1]
    {\subsubsection{#1}\begin{adjustwidth}{1em}{0pt}}
    {\end{adjustwidth}}


\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\today}
\fancyhead[R]{Spé Mathématiques}
\fancyfoot[C]{\thepage}

\setlength{\headheight}{15pt}