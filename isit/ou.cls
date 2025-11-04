\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ou}[2025/11/05 My custom class]
\LoadClass[14pt]{extarticle}
\linespread{1.3}
\usepackage[a4paper, left=30mm, right=10mm, top=20mm, bottom=20mm]{geometry}
\usepackage[hidelinks]{hyperref}
\usepackage[normalem]{ulem}
\usepackage{iftex}

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
        \usepackage{tempora}
    \fi
\fi

\usepackage{fancyhdr}
\usepackage{enumitem}
\usepackage{indentfirst}
\usepackage{titlesec}

\titleformat{\section}
{\normalfont\bfseries\centering\large}
{\thesection.}{1em}{}
\titleformat{\subsection}
{\normalfont\bfseries}
{\thesubsection}{1em}{}
\titleformat{\subsubsection}
{\normalfont\itshape}
{\thesubsubsection}{1em}{}

\titlespacing*{\section}{0pt}{10mm}{6mm}
\titlespacing*{\subsection}{0pt}{6mm}{4mm}
\titlespacing*{\subsubsection}{0pt}{4mm}{2mm}

\setlist[itemize]{left=12.5mm,label=\textbullet}
\setlist[enumerate]{left=12.5mm}
\setlength{\parindent}{12.5mm}

\pagestyle{fancy}
\fancyhf{}
\fancyfoot[C]{\fontsize{14}{14}\selectfont\thepage}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

\newcommand{\university}{«СИБИРСКИЙ ФЕДЕРАЛЬНЫЙ УНИВЕРСИТЕТ»}
\newcommand{\institute}{Гуманитарный институт}
\newcommand{\department}{Кафедра информационных технологий в креативных и культурных индустриях}
\newcommand{\discipline}{Информационные системы и технологии}
\newcommand{\topic}{Технологии создания и обработки текстовых документов}
\newcommand{\group}{ГФ25-01Б}
\newcommand{\city}{Красноярск 2025}
