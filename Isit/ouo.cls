\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ou}
\LoadClass[14pt]{extarticle}
\usepackage{enumitem}
\usepackage[all]{nowidow}
\AtBeginDocument{\onehalfspacing}
\usepackage{microtype}
\usepackage{multirow}
\usepackage{lipsum}
\usepackage[a4paper, left=30mm, right=10mm, top=20mm, bottom=20mm]{geometry}
\usepackage{fancyvrb}
\usepackage{listings}
\usepackage{newtxtext,newtxmath}
\usepackage{fancyvrb}
\usepackage{url}
\usepackage[hidelinks]{hyperref}
\urlstyle{same}
\Urlmuskip=0mu plus 2mu
\def\UrlBreaks{\do\/\do-\do.\do\_\do?\do=\do&\do:\do\%\do##}
\usepackage{soul}
\usepackage{tabularx}
\usepackage{setspace}
\usepackage{booktabs}
\soulregister\textbf{1}
\soulregister\bfseries{1}
\soulregister\emph{1}
\setul{0.8ex}{0.4pt}
\usepackage{iftex}
\usepackage{textcase}

\ifXeTeX
    \usepackage{fontspec}
    \usepackage{polyglossia}
    \defaultfontfeatures{Ligatures=TeX}
    \setdefaultlanguage{russian}
    \setmainfont{Times New Roman}
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
    \newfontfamily\cyrillicfonttt{Courier New}
    \setmonofont{Courier New}
    \else
        \usepackage[T2A]{fontenc}
        \usepackage[utf8]{inputenc}
        \usepackage[russian]{babel}
        \usepackage{newtxtext}
        \usepackage{newtxmath}
    \fi
\fi
\hyphenpenalty=10000
\exhyphenpenalty=10000
\emergencystretch=3em
\usepackage{fancyhdr}
\usepackage{indentfirst}
\usepackage{titlesec}

\titleformat{\section}
  {\normalfont\bfseries\centering\fontsize{14}{12}\selectfont}
  {\thesection}{0.25em}{\MakeTextUppercase}

\titleformat{\subsection}
  {\normalfont\bfseries\centering\fontsize{14}{12}\selectfont}
  {\thesubsection}{0.25em}{}

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
  }
}
\newcommand{\instructor}{Руководитель}
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
    \vskip 0.25em \@plus\p@%
    \setlength\@tempdima{1em}
    \begingroup
      \parindent 0em \rightskip 0pt
      \parfillskip 0pt
      \leavevmode
      #1\nobreak
      \leaders\hbox to 0.4em{\hss.\hss}\hfill
      #2\par
    \endgroup
  \fi
}

\renewcommand{\l@subsection}[2]{
  \ifnum \c@tocdepth >\@ne
    \addpenalty{\@secpenalty}
    \vskip 0.25em \@plus\p@
    \setlength\@tempdima{2em}
    \begingroup
      \parindent 1em \rightskip 0pt
      \parfillskip 0pt
      \leavevmode
      #1\nobreak
      \leaders\hbox to 0.4em{\hss.\hss}\hfill
      #2\par
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
\makeatletter \renewcommand{\@biblabel}[1]{#1.} \makeatother \addto\captionsrussian{\renewcommand{\refname}{Список использованных источников}} \makeatletter \renewenvironment{thebibliography}[1] {\section*{\refname} \list{\@biblabel{\@arabic\c@enumiv}} {\usecounter{enumiv} \setlength{\labelsep}{0.25em} \setlength{\labelwidth}{-1.25cm} \setlength{\leftmargin}{0cm} \setlength{\itemindent}{0pt} \setlength{\listparindent}{0cm} \setlength{\parsep}{0pt} } \sloppy } {\endlist} \makeatother
\endinput