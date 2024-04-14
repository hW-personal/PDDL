(define (domain grid-world)
  (:requirements :strips)
  (:predicates 
    (connected ?la ?lb) ;location a and location b
    (robot-at ?l) ;location
  )
  
  (:action move
      :parameters (?curr ?next)
      :precondition (and (robot-at ?curr) (connected ?curr ?next)) 
      :effect (and (robot-at ?next) (not (robot-at ?curr)))
  )
 )