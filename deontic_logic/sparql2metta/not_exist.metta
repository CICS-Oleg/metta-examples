; xsd:boolean  NOT EXISTS { pattern }
;Returns false if pattern matches. Returns true otherwise.
;
;NOT EXISTS { pattern } is equivalent to fn:not(EXISTS { pattern }).
;
; xsd:boolean  EXISTS { pattern }
;Returns true if pattern matches. Returns false otherwise.

(a AND b)

;(= (not_exist $pattern)
;    (not (unify &self $pattern True Fasle)))

(= (not_exist $pattern)
    (unify &self $pattern Fasle True))

(= (exist $pattern)
    (unify &self $pattern True Fasle))

(= (not_exist $x $y $pattern)
(chain (eval (atom-subst $x $y $pattern)) $op-init
    (unify &self $op-init Fasle True)))

;!(unify &self (pattern) T F)



;!(not_exist (a AND b))
;
;!(unify &self (a AND b) T F)
