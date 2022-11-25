;; SPDX-FileCopyrightText: 2022 Hilton Chain <hako@ultrarare.space>
;;
;; SPDX-License-Identifier: GPL-3.0-or-later

(define-module (rosenthal packages emacs-xyz)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix build-system emacs)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix packages)
  #:use-module (gnu packages emacs-xyz))

(define-public emacs-company-dev
  (let ((revision "357")
        (commit "48fea7a905b3bcc6d97609316beced666da89b1f"))
    (package
      (inherit emacs-company)
      (name "emacs-company-dev")
      (version (git-version "0.9.13" revision commit))
      (source (origin
                (method git-fetch)
                (uri (git-reference
                      (url "https://github.com/company-mode/company-mode")
                      (commit commit)))
                (file-name (git-file-name name version))
                (sha256
                 (base32
                  "17w9irn5aaxadsm5smz5cm1dxy0xb1hh0dnhwqclq3y5llrb21lx")))))))

(define-public emacs-doom-modeline-dev
  (let ((base emacs-doom-modeline)
        (revision "26")
        (commit "440fd160b4dff530465938bed40094a0d413fc11"))
    (package
      (inherit base)
      (name "emacs-doom-modeline-dev")
      (version (git-version "3.3.2" revision commit))
      (source (origin
                (method git-fetch)
                (uri (git-reference
                      (url "https://github.com/seagle0128/doom-modeline")
                      (commit commit)))
                (file-name (git-file-name name version))
                (sha256
                 (base32
                  "0ablv6fyqb6mzzk7iyx24nj5xmmmhw7kqmi2xldjv0a7aplmxbqr"))))
      (propagated-inputs
       (modify-inputs (package-propagated-inputs base)
         (delete "emacs-all-the-icons" "emacs-dash"))))))

(define-public emacs-god-mode-dev
  (let ((revision "16")
        (commit "49c1a1753188e5b2788b8c1f1f9fbd1264460bab"))
    (package
      (inherit emacs-god-mode)
      (name "emacs-god-mode-dev")
      (version (git-version "2.17.3" revision commit))
      (source (origin
                (method git-fetch)
                (uri (git-reference
                      (url "https://github.com/emacsorphanage/god-mode")
                      (commit commit)))
                (file-name (git-file-name name version))
                (sha256
                 (base32
                  "0h1kfvr4zahk8ihvri1r16b2nkg3dg3524ic64c6w0jing2gr37c")))))))

(define-public emacs-macrostep-geiser-dev
  (let ((revision "3")
        (commit "f6a2d5bb96ade4f23df557649af87ebd0cc45125"))
    (package
      (inherit emacs-macrostep-geiser)
      (name "emacs-macrostep-geiser-dev")
      (version (git-version "0.2.0" revision commit))
      (source (origin
                (method git-fetch)
                (uri (git-reference
                      (url "https://github.com/nbfalcon/macrostep-geiser")
                      (commit commit)))
                (file-name (git-file-name name version))
                (sha256
                 (base32
                  "0dykvwcvg8n24z3fkx6rv3l1mhzmca4cxj0gsvvqsg9wp0az1fc7")))))))

(define-public emacs-rime-dev
  (let ((revision "10")
        (commit "74f3dff40e66c65388a9471eecbc1d9aca5612f7"))
    (package
      (inherit emacs-rime)
      (name "emacs-rime-dev")
      (version (git-version "1.0.5" revision commit))
      (source (origin
                (method git-fetch)
                (uri (git-reference
                      (url "https://github.com/DogLooksGood/emacs-rime")
                      (commit commit)))
                (file-name (git-file-name name version))
                (sha256
                 (base32
                  "1bqhn6pvsgs1x882q7y5p372aify2jmyfmgmx99nzakxbfkb0yqp")))))))
