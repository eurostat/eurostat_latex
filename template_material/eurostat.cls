\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{eurostat}[2020/02/27 An article template according to Eurostat styleguide]

\LoadClass[]{article}


%%%% Packages 
\RequirePackage[a4paper]{geometry}
\RequirePackage[cmyk,table,xcdraw]{xcolor}
\RequirePackage[explicit]{titlesec} % Required for the titles formating
\RequirePackage{fancyhdr} % require for header and footer
\RequirePackage{marvosym} % required for the symbols 
\RequirePackage{xparse} % required for unnumbered section names in header
\RequirePackage{graphicx} % Required for including pictures
\RequirePackage{caption} % Required for caption format
\RequirePackage{subcaption} % Required for caption in multi plots
\RequirePackage[hang,flushmargin]{footmisc} % Required for footnotes (kill the indentation)
\RequirePackage{pdflscape} % Required for landscape pages
\RequirePackage{multirow} % Required for tables
\RequirePackage{fontspec} %fonts
\RequirePackage{minted} %display code chunk
\RequirePackage{lipsum}% just to generate text for the example
\RequirePackage{tikz} % Required to draw 
\RequirePackage[many]{tcolorbox} % Required for boxes
\RequirePackage[titles]{tocloft} % Required for the table of contents
\RequirePackage{natbib} % Required for quotes style

\RequirePackage{multicol,multirow}
\RequirePackage{amsmath,amssymb,amsfonts}
\RequirePackage{mathrsfs}
\RequirePackage{amsthm}
\RequirePackage{rotating}
\RequirePackage{appendix}

%% General Packages Used
%\RequirePackage{ifpdf}
%\RequirePackage{url}
%\RequirePackage{soul}
%\RequirePackage{textcomp}%


%------------------------- Hyperrefs ------------------------

\usepackage{hyperref} % Required for hyperlinks
\hypersetup{
    colorlinks=true,
    urlcolor=blue,
    linkcolor=black
}
\renewcommand\UrlFont{\color{blue}\rmfamily} % url format

%------------------------- Margins ------------------------

\geometry{a4paper,
 left=30mm,
 right=30mm,
 top=35mm,
 bottom=25mm}
 
%------------------------- section depth ------------------------
\setcounter{secnumdepth}{5}

%------------------------- hyphenation ------------------------

% hyphenation reduction
\hyphenpenalty=1 %100000 

%---------- Colors independent from the theme ---------- 

\definecolor{gray30K}{cmyk}{0,0,0,0.30}
\definecolor{gray60K}{cmyk}{0,0,0,0.60}
\definecolor{gray65K}{cmyk}{0,0,0,0.65}
\definecolor{gray75K}{cmyk}{0,0,0,0.75}
\definecolor{gray100K}{cmyk}{0,0,0,1.00}

% tables lines colours
\setlength\arrayrulewidth{0.6pt}
\arrayrulecolor{gray30K}
\newcommand{\hlinesep}{\arrayrulecolor{gray100K}\hline\arrayrulecolor{gray30K}}



%---------- Colors Themes ---------- 

% Theme 1
\DeclareOption{Theme1}{
    \def \FooterLogoPath{template_material/PicturesFiles/logo_footer_Theme1.PNG}

    \definecolor{TH}{cmyk}{0.85,0.55,0.00,0.00}
    \definecolor{TH20p}{cmyk}{0.18,0.10,0.00,0.00}
    \definecolor{TH30p}{cmyk}{0.26,0.17,0.00,0.00}
}

\DeclareOption{Theme1rgb}{
    \def \FooterLogoPath{template_material/PicturesFiles/logo_footer_Theme1.PNG}

    \definecolor{TH}{cmyk}{0.61,0.39,0.00,0.29}
    \definecolor{TH20p}{cmyk}{0.12,0.08,0.00,0.06}
    \definecolor{TH30p}{cmyk}{0.18,0.12,0.00,0.09}
}


% Theme 2
\DeclareOption{Theme2}{
    \def \FooterLogoPath{template_material/PicturesFiles/logo_footer_Theme2.PNG}

    \definecolor{TH}{cmyk}{0.20,0.85,0.05,0.00}
    \definecolor{TH20p}{cmyk}{0.04,0.17,0.01,0.00}
    \definecolor{TH30p}{cmyk}{0.06,0.26,0.02,0.00}
}

