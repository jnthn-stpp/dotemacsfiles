;;; Compiled snippets and support files for `latex-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'latex-mode
		     '(("bf" "\\textbf{$1}$0" "textbf" nil nil nil "/home/jnthn/.emacs.d/snippets/latex-mode/textbf" nil nil)
		       ("td" "$1^{$2} $0" "super" nil nil nil "/home/jnthn/.emacs.d/snippets/latex-mode/super" nil nil)
		       ("sum" "\\sum_{${1:i = 0}}^{${2:\\infty}} $0" "sum" nil nil nil "/home/jnthn/.emacs.d/snippets/latex-mode/sum" nil nil)
		       ("dt" "$1_{$2} $0" "sub" nil nil nil "/home/jnthn/.emacs.d/snippets/latex-mode/sub" nil nil)
		       ("seq" "\\\\{${1:x_n}\\\\}_{${2:n=\\ell}}^{${3:\\infty}}$0" "seq" nil nil nil "/home/jnthn/.emacs.d/snippets/latex-mode/seq" nil nil)
		       ("sbeg" "\\begin{${1:environ}}\n	$2\n\\end{$1}\n$0" "sbeg" nil nil nil "/home/jnthn/.emacs.d/snippets/latex-mode/sbeg" nil nil)
		       ("ml" "\\begin{align*}\n	$0\n\\end{align*}" "math-align" nil nil nil "/home/jnthn/.emacs.d/snippets/latex-mode/math-align" nil nil)
		       ("ooo" "\\infty" "infty" nil nil nil "/home/jnthn/.emacs.d/snippets/latex-mode/infty" nil nil)
		       ("frac" "\\frac{${1:numerator}}{${2:denominator}}$0" "frac" nil nil nil "/home/jnthn/.emacs.d/snippets/latex-mode/frac" nil nil)
		       ("enum" "\\begin{enumerate}[${1:(1)}]\n	\\item $0\n\\end{enumerate}" "enum" nil nil nil "/home/jnthn/.emacs.d/snippets/latex-mode/enum" nil nil)
		       ("beg" "\\begin{${1:environment}}\n	$0\n\\end{$1}" "begin" nil nil nil "/home/jnthn/.emacs.d/snippets/latex-mode/begin" nil nil)))


;;; Do not edit! File generated at Sat Oct  5 15:07:12 2019
