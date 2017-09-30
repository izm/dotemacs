
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(column-number-mode t)
 '(custom-enabled-themes (quote (material)))
 '(custom-safe-themes
   (quote
    ("5999e12c8070b9090a2a1bbcd02ec28906e150bb2cdce5ace4f965c76cf30476" "a4c9e536d86666d4494ef7f43c84807162d9bd29b0dfd39bdf2c3d845dcc7b2e" "c72a772c104710300103307264c00a04210c00f6cc419a79b8af7890478f380e" "555c5a7fa39f8d1538501cc3fdb4fba7562ec4507f1665079021870e0a4c57d8" "3e8ea6a37f17fd9e0828dee76b7ba709319c4d93b7b21742684fadd918e8aca3" "5dc0ae2d193460de979a463b907b4b2c6d2c9c4657b2e9e66b8898d2592e3de5" "04dd0236a367865e591927a3810f178e8d33c372ad5bfef48b5ce90d4b476481" "5e3fc08bcadce4c6785fc49be686a4a82a356db569f55d411258984e952f194a" "7153b82e50b6f7452b4519097f880d968a6eaf6f6ef38cc45a144958e553fbc6" "08b8807d23c290c840bbb14614a83878529359eaba1805618b3be7d61b0b0a32" "98cc377af705c0f2133bb6d340bf0becd08944a588804ee655809da5d8140de6" "130319ab9b4f97439d1b8fd72345ab77b43301cf29dddc88edb01e2bc3aff1e7" "43c1a8090ed19ab3c0b1490ce412f78f157d69a29828aa977dae941b994b4147" "5dd70fe6b64f3278d5b9ad3ff8f709b5e15cd153b0377d840c5281c352e8ccce" "7356632cebc6a11a87bc5fcffaa49bae528026a78637acd03cae57c091afd9b9" "ab04c00a7e48ad784b52f34aa6bfa1e80d0c3fcacc50e1189af3651013eb0d58" "a0feb1322de9e26a4d209d1cfa236deaf64662bb604fa513cca6a057ddf0ef64" default)))
 '(diary-entry-marker (quote font-lock-variable-name-face))
 '(inhibit-startup-screen t)
 '(org-agenda-files
   (quote
    ("c:/Users/steve/Dropbox/org/notes.org" "c:/Users/steve/Dropbox/org/work.org" "c:/Users/steve/Dropbox/org/agenda.org")))
 '(org-refile-targets (quote ((org-agenda-files :level . 2))))
 '(package-selected-packages
   (quote
    (org-bullets tangotango-theme leuven-theme eziam-theme alect-themes atom-one-dark-theme borland-blue-theme material-theme helm helm-projectile expand-region org-projectile projectile web-mode)))
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(truncate-lines t)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "outline" :slant normal :weight normal :height 110 :width normal)))))
; '(exec-path (quote ("C:/Python27/Scripts" "c:/Program Files/Common Files/Microsoft Shared/Windows Live" "C:/Program Files (x86)/Common Files/Microsoft Shared/Windows Live" "C:/Lotus/Notes" "C:/ProgramData/Oracle/Java/javapath" "C:/windows/system32" "C:/windows" "C:/windows/System32/Wbem" "C:/windows/System32/WindowsPowerShell/v1.0/" "C:/Program Files (x86)/PDFtk/bin/" "C:/Program Files (x86)/Windows Live/Shared" "C:/Users/steven.brown/AppData/Local/atom/bin" "c:/Users/steven.brown/Desktop/emacs-24.3/bin" "c:/Users/steven.brown/Desktop/emacs-24.3/lib-src/oo-spd/i386" "c:/Users/steven.brown/Desktop/emacs-24.3/lib-src/oo/i386")))
; '(python-shell-exec-path (quote ("C:/Python27")))
; '(python-shell-extra-pythonpaths (quote ("C:/Python27/Scripts")))

