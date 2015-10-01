# helm-c-yasnippet
helm source for yasnippet.el

## Screenshot

![helm-c-yasnippet](image/helm-c-yasnippet.png)


## Sample Configuration

```lisp
(require 'yasnippet)
(require 'helm-c-yasnippet)
(setq helm-yas-space-match-any-greedy t)
(global-set-key (kbd "C-c y") 'helm-yas-complete)
(yas-global-mode 1)
(yas-load-directory "<path>/<to>/snippets/")
```
