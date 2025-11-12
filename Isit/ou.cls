\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ou}
\LoadClass[14pt]{extarticle}

\RequirePackage{setspace}
\linespread{1.3} 
\usepackage{lipsum}
\usepackage[a4paper, left=30mm, right=10mm, top=20mm, bottom=20mm]{geometry}
\usepackage[colorlinks=true, urlcolor=blue, hidelinks=false]{hyperref}
\usepackage[normalem]{ulem}
\usepackage{iftex}
\usepackage{textcase}

\ifXeTeX
    \usepackage{fontspec}
    \setmainfont[
        BoldFont = {Times New Roman Bold},
        ItalicFont = {Times New Roman Italic},
        BoldItalicFont = {Times New Roman Bold Italic}
    ]{Times New Roman}
\else
    \ifLuaTeX
        \usepackage{fontspec}
        \setmainfont[
            BoldFont = {Times New Roman Bold},
            ItalicFont = {Times New Roman Italic},
            BoldItalicFont = {Times New Roman Bold Italic}
        ]{Times New Roman}
    \else
        \usepackage[T2A]{fontenc}
        \usepackage[utf8]{inputenc}
        \usepackage[russian]{babel}
        \usepackage{newtxtext}
    \fi
\fi

\usepackage{fancyhdr}
\usepackage{enumitem}
\usepackage{indentfirst}
\usepackage{titlesec}

\titleformat{\section}
  {\normalfont\bfseries\centering\fontsize{16}{24}\selectfont}
  {\thesection}{1em}{\MakeTextUppercase}

\titleformat{\subsection}
  {\normalfont\bfseries\centering\fontsize{16}{24}\selectfont}
  {\thesubsection}{1em}{}

\titlespacing*{\section}{0pt}{10mm}{6mm}
\titlespacing*{\subsection}{0pt}{6mm}{4mm}

\setlist[itemize]{left=12.5mm,label=\textbullet}
\setlist[enumerate]{left=12.5mm}
\setlength{\parindent}{12.5mm}

\pagestyle{fancy}
\fancyhf{}
\fancyfoot[C]{\fontsize{14}{14}\selectfont\thepage}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

\newcommand{\sixteen}[1]{{\fontsize{16}{24}\selectfont #1}}

\newcommand{\minobrRF}{\sixteen{Министерство науки и высшего образования РФ}}
\newcommand{\FGAVO}{Федеральное государственное автономное\\образовательное учреждение высшего образования}
\newcommand{\university}{«СИБИРСКИЙ ФЕДЕРАЛЬНЫЙ УНИВЕРСИТЕТ»}
\newcommand{\institute}{Гуманитарный институт}
\newcommand{\department}{Кафедра информационных технологий\\в креативных и культурных индустриях}
\newcommand{\work}{РЕФЕРАТ}
\newcommand{\discipline}{Информационные системы и технологии}
\newcommand{\instructor}{Преподаватель}
\newcommand{\Nigmatullin}{И. Р. Нигматуллин}
\newcommand{\students}{Студенты}
\newcommand{\group}{ГФ25-01Б}
\newcommand{\city}{Красноярск 2025}

\newenvironment{singlespacingtitle}{\begin{spacing}{1}}{\end{spacing}}

\newcommand{\maketitleou}{
    \begin{singlespacingtitle}
    \begin{center}
        {\Large \university}\\[1em]
        {\large \institute}\\[0.5em]
        {\department}\\[2em]
        \textbf{\Large РЕФЕРАТ}\\[1em]
        по\\[0.5em]
        {\discipline}\\[2em]
        \group\\[2em]
        \Nigmatullin\\[2\baselineskip]
        \city
    \end{center}
    \end{singlespacingtitle}
    \newpage
}

\renewcommand{\contentsname}{{\sixteen СОДЕРЖАНИЕ}}

\makeatletter
\renewcommand{\l@section}[2]{%
  \ifnum \c@tocdepth >\z@
    \addpenalty{\@secpenalty}%
    \vskip 0.5em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode
      #1\nobreak\hfill \hb@xt@\@pnumwidth{\hss #2}\par
    \endgroup
  \fi
}
\makeatother

\let\oldtableofcontents\tableofcontents
\renewcommand{\tableofcontents}{
    \begin{singlespacingtitle}
        \oldtableofcontents
    \end{singlespacingtitle}
    \newpage
}

\AtBeginDocument{\onehalfspacing}