;; C-h, v : package-activated-list
;; (expand-region helm-projectile dash projectile pkg-info epl dash helm helm-core async popup async helm-pydoc helm-core async jedi auto-complete popup jedi-core python-environment deferred epc ctable concurrent deferred jedi-core python-environment deferred epc ctable concurrent deferred magit magit-popup dash async git-commit with-editor dash async dash with-editor dash async dash async magit-popup dash async popup projectile pkg-info epl dash python-docstring python-environment deferred restclient swoop async pcre2el ht with-editor dash async yasnippet)

;(setq org-default-notes-file (expand-file-name "~/notes.org")) ; Hot Fix

;org-mode keybindings
(define-key global-map "\C-cc" 'org-capture)
(define-key global-map "\C-ca" 'org-agenda)
(define-key global-map "\C-cl" 'org-store-link) 

;; org-mode customization
(setq org-log-done 'time)  ;; 
(setq org-todo-keywords
       '((sequence "TODO(t)" "STARTD(s)" "WAITING(w)" "|" "DONE(d)" "DELEGATED(e)" "CANCELLED(c)")))
;; (add-to-list 'load-path "~/../or
(setq org-directory "c:/Users/steve/Dropbox/org") ;TODO: this is specific to Windows, add Platform
(setq org-agenda-files (list (concat org-directory "/notes.org")    ; Home/Learn/Everything
			     (concat org-directory "/work.org")     ; Work		   
			     (concat org-directory "/agenda.org")))  ; Life Stuff - rename to 'personal'?
(setq org-default-notes-file (concat org-directory "/captured.org")) ; Unsorted  Notes
(setq org-refile-use-outline-path 'file)
(setq org-refile-targets '((org-agenda-files :level . 1)))
      
;; packages: use up-to-date MELPA, not ELPA
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))

(require 'use-package)
(setq use-package-always-ensure t)

;; (require 'expand-region)  ;; superceded
;;(global-set-key (kbd "C-=") 'er/expand-region)
(use-package expand-region
  :bind ("C-=" . er/expand-region)		;
  :ensure t)

;; ALTERNATIVE/EXPLICIT OF ABOVE
;; (use-package expand-region
;;   :commands expand-region
;;   :init
;;   (bind-key "C-=" "expand-region"))

(use-package projectile
  :ensure t				; ensure package is downloaded
  :init					; pre-load config
  (setq projectile-enable-caching t)	; 
  (projectile-global-mode +1)		; resolve missing projects
  :config nil				; post-load config
)

(desktop-save-mode 1) ;; automatically save the desktop
(setq backup-directory-alist `(("." . "~/.emacs.d/.backups")))
(setq backup-by-copying t)




;; WINDOWS SPECIFIC, for programs not in PATH
;(setq python-shell-interpreter "C:/Python27/Scripts/ipython.exe"
;      python-shell-interpreter-args "-i")
;(setq python-shell-interpreter "C:/Python27/python.exe")
;; (add-to-list 'python-shell-extra-pythonpaths "/path/to/the/dependency")

(setq PYTHONIOENCODING "utf-8")        ;print utf-8 in shell
(prefer-coding-system 'utf-8)

;; WINDOWS ASPELL, find, grep, ls, etc to system path
(setq exec-path (append exec-path '("C:/Program Files (x86)/Aspell/bin"
				    ;; http://aspell.net/				    ;; 
				    "C:/Program Files (x86)/GnuWin32/bin")))
				    ;; http://gnuwin32.sourceforge.net/
;; WINDOWS 
(setq-default ispell-program-name "aspell")


;; LIST INSTALLED PACKAGES
;; C-h, v : package-activated-list
;; (alect-themes atom-one-dark-theme borland-blue-theme expand-region eziam-theme helm-projectile helm helm-core async leuven-theme material-theme org-bullets org-projectile dash popup projectile pkg-info epl tangotango-theme web-mode)

