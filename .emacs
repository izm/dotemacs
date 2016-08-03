(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(case-fold-search t)
 '(column-number-mode t)
 '(current-language-environment "UTF-8")
 '(default-input-method "rfc1345")
 '(global-font-lock-mode t nil (font-lock))
 '(inhibit-startup-screen t)
 '(org-agenda-files (quote ("~/Dropbox/Projects/sampling goals/notes.txt")))
 '(python-indent 4)
 '(python-indent-offset 4)
 '(show-paren-mode t)
 '(tab-width 4)
 '(transient-mark-mode t)
 '(truncate-lines t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;;(setq default-tab-width 4);
;;(setq python-indent 4);


;; C-h, v : package-activated-list
;; (expand-region helm-projectile dash projectile pkg-info epl dash helm helm-core async popup async helm-pydoc helm-core async jedi auto-complete popup jedi-core python-environment deferred epc ctable concurrent deferred jedi-core python-environment deferred epc ctable concurrent deferred magit magit-popup dash async git-commit with-editor dash async dash with-editor dash async dash async magit-popup dash async popup projectile pkg-info epl dash python-docstring python-environment deferred restclient swoop async pcre2el ht with-editor dash async yasnippet)

(defun my-python-mode-hook()
  (setq tab-width 4)
  (setq python-indent 4)
  )
(add-hook 'python-mode-hook 'my-python-mode-hook)


(setq org-log-done 'time)

;; packages: use up-to-date MELPA, not ELPA
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))

(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

