;;; helm-yasnippet-test.el --- test commands of helm-yasnippet -*- lexical-binding: t -*-

;; Copyright (C) 2023 by Shohei YOSHIDA

;; Author: Shohei YOSHIDA <syohex@gmail.com>

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;;; Code:

(require 'ert)
(require 'helm-c-yasnippet)
(require 'cl-lib)

(ert-deftest regression-issue-28 ()
  "Find major-mode directory with string not regexp.
Detail: https://github.com/emacs-jp/helm-c-yasnippet/pull/28"
  (let ((tmpdir (concat temporary-file-directory "helm-yasnippet/")))
    (delete-directory tmpdir t)
    (cl-loop for dir in '("sh-mode" "fish-mode")
	     do
	     (make-directory (concat tmpdir dir) t))
    (let ((dir (helm-yas-find-recursively "sh-mode" tmpdir 'dir)))
      (should (string= dir (concat tmpdir "sh-mode/"))))
    (delete-directory tmpdir t)))

;;; helm-yasnippet-test.el ends here
