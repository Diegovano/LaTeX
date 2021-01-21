\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{cours}[2021/20/01]

\LoadClass[12pt, a4paper, leqno, notitlepage, draft]{report}

\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage[french]{babel}
\RequirePackage[T1]{fontenc}
\RequirePackage{lmodern}
\RequirePackage[upright]{fourier}
\RequirePackage{caption}
\RequirePackage{fancyhdr}
\RequirePackage{ulem}
\RequirePackage{titlesec}
\RequirePackage{changepage}
\RequirePackage{graphicx}

\setcounter{secnumdepth}{4}

\renewcommand{\ULdepth}{4pt}

\renewcommand{\maketitle}[1]{\raggedright
    \setcounter{chapter}{#1}

    {\large \bfseries Chapitre \Roman{chapter}} \\[4ex]
    \setlength{\baselineskip}{20pt}
    {\Large \bfseries {\uline{\@title}}} \\[4ex]

    \setlength{\parskip}{0.5em}
    \setlength{\baselineskip}{17pt}
}

\titleformat{\section}
    {\large\normalfont\scshape}{\Roman{section}}{1em}{\uline}

\titleformat{\subsection}
    {\normalsize\normalfont\scshape}{\Roman{section}.\arabic{subsection}}{1em}{\uline}

\titleformat{\subsubsection}
    {\normalsize\normalfont\scshape}{\Roman{section}.\arabic{subsection}.\alph{subsubsection}}{1em}{\uline}

\titleformat{\paragraph}
    {\normalsize\normalfont\scshape}{\Roman{section}.\arabic{subsection}.\alph{subsubsection}.\roman{paragraph}}{1em}{\uline}

\newenvironment{Gpartie}[1]
    {\section{#1}\begin{adjustwidth}{1em}{0pt}}
    {\end{adjustwidth}}

\newenvironment{Spartie}[1]
    {\subsection{#1}\begin{adjustwidth}{1em}{0pt}}
    {\end{adjustwidth}}

\newenvironment{SSpartie}[1]
    {\subsubsection{#1}\begin{adjustwidth}{1em}{0pt}}
    {\end{adjustwidth}}

\newenvironment{SSSpartie}[1]
    {\paragraph{#1}\begin{adjustwidth}{1em}{0pt}}
    {\end{adjustwidth}}

\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\today}
\fancyhead[R]{Spé Mathématiques T\textsuperscript{le}}
\fancyfoot[C]{\thepage}

\setlength{\headheight}{15pt}