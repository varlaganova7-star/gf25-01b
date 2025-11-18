\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ou}
\LoadClass[14pt]{extarticle}

\RequirePackage{setspace}
\linespread{1.3} 
\usepackage{lipsum}
\usepackage[a4paper, left=30mm, right=10mm, top=20mm, bottom=20mm]{geometry}
\usepackage[hidelinks]{hyperref}
\usepackage{soul}
\soulregister\textbf{1}
\soulregister\bfseries{1}
\soulregister\emph{1}
\setul{0.8ex}{0.4pt}
\usepackage{iftex}
\usepackage{textcase}

\ifXeTeX
    \usepackage{fontspec}
    \usepackage{polyglossia}
    \setdefaultlanguage{russian}
    \setmainfont[
        BoldFont = {Times New Roman Bold},
        ItalicFont = {Times New Roman Italic},
        BoldItalicFont = {Times New Roman Bold Italic}
    ]{Times New Roman}
    \newfontfamily\cyrillicfont{Times New Roman}
    \newfontfamily\cyrillicfontsf{Times New Roman}
    \newfontfamily\cyrillicfonttt{Courier New}
    \setmonofont{Courier New}
\else
    \ifLuaTeX
    \usepackage{fontspec}
    \usepackage{polyglossia}
    \setdefaultlanguage{russian}
    \setmainfont[
        BoldFont = {Times New Roman Bold},
        ItalicFont = {Times New Roman Italic},
        BoldItalicFont = {Times New Roman Bold Italic}
    ]{Times New Roman}
    \newfontfamily\cyrillicfont{Times New Roman}
    \newfontfamily\cyrillicfontsf{Times New Roman}
    \newfontfamily\cyrillicfonttt{Courier New} % моноширинный кириллический
    \setmonofont{Courier New}                  % основной моноширинный
    \else
        \usepackage[T2A]{fontenc}
        \usepackage[utf8]{inputenc}
        \usepackage[russian]{babel}
        \usepackage{newtxtext}
        \usepackage{newtxmath}
    \fi
\fi

\usepackage{fancyhdr}
\usepackage{enumitem}
\usepackage{indentfirst}
\usepackage{titlesec}

\titleformat{\section}
  {\normalfont\bfseries\centering\fontsize{14}{12}\selectfont}
  {\thesection}{1em}{\MakeTextUppercase}

\titleformat{\subsection}
  {\normalfont\bfseries\centering\fontsize{14}{12}\selectfont}
  {\thesubsection}{1em}{}

\titlespacing*{\section}{0pt}{12pt}{12pt}
\titlespacing*{\subsection}{0pt}{12pt}{12pt}

\setlist[itemize]{left=12.5mm,label=\textbullet}
\setlist[enumerate]{left=12.5mm}
\setlength{\parindent}{12.5mm}

\pagestyle{fancy}
\fancyhf{}
\fancyfoot[C]{\fontsize{12}{12}\selectfont\thepage}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

\newcommand{\sixteen}[1]{{\fontsize{16}{24}\selectfont #1}}

\newcommand{\FGAVO}{
  \parbox{\linewidth}{
    \centering
    \setstretch{1}
    Министерство науки и высшего образования РФ\\
    Федеральное государственное автономное\\
    образовательное учреждение высшего образования\\
    \textbf{«СИБИРСКИЙ ФЕДЕРАЛЬНЫЙ УНИВЕРСИТЕТ»}\\
    Гуманитарный институт\\
    Кафедра информационных технологий\\
    в креативных и культурных индустриях\\
    \setstretch{2}
  }
}
\newcommand{\instructor}{Преподаватель}
\newcommand{\students}{Студенты}
\newcommand{\city}{Красноярск 2025}

\newenvironment{singlespacingtitle}{\begin{spacing}{1}}{\end{spacing}}

\newcommand{\maketitleou}{
    \begin{singlespacingtitle}
    \begin{center}
        \city
    \end{center}
    \end{singlespacingtitle}
    \newpage
}

\renewcommand{\contentsname}{СОДЕРЖАНИЕ}
\makeatletter
\renewcommand{\l@section}[2]{
  \ifnum \c@tocdepth >\z@
    \addpenalty{\@secpenalty}
    \vskip 0.5em \@plus\p@
    \setlength\@tempdima{1.5em}
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