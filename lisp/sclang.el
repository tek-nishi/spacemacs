;;; sclang.el --- SuperCollider handling

(defvar sclang-buffer
  "*sclang*"
  "*The name of the sclang process buffer.")

(defvar sclang-command
  "/Applications/SuperCollider.app/Contents/MacOS/sclang"
  "*The SuperCollider server command.")

(defvar sclang-command-arguments
  "~/Documents/TidalCycles/startup.scd"
  "*Arguments to the sclang.")

;; SuperColliderを起動
;; FIXME Emacsが非アクティブになる
(defun sclang-start ()
  "Start SuperCollider."
  (interactive)
  (if (comint-check-proc sclang-buffer)
      (error "A sclang process is already running")
    (async-shell-command (mapconcat #'identity (list sclang-command sclang-command-arguments) " ")
                         sclang-buffer)))

;; SuperColliderを停止
(defun sclang-quit ()
  "Quit SuperCollider."
  (interactive)
  (kill-buffer sclang-buffer)
  (delete-other-windows))

(provide 'sclang)
