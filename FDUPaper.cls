\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{FDUPaper}[2024/04/27 Fudan University of Computer Science Undergraduate Thesis Template]
\LoadClass[a4paper,scheme=chinese, zihao=-4]{ctexrep}
% \RequirePackage{ctex}
\RequirePackage{titletoc}
\RequirePackage{fancyhdr}
\RequirePackage{hyperref}
\RequirePackage{amsmath,amssymb}
\RequirePackage{graphicx}
\RequirePackage{booktabs}
\RequirePackage{titlesec}
\RequirePackage[top=1.0in, bottom=1.0in, left=1.25in, right=1.25in]{geometry}
% \setmainfont{SimSun}

\setCJKmainfont{simsun.ttc}[ BoldFont=SOURCEHANSERIFCN-SEMIBOLD-7.OTF]

\hypersetup{
    colorlinks=true, 
    linktoc=all,     
    linkcolor=black, 
    citecolor=black,
    urlcolor=black
}

\ctexset{
    abstractname={摘要},
    chapter={
        format+=\heiti \zihao{-2} \centering ,
        number={\chinese{chapter}},
        name={第,章},
        beforeskip={-10pt}, % 调整这个值以改变标题前的间距
        afterskip={20pt}
    },
    section={
        number={\arabic{chapter}.\arabic{section}},
        format =\bfseries \raggedright \zihao{3}
    },
    subsection={
        number={\arabic{chapter}.\arabic{section}.\arabic{subsection}},
        format=\raggedright \zihao{-3} \bfseries,
    }
}


% 新命令保存标题内容
\newcommand{\mytitle}{}
% 设置标题命令
\newcommand{\setTitle}[1]{\renewcommand{\mytitle}{#1}}

% 设置页眉
\pagestyle{fancy}
% \renewcommand{\sectionmark}[1]{\markboth{#1}{}}
\fancyhead[L]{\kaishu \zihao{-5} \mytitle}
\fancyhead[R]{\kaishu \zihao{-5}{\leftmark}}
\renewcommand\headrulewidth{.5pt}
\renewcommand\footrulewidth{0pt}

% 对章节所在页也使用 fancy 风格
\fancypagestyle{plain}{
  \fancyhf{} % 清除页眉页脚
  \fancyhead[L]{\kaishu \zihao{-5} \mytitle} % 在左侧页眉显示标题
  \fancyhead[R]{\kaishu \zihao{-5} \leftmark} % 在右侧页眉显示当前章节名
  \fancyfoot[C]{\thepage} % 在页脚中间显示页码
  \renewcommand\headrulewidth{.5pt}
  \renewcommand\footrulewidth{0pt}
}

% % 设置目录样式
\renewcommand{\contentsname}{\heiti\zihao{2}目\quad 录}
\vspace{10pt}
\titlecontents{chapter}[4em]{\bfseries \heiti \zihao{-4} \vspace{4pt}}{\contentslabel{4em}}{\hspace*{-4em}}{~\titlerule*[0.6pc]{$.$}~\contentspage}
\titlecontents{section}[4em]{\songti \zihao{-4}}{\contentslabel{2em}}{\hspace*{-2em}}{~\titlerule*[0.6pc]{$.$}~\contentspage}
\titlecontents{subsection}[7em]{\songti \zihao{-4}}{\contentslabel{3em}}{\hspace*{-2em}}{~\titlerule*[0.6pc]{$.$}~\contentspage}




\renewcommand{\thefigure} {\arabic{section}-\arabic{figure}}
% \renewcommand{\theequation}{\arabic{section}.\arabic{equation}}
\renewcommand{\thetable} {\arabic{section}-\arabic{table}}

\usepackage{gbt7714}
\bibliographystyle{gbt7714-numerical}



\RequirePackage{amsthm}
\RequirePackage{aliascnt}
% 配置定理环境
\theoremstyle{plain}
%plain(默认样式): 定理名称是正体,定理内容是斜体.
%definition: 定理名称和定理内容都是正体,其上下留有额外的空间．
%remark: 正体,其上下没有额外的空间．
\newtheorem{theorem}{定理}[chapter]
% \newtheorem{definition}{定义}[chapter] %
% 如果需要在每一节中单独编号,请将[chapter]改为[section]

% 创建一个新的计数器 'lemma'，它与 'thm' 使用相同的编号系统
\newaliascnt{lemma}{theorem}
\newtheorem{lemma}[lemma]{引理}
\aliascntresetthe{lemma}

\newaliascnt{definition}{theorem}
\newtheorem{definition}[definition]{定义}
\aliascntresetthe{definition}


\newtheorem{axiom}[theorem]{公理}
\newtheorem{coro}[theorem]{推论}
\newtheorem{prop}[theorem]{命题}
\newtheorem{con}[theorem]{猜想}

% \theoremstyle{definition}
% \newtheorem{definition}[thm]{定义}
\newtheorem{asm}[theorem]{假设}


\newcounter{problemcounter}
\newaliascnt{problem}{problemcounter}
\newtheorem{problem}[problem]{问题}
\aliascntresetthe{problem}


% \newcounter{problemcounter}
% \newtheorem{prob}[problemcounter]{问题}

\theoremstyle{remark}
\newtheorem{rem}{注}[chapter]
\newtheorem{example}{例}[chapter]
% 除了注和例之外,均是连续编号.

\renewcommand{\proofname}{\textbf{证明}}

\RequirePackage{setspace}
\setlength{\bibsep}{0pt}
% \setlength{\bibitemsep}{0pt}

% 标题左边的空白距离,标题上方的空白距离,标题和文本之间的空白距离
\titlespacing*{\chapter}{0pt}{-40pt}{40pt}

\numberwithin{figure}{chapter}  
\numberwithin{table}{chapter}
% \numberwithin{equation}{chapter}

\RequirePackage[capitalize]{cleveref}
\crefname{lemma}{引理}{引理}
\crefname{definition}{定义}{定义}
\crefname{theorem}{定理}{定理}
\crefname{figure}{图}{图}
\crefname{table}{表}{表}
\crefname{equation}{公式}{公式}
\crefname{algorithm}{算法}{算法}
\crefname{problem}{问题}{问题}
\endinput