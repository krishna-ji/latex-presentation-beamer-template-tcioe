\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thapathali}[2025/12/27 Thapathali Campus Beamer Template]

% Base class
\LoadClass[aspectratio=169]{beamer}

% Theme Setup - Inspired by Cambridge US and Beaver
\usetheme{CambridgeUS}
%\usecolortheme{beaver}

% Required Packages
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{graphicx}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{booktabs}
\RequirePackage{tikz}
\RequirePackage{listings}
\RequirePackage{hyperref}

% Color customization (optional)
% Keep these defined so \textcolor{IOERed}{...} still works if you use it,
% but do not override Beamer theme colors by default.
\definecolor{IOERed}{RGB}{165,30,55}
\definecolor{IOEBlue}{RGB}{0,51,102}
%\setbeamercolor{structure}{fg=IOERed}
%\setbeamercolor{palette primary}{bg=IOERed,fg=white}
%\setbeamercolor{palette secondary}{bg=IOEBlue,fg=white}
%\setbeamercolor{palette tertiary}{bg=IOERed!80,fg=white}

% ============================================
% CUSTOMIZABLE VARIABLES - Edit these in your main document
% ============================================
\newcommand{\projecttitle}[1]{\def\@projecttitle{#1}}
\newcommand{\projectsubtitle}[1]{\def\@projectsubtitle{#1}}
\newcommand{\presentername}[1]{\def\@presentername{#1}}
\newcommand{\studentroll}[1]{\def\@studentroll{#1}}
\newcommand{\supervisorname}[1]{\def\@supervisorname{#1}}
\newcommand{\supervisortitle}[1]{\def\@supervisortitle{#1}}
\newcommand{\departmentname}[1]{\def\@departmentname{#1}}
\newcommand{\institutionname}[1]{\def\@institutionname{#1}}
\newcommand{\presentationdate}[1]{\def\@presentationdate{#1}}
\newcommand{\academicyear}[1]{\def\@academicyear{#1}}

% Default values
\projecttitle{Your Project Title Here}
\projectsubtitle{A Brief Subtitle of Your Project}
\presentername{Student Name}
\studentroll{Roll Number: 075/BCT/XXX}
\supervisorname{Dr. Supervisor Name}
\supervisortitle{Associate Professor}
\departmentname{Department of Electronics and Computer Engineering}
\institutionname{Thapathali Campus\\Institute of Engineering\\Tribhuvan University}
\presentationdate{\today}
\academicyear{Academic Year: 2024/2025}

% ============================================
% Public getters (safe to use in .tex files)
% ============================================
\newcommand{\ProjectTitle}{\@projecttitle}
\newcommand{\ProjectSubtitle}{\@projectsubtitle}
\newcommand{\PresenterName}{\@presentername}
\newcommand{\StudentRoll}{\@studentroll}
\newcommand{\SupervisorName}{\@supervisorname}
\newcommand{\SupervisorTitle}{\@supervisortitle}
\newcommand{\DepartmentName}{\@departmentname}
\newcommand{\InstitutionName}{\@institutionname}
\newcommand{\PresentationDate}{\@presentationdate}
\newcommand{\AcademicYear}{\@academicyear}

% Footer: show only date of presentation and page number
\setbeamertemplate{footline}{
    \leavevmode%
    \hbox{%
        \begin{beamercolorbox}[wd=.78\paperwidth,ht=2.25ex,dp=1ex,left]{date in head/foot}%
            \hspace*{1ex}\usebeamerfont{date in head/foot}Date of Presentation: \insertshortdate
        \end{beamercolorbox}%
        \begin{beamercolorbox}[wd=.22\paperwidth,ht=2.25ex,dp=1ex,right]{date in head/foot}%
            \usebeamerfont{date in head/foot}\insertframenumber{} / \inserttotalframenumber\hspace*{1ex}
        \end{beamercolorbox}%
    }%
    \vskip0pt%
}

% Hide navigation symbols
\setbeamertemplate{navigation symbols}{}

\endinput

% Template Designed by : Krishna Acharya Version 1o