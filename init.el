;; Bootstrap straight.el
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))
(straight-use-package 'org) 
;; Use straight.el for use-package
(straight-use-package 'use-package)
(setq straight-use-package-by-default t)

(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files
   '("/home/nati/Document/org/work/upwork/eloi/eloi_today.org" "/home/nati/Document/org/work/hs/v2/testing/llm_evals_today.org" "/home/nati/Document/org/work/hs/v2/testing/testing_today.org" "/home/nati/Document/org/work/hs/v2/topics/how_the_web_works_today.org" "/home/nati/Document/org/work/hs/v2/v2_hs_today.org" "/home/nati/Document/org/work/upwork/eloi/usb/usb_today.org" "/home/nati/Document/org/me/habits/drug.org" "/home/nati/Document/org/work/upwork/moni_melman/moni_melman_today.org" "/home/nati/Document/org/work/upwork/mike/new/cs/annot_bib/annot_bib.org" "/home/nati/Document/org/me/habits/bulk/food_today.org" "/home/nati/Document/org/me/habits/bulk/bulk_today.org" "/home/nati/Document/org/work/upwork/ange/resource/project2/project2_today.org" "/home/nati/Document/org/work/upwork/pape_obf/obf_today.org" "/home/nati/Document/org/me/music/music_today.org" "/home/nati/Document/org/me/books/books_today.org" "/home/nati/Document/org/work/upwork/mike/mike_today.org" "/home/nati/Document/org/work/upwork/deob/deob_today.org" "/home/nati/Document/org/work/upwork/prem/shineloop/shineloop_today.org" "/home/nati/Document/org/baskets/web_log.org" "/home/nati/Document/org/work/upwork/mike/new/policy/annotation1/annotation.org" "/home/nati/Document/org/work/upwork/ange/ange_today.org" "/home/nati/Document/org/work/upwork/mike/new/policy/policy_today.org" "/home/nati/Document/org/work/upwork/mike/new/research/research_today.org" "/home/nati/Document/org/work/upwork/mike/lab/lab_today.org" "/home/nati/Document/org/work/hs/hs_today.org" "/home/nati/Document/org/meta/meta.org" "/home/nati/Document/org/super/langs/lua/lua_today.org" "/home/nati/Document/org/super/langs/python/sqlalchemy/sqlalchemy_today.org" "/home/nati/Document/org/super/langs/python/manim/manim_today.org" "/home/nati/Document/org/super/langs/python/fastapi/fastapi_today.org" "/home/nati/Document/org/super/langs/python/python_today.org" "/home/nati/Document/org/super/emacs/emacs_today.org" "/home/nati/Document/org/super/aweseomevm/awesomevm_today.org" "/home/nati/Document/org/work/hs/topics/advanced_figma_to_code/advanced_figma_to_code_today.org" "/home/nati/Document/org/work/hs/topics/gulpjs/gulpjs_today.org" "/home/nati/Document/org/work/hs/topics/understanding_of_state_management/understanding_of_state_managment_today.org" "/home/nati/Document/org/me/habits/habits.org" "/home/nati/Document/org/me/habits/habits_track.org" "/home/nati/Document/org/super/langs/js/gulpjs/gulpjs_today.org" "/home/nati/Document/org/today.org" "/home/nati/Document/org/work/upwork/prem/loqui/loqui_today.org" "/home/nati/Document/org/work/upwork/prem/prem_today.org" "/home/nati/Document/org/baskets/todo.org"))
 '(org-priority-faces '((65 . "tomato") (66 . "yellow") (67 . "blue")))
 '(package-selected-packages
   '(all-the-icons doom-themes typescript-mode tree-sitter-langs dap-mode dap origami pyvenv zenburn-theme yasnippet which-key undo-fu try sudo-edit rainbow-delimiters projectile powerline pdf-tools org-superstar org-noter org-habit-stats nov magit lsp-ui lsp-treemacs lsp-pyright lsp-ivy imenu-list gptel flycheck djvu counsel company-box anki-editor)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-habit-alert-face ((t nil)))
 '(org-habit-alert-future-face ((t nil)))
 '(org-habit-clear-future-face ((t nil)))
 '(org-habit-done-face ((t (:background "green" :foreground "black"))))
 '(org-habit-done-future-face ((t (:background "forest green"))))
 '(org-habit-overdue-face ((t nil)))
 '(org-habit-overdue-future-face ((t nil)))
 '(org-habit-ready-face ((t nil)))
 '(org-habit-ready-future-face ((t nil))))
