;; -*- no-byte-compile: t; -*-
;;; completion/vertico/packages.el

(package! vertico
  :recipe (:host github :repo "luggages/vertico"
           :files ("*.el" "extensions/*.el"))
  :pin "f64aef3d478e149df9c95674639cf9afa2e12eb7")

(package! orderless :pin "e6784026717a8a6a7dcd0bf31fd3414f148c542e")

(package! consult :pin "40607fb11ceaaa4d2d1c19673295923fd9cfa0e2")
(package! consult-dir :pin "ed8f0874d26f10f5c5b181ab9f2cf4107df8a0eb")
(when (and (modulep! :checkers syntax)
           (not (modulep! :checkers syntax +flymake)))
  (package! consult-flycheck :pin "3f2a7c17cc2fe64e0c07e3bf90e33c885c0d7062"))
(package! embark :pin "46fb2f8bd90bc374d2cd0a55da3510a09070c859")
(package! embark-consult :pin "9a44418c349e41020cdc5ad1bd21e8c77a429062")

(package! marginalia :pin "17fffc685731a1459fb5faa9e376b75ebe225d5c")

(package! wgrep :pin "3132abd3750b8c87cbcf6942db952acfab5edccd")

(when (modulep! +icons)
  (package! all-the-icons-completion :pin "8eb3e410d63f5d0657b41829e7898793e81f31c0"))

(when (modulep! +childframe)
  (package! vertico-posframe
    :recipe (:host github :repo "tumashu/vertico-posframe")
    :pin "7da6d648ff4202a48eb6647ee7dce8d65de48779"))
