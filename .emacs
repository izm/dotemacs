(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(case-fold-search t)
 '(column-number-mode t)
 '(company-quickhelp-mode t)
 '(company-show-numbers t)
 '(company-tooltip-flip-when-above t)
 '(current-language-environment "UTF-8")
 '(custom-enabled-themes (quote (wombat)))
 '(default-input-method "rfc1345")
 '(global-font-lock-mode t nil (font-lock))
 '(inhibit-startup-screen t)
 '(menu-bar-mode t)
 '(org-agenda-files (quote ("~/Dropbox/Projects/sampling goals/notes.org")))
 '(python-indent 4)
 '(python-indent-offset 4)
 '(show-paren-mode t)
 '(tab-width 4)
 '(tool-bar-mode nil)
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


;; PACKAGES
;; Use up-to-date MELPA, not ELPA
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))

;; COMPANY AutoCompletion
(require 'company)
(require 'company-jedi)
(require 'company-quickhelp)
(add-to-list 'company-backends 'company-ispell)
(add-to-list 'company-backends 'company-jedi) ;adds company-jedi to company-backends list

(eval-after-load 'company
  '(define-key company-active-map (kbd "M-h") #'company-quickhelp-manual-begin))

(defun my-python-mode-hook()
  (setq tab-width 4)
  (setq python-indent 4)
  )
(
 add-hook 'python-mode-hook 'my-python-mode-hook)

;; VARIABLES
(desktop-save-mode 1)  ;; automatically save the desktop

(projectile-global-mode +1)		; resolve missing projects
(setq projectile-enable-caching t)

;; ORG-MODE
(setq org-log-done 'time)
(setq org-default-notes-file "~/.emacs.d/captured.org")
(define-key global-map "\C-cc" 'org-capture)



;; EXPAND REGION
(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)




;; DON'T NEED ANYMORE
;; (require 'ein) ;; Emacs Iron Python Notebook connectivity
;; (require 'ipython)	   


;; NOTES
;; (setq python-shell-interpreter "ipython"
;;       python-shell-interpreter-args "-i")
;; (add-to-list 'python-shell-extra-pythonpaths "/path/to/the/dependency")

;; LIST INSTALLED PACKAGES
;; C-h, v : package-activated-list
;; (expand-region helm-projectile dash projectile pkg-info epl dash helm helm-core async popup async helm-pydoc helm-core async jedi auto-complete popup jedi-core python-environment deferred epc ctable concurrent deferred jedi-core python-environment deferred epc ctable concurrent deferred magit magit-popup dash async git-commit with-editor dash async dash with-editor dash async dash async magit-popup dash async popup projectile pkg-info epl dash python-docstring python-environment deferred restclient swoop async pcre2el ht with-editor dash async yasnippet)
