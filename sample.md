# Table

<!--
(defun orgtbl-to-gfm (table params)
  "Convert the Orgtbl mode TABLE to GitHub Flavored Markdown."
  (let* ((alignment (mapconcat (lambda (x) (if x "|--:" "|---"))
			       org-table-last-alignment ""))
	 (params2
	  (list
	   :splice t
	   :hline (concat alignment "|")
	   :lstart "| " :lend " |" :sep " | ")))
    (orgtbl-to-generic table (org-combine-plists params2 params))))
-->

<!-- to reformat tables, go inside the table in Emacs, then:

     M-x orgtbl-mode
	 M-x orgtbl-send-table

     and then put a new line before and after the output table.
-->
<!--
#+ORGTBL: SEND sample orgtbl-to-gfm
| right column | left column | center |
|--------------+-------------+--------|
| fooaxx       |          24 |    451 |
| long foo     |      100111 |     12 |
-->

<!-- #BEGIN RECEIVE ORGTBL sample -->

| right column | left column | center |
|---|--:|--:|
| fooaxx | 24 | 451 |
| long foo | 100111 | 12 |

<!-- #END RECEIVE ORGTBL sample -->

# List

  - list item 1
  - list item 2
  - list item 3
    + inside list 1
	+ inside 2

# Math

$$ \sum_{i=0}^{10} i\not\in X $$

Inline math: $\lim_{n \to \inf} \frac{1}{n}$

# Haskell

```haskell
import System.IO.Unsafe

main = return $ unsafePerformIO main
```

# Image

I also have a nice cat picture in this document.

![caption test](image.jpg "Alt text test")

