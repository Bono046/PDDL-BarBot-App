
;DESCRIZIONE DELLA VERISONE
;ready

(define (domain bbDom_v13)
    (:requirements :typing :fluents :negative-preconditions :disjunctive-preconditions :conditional-effects :universal-preconditions :equality)


    (:types ;todo: enumerate types and their hierarchy here, e.g. car truck bus - vehicle
        agent - object
        bottle - agent
        station - agent
        drink 
        level

    )


    (:predicates ;todo: define predicates here
   

        (located ?x - agent)
        (isnear ?x ?y - agent )
    
        (beStart ?x - station)
    
        (order-in-progress ?d - drink)
        (served ?x - drink)

        (handFree)

        (warningLevel ?b - bottle)
  
    )

    (:functions
        (required-ingredient ?d - drink ?b - bottle)    ;numero delle volte che l'ingrediente serve nel drink
        (level ?b - bottle)                          ;livello della bottiglia, si decrementa ad ogni compose
        (used-ingredient ?d - drink)                    ;numero ingredienti ok, a 6 finish-order
    )


    
    (:action moveToAgent
        :parameters (?from ?to - agent)
        :precondition (and (located ?from) (isnear ?from ?to))
        :effect (and (located ?to) (not(located ?from))  )
    )

    
    (:action compose
        :parameters (?d - drink  ?b - bottle)
        :precondition (and (order-in-progress ?d) (located ?b) (> (required-ingredient ?d ?b) 0) 
                          (> (level ?b) 6)
                      )
        :effect (and (decrease (required-ingredient ?d ?b)1) (decrease (level ?b) 1) (increase (used-ingredient ?d) 1))
                 
    )
  

    (:action warning
        :parameters (?b - bottle)
        :precondition (and (< (level ?b) 10) ; CRITIC
                           (handFree)
                        )
        :effect (and (warningLevel ?b) )
    )

    (:action change
        :parameters (?b - bottle)
        :precondition (and   (warningLevel ?b) (handFree))
        :effect (and  (not(warningLevel ?b)) (assign (level ?b) 66 )) ;CRITIC
    )

    
    (:action start-order
        :parameters (?d - drink ?s - station)
        :precondition (and (located ?s) (beStart ?s) (not(served ?d)) (handFree)  )
        :effect (and (order-in-progress ?d) (not(handFree)) ) 
    )

    
    (:action finish-order
        :parameters (?d - drink ?s - station)
        :precondition (and  (located ?s) (not(beStart ?s)) (not(served ?d))
                            (= (used-ingredient ?d) 6)
                      )
        :effect (and (served ?d) (handFree) (not(order-in-progress ?d)))
    )


)