% Theme 3
\DeclareOption{Theme3}{
    \def \FooterLogoPath{template_material/PicturesFiles/logo_footer_Theme3.PNG}

    \definecolor{TH}{cmyk}{0.00,0.40,1.00,0.00}
    \definecolor{TH20p}{cmyk}{0.00,0.08,0.20,0.00}
    \definecolor{TH30p}{cmyk}{0.00,0.12,0.30,0.00}
}

% Theme 4
\DeclareOption{Theme4}{
    \def \FooterLogoPath{template_material/PicturesFiles/logo_footer_Theme4.PNG}

    \definecolor{TH}{cmyk}{0.95,0.10,0.00,0.00}
    \definecolor{TH20p}{cmyk}{0.19,0.02,0.00,0.00}
    \definecolor{TH30p}{cmyk}{0.29,0.03,0.00,0.00}
}

% Theme 5
\DeclareOption{Theme5}{
    \def \FooterLogoPath{template_material/PicturesFiles/logo_footer_Theme5.PNG}

    \definecolor{TH}{cmyk}{0.65,0.00,1.00,0.05}
    \definecolor{TH20p}{cmyk}{0.13,0.00,0.20,0.03}
    \definecolor{TH30p}{cmyk}{0.20,0.00,0.30,0.05}
}

% Theme 6
\DeclareOption{Theme6}{
    \def \FooterLogoPath{template_material/PicturesFiles/logo_footer_Theme6.PNG}

    \definecolor{TH}{cmyk}{0.00,0.90,0.70,0.10}
    \definecolor{TH20p}{cmyk}{0.00,0.18,0.14,0.02}
    \definecolor{TH30p}{cmyk}{0.00,0.27,0.21,0.03}
}

% Theme 7
\DeclareOption{Theme7}{
    \def \FooterLogoPath{template_material/PicturesFiles/logo_footer_Theme7.PNG}

    \definecolor{TH}{cmyk}{0.20,0.00,1.00,0.15}
    \definecolor{TH20p}{cmyk}{0.04,0.00,0.20,0.05}
    \definecolor{TH30p}{cmyk}{0.06,0.00,0.30,0.08}
}

% Theme 8
\DeclareOption{Theme8}{
    \def \FooterLogoPath{template_material/PicturesFiles/logo_footer_Theme8.PNG}

    \definecolor{TH}{cmyk}{0.90,0.00,0.40,0.00}
    \definecolor{TH20p}{cmyk}{0.18,0.00,0.08,0.00}
    \definecolor{TH30p}{cmyk}{0.27,0.00,0.12,0.00}
}

% Theme 9
\DeclareOption{Theme9}{
    \def \FooterLogoPath{template_material/PicturesFiles/logo_footer_Theme9.PNG}

    \definecolor{TH}{cmyk}{0.00,0.75,1.00,0.00}
    \definecolor{TH20p}{cmyk}{0.00,0.15,0.20,0.00}
    \definecolor{TH30p}{cmyk}{0.00,0.23,0.30,0.00}
}

%---------- Fonts ---------- 
% Arial
%\setmainfont{Arial}

% Myriad Pro
\setmainfont{MyriadPro}[Path= template_material/FontsFiles/, Extension = .otf, 
    UprightFont = *-Regular,
    BoldFont = *-Bold ,
    ItalicFont = *-It ,
    BoldItalicFont = *-BoldIt ]

\fontsize{9.5pt}{10pt}\selectfont

%---------- Titles styles ---------- 
% sources
% http://tug.ctan.org/tex-archive/macros/latex/contrib/titlesec/titlesec.pdf
% https://borntocode.fr/latex-personnaliser-les-titres-chapter/

%%%% numbered titles %%%%

