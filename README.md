# helm-c-yasnippet [![melpa badge][melpa-badge]][melpa-link] [![melpa stable badge][melpa-stable-badge]][melpa-stable-link]

helm source for yasnippet.el

## Screenshot

![helm-c-yasnippet](image/helm-c-yasnippet.png)


## Installation

`helm-c-yasnippet` is available on [MELPA][melpa-link] and [MELPA-STABLE][melpa-stable-link].

You can install `helm-c-yasnippet` with the following command.

<kbd>M-x package-install [RET] helm-c-yasnippet [RET]</kbd>


## Sample Configuration

```lisp
(require 'yasnippet)
(require 'helm-c-yasnippet)
(setq helm-yas-space-match-any-greedy t)
(global-set-key (kbd "C-c y") 'helm-yas-complete)
(yas-global-mode 1)
(yas-load-directory "<path>/<to>/snippets/")
```

[melpa-link]: https://melpa.org/#/helm-c-yasnippet
[melpa-stable-link]: https://stable.melpa.org/#/helm-c-yasnippet
[melpa-badge]: https://melpa.org/packages/helm-c-yasnippet-badge.svg
[melpa-stable-badge]: https://stable.melpa.org/packages/helm-c-yasnippet-badge.svg
