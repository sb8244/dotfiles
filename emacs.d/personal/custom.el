(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(js-indent-level 2)
 '(org-agenda-files (quote ("~/personal/mail_verification/todo.org")))
 '(package-selected-packages
   (quote
    (org-bullets neotree linum-relative company-math vkill exec-path-from-shell zop-to-char zenburn-theme which-key volatile-highlights undo-tree smartrep smartparens smart-mode-line operate-on-number move-text magit projectile ov imenu-anywhere guru-mode grizzl god-mode gitignore-mode gitconfig-mode git-timemachine gist flycheck expand-region epl editorconfig easy-kill diminish diff-hl discover-my-major dash crux browse-kill-ring beacon anzu ace-window))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(when (string= system-type "darwin")
  (setq dired-use-ls-dired nil))


;; (substitute-key-definition 'kill-buffer 'kill-buffer-and-its-windows global-map)

(defun kill-other-buffers ()
  "Kill all other buffers."
  (interactive)
  (mapc 'kill-buffer (delq (current-buffer) (buffer-list))))

;; activate alchemist when elixir-mode is activated
(add-to-list 'elixir-mode-hook (alchemist-mode +1))

;; activate linum relative
(require 'linum-relative)
(global-linum-mode)
(with-eval-after-load 'linum
  (linum-relative-toggle))

;; js should be 2 indents
(setq js-indent-level 2)

;; easier shrinking
(global-set-key (kbd "<M-up>") 'shrink-window)
(global-set-key (kbd "<M-down>") 'enlarge-window)
(global-set-key (kbd "<M-left>") 'shrink-window-horizontally)
(global-set-key (kbd "<M-right>") 'enlarge-window-horizontally)

;; no tabs!
(setq-default indent-tabs-mode nil)

(setq whitespace-line-column 120)

;; org-mode enhancements
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
(setq org-log-done 'note)

;; company-mode enhancements
(setq company-idle-delay 0)
