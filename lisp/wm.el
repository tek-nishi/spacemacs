;;
;; adjust window margine
;;

(defvar wm-window-width 148)

(defvar wm:active nil)

(defvar wm:exclue-regexps '("\*spacemacs\*\\|helm\\|\*Minibuf\\|\*which-key\\|\*Echo\\|\*magit"))

;; 正規表現と文字列の一致を調べる
(defun wm:regexps-match-p (regexps string)
  (catch 'matched
    (dolist (regexp regexps)
      (if (string-match regexp string)
          (throw 'matched t)))))

;; 対象バッファか調べる
(defun wm:check-exclude-buffer (&optional window)
  (not (wm:regexps-match-p wm:exclue-regexps (buffer-name (window-buffer window)))))

(defun wm:set-window-margin (&optional window)
	"change window margin"
  (when (wm:check-exclude-buffer window)
    (set-window-margins window 0 0)
    (let ((margin (/ (- (window-width window) wm-window-width) 2)))
      (if (< margin 0)
          (setq margin 0))
      (set-window-margins window margin margin))))

(defun wm:set-frame-window-margin (&optional frame)
	"change window margine in frame"
	(dolist (w (window-list frame))
		(wm:set-window-margin w))
	(wm:set-minibuffer-margin frame))

(defun wm:set-minibuffer-margin (&optional frame)
	"change minibuffer margin"
	(wm:set-window-margin (minibuffer-window frame)))

(defun wm:reset-window-margin (&optional frame)
	(dolist (w (window-list frame))
		(set-window-margins w 0 0))
	(set-window-margins (minibuffer-window frame) 0 0))

(defun wm-turn-on ()
  (interactive)
	(setq wm:active t)

	(add-hook 'window-size-change-functions 'wm:set-frame-window-margin)
	(add-hook 'window-configuration-change-hook 'wm:set-frame-window-margin)
	;;(add-hook 'minibuffer-setup-hook 'wm:set-minibuffer-margin)
 	(wm:set-frame-window-margin)
  )

(defun wm-turn-off ()
  (interactive)
	(setq wm:active nil)
	
	(remove-hook 'window-size-change-functions 'wm:set-frame-window-margin)
	(remove-hook 'window-configuration-change-hook 'wm:set-frame-window-margin)
	;;(remove-hook 'minibuffer-setup-hook 'wm:set-minibuffer-margin)

	(wm:reset-window-margin))

(defun wm-toggle ()
  (interactive)
	(if wm:active
			(wm-turn-off)
		(wm-turn-on)))

	
(provide 'wm)