% H0 numbered section title format
\titleformat{\section}[display]
  {\clearpage \gdef\sectionlabel{} }
  {\gdef\sectionlabel{\thesection}}{5cm}
  {\begin{tikzpicture}[remember picture,overlay]
    \node[yshift=-80mm] at (current page.north west)
      {\begin{tikzpicture}[remember picture, overlay]
        % background color
        \fill[TH20p] (0,0) rectangle ++(\paperwidth,80mm);
        % section number
        \node[yshift=-88mm,xshift=105mm, inner sep=0pt,above left] at (current page.north west){\color{TH}\fontsize{130}{130}\selectfont\bf\sectionlabel};
        % section title
        \draw (current page.north west) ++ (112mm,-88mm) node[inner sep=0pt,above right,text width=127mm, align=left]{\setlength{\baselineskip}{15pt}\color{TH}\fontsize{28}{31}\selectfont\bf#1};
        % vertical ligne
        \draw (current page.north west) ++ (110mm,-38mm) node[name=abovedot]{};
        \draw (current page.north west) ++ (110mm,-100mm) node[name=botomedot]{};
        \draw[TH,very thick] (abovedot) -- (botomedot);
        % horizontal ligne
        \fill[TH] (0,0) rectangle ++(\paperwidth,-2.5mm);
        \end{tikzpicture}
      };
   \end{tikzpicture}
  }
  
% H1 numbered subsection title format
\titleformat{name=\subsection}{\fontsize{20pt}{18pt}\selectfont \bfseries}{\textcolor{TH}{\thesubsection}}{0.5em}{\hspace{0em}\textcolor{TH}{#1}\vspace{1em}}{}

% H2 numbered subsubsection title format
\titleformat{name=\subsubsection}{\fontsize{15pt}{10pt}\selectfont \bfseries}{{\thesubsubsection}}{0.5em}{\hspace{0em}{#1}\vspace{1.2em}}{}

% H3 numbered paragraph title format
\titleformat{name=\paragraph}{\fontsize{11pt}{10pt}\selectfont \bfseries}{\textcolor{TH}{\theparagraph}}{0.7em}{\hspace{0em}\textcolor{TH}{\MakeUppercase{#1}}\vspace{1.6em}}{}

% H4 numbered sub paragraph title format
\titleformat{name=\subparagraph}{\fontsize{11pt}{10pt}\selectfont \bfseries}{{\thesubparagraph}}{0.5em}{\hspace{0em}{#1}\vspace{1.6em}}{}

%%%% unnumbered titles %%%%

% H1 unnumbered section title format
\titleformat{name=\section,numberless}{\fontsize{20pt}{18pt}\selectfont \bfseries}{\textcolor{TH}}{0em}{\hspace{0em}\textcolor{TH}{#1}\vspace{1em}}{}

% H2 unnumbered subsection title format
\titleformat{name=\subsection,numberless}{\fontsize{15pt}{12pt}\selectfont \bfseries}{}{0em}{\hspace{0em}{#1}\vspace{1em}}{}

% H3 unnumbered subsubsection title format
\titleformat{name=\subsubsection,numberless}{\fontsize{11pt}{10pt}\selectfont \bfseries}{\textcolor{TH}}{0em}{\hspace{0em}\MakeUppercase{\textcolor{TH}{#1}}\vspace{1.6em}}{}

% H4 unnumbered paragraph title format
\titleformat{name=\paragraph,numberless}{\fontsize{11pt}{10pt}\selectfont \bfseries}{}{0em}{\hspace{0em}{#1}\vspace{1.6em}}{}

% H5 unnumbered sub paragraph title format
\titleformat{name=\subparagraph,numberless}{\fontsize{9.5pt}{10pt}\selectfont \bfseries}{\textcolor{TH}}{0em}{\hspace{0em}{\textcolor{TH}{#1}}\vspace{1.8em}}{}

% H6 unnumbered sub sub paragraph title format
\newcommand{\subsubparagraph}[1]{{\fontsize{9.5pt}{10pt}\selectfont\textbf{\emph{{#1}}}}\vspace{0.8em}\newline}

% titles vertical spacing
\titlespacing*{\section}{0pt}{5pt}{-15pt}
\titlespacing*{\subsection}{0pt}{5pt}{-15pt}
\titlespacing*{\subsubsection}{0pt}{0pt}{-20pt}
\titlespacing*{\paragraph}{0pt}{0pt}{-20pt}
\titlespacing*{\subparagraph}{0pt}{0pt}{-20pt}

%---------- paragraph indentation and spacing ---------- 
\setlength{\parindent}{0pt}
\setlength{\parskip}{\baselineskip}
%---------- Header and footer ---------- 
% redefine section in order to print the unnumbered section name in header

% https://tex.stackexchange.com/questions/168378/unnumbered-sections-and-section-marks

\let\CLASSsection\section
\RenewDocumentCommand{\section}{som}{%
  \IfBooleanTF{#1}
   {% there's a *
    \CLASSsection*{#3}\markboth{#3}{}%
    \pagestyle{unnumstyle}
   }
   {% no *
    \IfNoValueTF{#2}
     {% no opt arg
      \CLASSsection{#3}%
      \pagestyle{numstyle}
     }
     {% opt arg
      \CLASSsection[#2]{#3}%
      \pagestyle{numstyle}
     }%
   }%
}

% fancy style : just the footer
\renewcommand{\headrulewidth}{0pt}
\lhead{}
\chead{}
\rhead{}
\setlength{\footskip}{12mm}
%\lfoot{
%    \includegraphics[width=1.6cm]{\FooterLogoPath}
%    \hspace{0.5mm} \color{gray60K}\fontsize{9}{9}\selectfont\emph{\Articletitle} 
%    \hrulefill \hspace{1mm} \color{black} \fontsize{12}{9}\selectfont
%    \thepage}
\cfoot{}
\rfoot{}


% add a new fancy style for the numbered section
\fancypagestyle{numstyle}{
  \pagestyle{fancy}% Duplicate fancy page style (footer)
  \rhead{
    \begin{tikzpicture}[overlay,remember picture]
        \node[yshift=-22mm, xshift=-18mm] at (current page.north east)
            {\begin{tikzpicture}[remember picture, overlay]
                    \fill[TH] (0,0) rectangle ++(18mm,8mm);
                    \node[yshift=-25.1mm,xshift=-29mm, inner sep=0pt,above right] at (current page.north east){\color{white}\fontsize{28}{30}\selectfont\bf \thesection};
                    \node[yshift=-25.0mm,xshift=-32mm, inner sep=0pt,above left] at (current page.north east){\color{gray60K}\fontsize{10}{10}\selectfont \leftmark};
            \end{tikzpicture}};
    \end{tikzpicture}
    }
    \lfoot{
        \includegraphics[width=1.6cm]{\FooterLogoPath}
        \hspace{0.5mm} \color{gray60K}\fontsize{9}{9}\selectfont\emph{\Articletitle} 
        \hrulefill \hspace{1mm} \color{black} \fontsize{12}{9}\selectfont
    \thepage}
}

% add a new fancy style for the numbered section in landscape pages
\fancypagestyle{numstylelscape}{
  \pagestyle{fancy}% Duplicate fancy page style (footer)
  \rhead{
    \begin{tikzpicture}[overlay,remember picture]
        \node[yshift=-18mm, xshift=22mm, rotate=90] at (current page.north west)
            {\begin{tikzpicture}[remember picture, overlay]
                    \fill[TH] (0,0) rectangle ++(18mm,8mm);
                    \node[yshift=-20.1mm,xshift=-24mm, inner sep=0pt,above right] at (current page.north east){\color{white}\fontsize{28}{30}\selectfont\bf \thesection};
                    \node[yshift=-20.0mm,xshift=-27mm, inner sep=0pt,above left] at (current page.north east){\color{gray60K}\fontsize{10}{10}\selectfont \leftmark};
            \end{tikzpicture}};
    \end{tikzpicture}
    }
    \lfoot{
        \begin{tikzpicture}[overlay,remember picture]
                \draw (current page.south east) ++ (-11mm,30mm) node[name=logo,  above right, rotate=90]{\includegraphics[width=16mm]{\FooterLogoPath}}; 
                \draw (current page.south east) ++ (-10.5mm,49mm) node[name=footertxt,  above right, rotate=90,text width=216.0mm, align=left]{\color{gray60K}\fontsize{9}{9}\selectfont\emph{\Articletitle}\hspace{1mm}\hrulefill \hspace{1mm} \color{black} \fontsize{12}{9}\selectfont\thepage};
    \end{tikzpicture}
    }
}

% add a new fancy style for the unnumbered section
\fancypagestyle{unnumstyle}{
  \pagestyle{fancy}% Duplicate fancy page style (footer)
  \rhead{
    \begin{tikzpicture}[overlay,remember picture]
        \node[yshift=-22mm, xshift=-18mm] at (current page.north east)
            {\begin{tikzpicture}[remember picture, overlay]
                    \fill[TH] (0,0) rectangle ++(18mm,8mm);
                    \node[yshift=-25.0mm,xshift=-32mm, inner sep=0pt,above left] at (current page.north east){\color{gray60K}\fontsize{10}{10}\selectfont \leftmark};
            \end{tikzpicture}};
    \end{tikzpicture}
    }
    \lfoot{
        \includegraphics[width=1.6cm]{\FooterLogoPath}
        \hspace{0.5mm} \color{gray60K}\fontsize{9}{9}\selectfont\emph{\Articletitle} 
        \hrulefill \hspace{1mm} \color{black} \fontsize{12}{9}\selectfont
    \thepage}
}




%---------- lists ---------- 

 \renewcommand{\labelitemi}{$\textcolor{TH}\bullet$}
 \renewcommand{\labelitemii}{$\circ$}
 \renewcommand{\labelitemiii}{\fontsize{5pt}{0pt}\selectfont $\blacksquare$}
 \renewcommand{\labelitemiv}{$\bullet$}

\renewcommand{\labelenumii}{\alph{enumii}.}
\renewcommand{\labelenumiv}{\arabic{enumiv}.}

%---------- boxes ---------- 

\newenvironment{boxe1}[1]
    {
        \begin{tcolorbox}[enhanced, 
            borderline north = {2pt}{0pt}{TH,dotted},
            borderline south = {2pt}{0pt}{TH,dotted},
            frame hidden,
            left=0pt,right=0pt,
            colback = white]
            {\fontsize{15pt}{10pt}\selectfont \bfseries \color{TH} #1\\[1ex]} 
            \newline 
    }{
        \end{tcolorbox}
    }

\newenvironment{boxe2}[1]
    {
        \begin{tcolorbox}[enhanced, 
            frame hidden, sharp corners = all,
            left=0pt,right=0pt,
            colback = TH20p]
            {\fontsize{15pt}{10pt}\selectfont \bfseries \color{TH} #1\\[1ex]} 
            \newline 
    }{
        \end{tcolorbox}
    }

\newenvironment{boxe3}[1]
    {
        \begin{tcolorbox}[enhanced, 
            frame hidden, sharp corners = all,
            left=0pt,right=0pt,
            colback = TH]
            {\fontsize{15pt}{10pt}\selectfont \bfseries \color{white} #1\\[1ex]} 
            \color{white} \bfseries
            \newline 
    }{
        \end{tcolorbox}
    }

% colored bold format
\newcommand{\boldthcolor}[1]{\textcolor{TH}{\textbf{#1}}}

%---------- Captions ---------- 

\DeclareCaptionStyle{Eurostatstyle}%
[justification=raggedright]%
{font={bf,color=gray75K}, labelfont={bf,color=TH}}

\captionsetup{style=Eurostatstyle}

%---------- Footnotes ---------- 

\makeatletter
% Default:
% \def\@makefnmark{\hbox{\@textsuperscript{\normalfont\@thefnmark}}}
\renewcommand{\@makefnmark}{\makebox{\normalfont (\textsuperscript{\@thefnmark}) }}
\makeatother

%\renewcommand{\thefootnote}{\arabic{footnote}}

%---------- Tables width footnotes ---------- 
\makeatletter
\newcommand{\tblfootnotemark}[1]{(\textsuperscript{#1})}
\newenvironment{fntable}[1][\columnwidth]{%
\def\@makefnmark{%
    \ifnum\@thefnmark\else(\fi%
    \hbox{\@textsuperscript{\fontsize{5}{5}\selectfont\@thefnmark}}%
    \ifnum\@thefnmark\else)\hskip2pt\fi}%
\begin{minipage}{0.7\columnwidth}{#1}%
%\addtocounter{section}{-1}
\def\blankfootnote{\xdef\@thefnmark{}\@footnotetext}
%%%%%%%%%%
\def\@xfootnotemark[##1]{%
   \begingroup
      \unrestored@protected@xdef\@thefnmark{##1}%
   \endgroup
   \@footnotemark}
%%%%%%%%%
\def\@xfootnotenext[##1]{%
  \begingroup
     \unrestored@protected@xdef\@thefnmark{##1}%
  \endgroup
  \@footnotetext}
\renewcommand\@makefntext[1]{{%
    \hskip0pt{\smash{\@makefnmark}}##1\par }}
\renewcommand\footnotesize{\@setfontsize\footnotesize{7}{8.5}}%
}%
{\vspace{-0.9\skip\footins}%
\renewcommand{\footnoterule}{}%
\end{minipage}}%
\makeatother


\DeclareRobustCommand\cs[1]{\texttt{\char`\\#1}\relax}


%---------- References ---------- 

% hiden the numbering before the references
\makeatletter
\renewcommand\@biblabel[1]{}
\makeatother
\setlength{\bibhang}{0pt}    %remove hanging indentation
%---------- Landscape pages ---------- 



%---------- Keep at the end ---------- 

\ProcessOptions\relax



                              

