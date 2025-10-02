; extends

   (call
     target: (identifier) @identifier
   (#any-of? @identifier "def" "defp")
   (arguments) @name
   (#set! "kind" "Function")) @symbol


; (call
;   target: (identifier) @identifier (#any-of? @identifier "def" "defp" "defguard" "defmacro" "defmacrop")
;   (arguments [
;               ((identifier) @name)
;    ])
;   (#set! "kind" "Function")
;   ) @type

; (call
;   target: (identifier) @identifier
;   (#any-of? @identifier "def" "defp" "defguard" "defmacro" "defmacrop")
;   (arguments
;     [
;       (call
;         target: (identifier) @name)
  ;
  ;     (binary_operator
  ;       left: (call
  ;         target: (identifier) @name))
  ;
  ;     (identifier) @name
  ;   ])
  ; (#set! "kind" "Function")) @symbol
