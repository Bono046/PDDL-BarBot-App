(define (problem bbProb_v13) (:domain bbDom_v13)
    (:requirements :typing)
    (:objects 
        Campari Gin Vermuth Monte Vodka Coca Lemon Tonica - bottle
        Start Stop - station
        Americano Negroni Camparitonica Cocamonte Gintonic Ginlemon Vodkalemon Vodkatonic Camparilemon Camparimonte Drink1 Drink2 Drink3 Drink4 Drink5 Drink6 Drink7 Drink8 Drink9 Drink10 Drink11 Drink12 Drink13 Drink14 Drink15 Drink16 Drink17 Drink18 Drink19 Drink20 Drink21 Drink22 Drink23 Drink24 Drink25 Drink26 Drink27 Drink28 Drink29 Drink30 Drink31 Drink32 Drink33 Drink34 Drink35 Drink36 Drink37 Drink38 Drink39 Drink40 Drink41 Drink42 Drink43 Drink44 Drink45 Drink46 Drink47 Drink48 Drink49 Drink50 Drink51 Drink52 Drink53 Drink54 Drink55 Drink56 Drink57 Drink58 Drink59 Drink60 Drink61 Drink62 Drink63 Drink64 Drink65 Drink66 Drink67 Drink68 Drink69 Drink70 Drink71 Drink72 Drink73 Drink74 Drink75 Drink76 Drink77 Drink78 Drink79 Drink80 Drink81 Drink82 Drink83 Drink84 Drink85 Drink86 Drink87 Drink88 Drink89 Drink90 Drink91 Drink92 Drink93 Drink94 Drink95 Drink96 Drink97 Drink98 Drink99 Drink100 - drink
        
    )

    (:init
    ;todo: put the initial state's facts and numeric values here
        
        ;map
        (isnear Gin Vermuth )
        (isnear Gin Campari )
        (isnear Campari Monte )
        (isnear Monte Coca )
        (isnear Vermuth Gin )
        (isnear Campari Gin  )
        (isnear Monte Campari  )
        (isnear Coca Monte  )
        (isnear Vermuth Monte )
        (isnear Vodka Vermuth )
        (isnear Vermuth Vodka )
        (isnear Coca Vodka )
        (isnear Vodka Coca )
        (isnear Monte Vermuth )
        (isnear Gin Stop )
        (isnear Campari Start )
        (isnear Start Campari )
        (isnear Stop Start)
        (isnear Coca Lemon)
        (isnear Lemon Coca)
        (isnear Vodka Tonica)
        (isnear Tonica Vodka)
        (isnear Tonica Lemon)
        (isnear Lemon Tonica)
        

        ;punto di partenza
        (located Start)

        (beStart Start)
        (not(beStart Stop))


        (= (used-ingredient Negroni) 0)     
        (= (required-ingredient Negroni Campari) 2)     
        (=(required-ingredient Negroni Gin)2)   
        (=(required-ingredient Negroni Vermuth)2)

        (= (used-ingredient Cocamonte) 0)       
        (= (required-ingredient Cocamonte Monte) 3)       
        (= (required-ingredient Cocamonte Coca) 3)

        (=(used-ingredient Camparitonica)0)
        (= (required-ingredient Camparitonica Campari) 3)    
        (= (required-ingredient Camparitonica Tonica) 3)

        (=(used-ingredient Ginlemon)0)
        (= (required-ingredient  Ginlemon Gin) 3)    
        (= (required-ingredient  Ginlemon Lemon) 3)

        (=(used-ingredient Gintonic)0)
        (= (required-ingredient  Gintonic Gin) 3)    
        (= (required-ingredient  Gintonic Tonica) 3)

        (=(used-ingredient Vodkalemon)0)
        (= (required-ingredient  Vodkalemon Vodka) 3)    
        (= (required-ingredient  Vodkalemon Lemon) 3)

        (=(used-ingredient Vodkatonic)0)
        (= (required-ingredient  Vodkatonic Vodka) 3)    
        (= (required-ingredient  Vodkatonic Tonica) 3)

        (=(used-ingredient Camparilemon)0)
        (= (required-ingredient Camparilemon Campari) 3)    
        (= (required-ingredient Camparilemon Lemon) 3)

        (=(used-ingredient Camparimonte)0)
        (= (required-ingredient Camparimonte Campari) 3)    
        (= (required-ingredient Camparimonte Monte) 3)     
        
        (= (used-ingredient Americano) 0)     
        (= (required-ingredient Americano Campari) 2)
        (=(required-ingredient Americano Vermuth)2)
        (= (required-ingredient  Americano Tonica) 2)        
 
   (= (used-ingredient Drink11)0)
(= (required-ingredient Drink11 Gin)6)
 (= (used-ingredient Drink12)0)
(= (required-ingredient Drink12 Lemon)6)
 (= (used-ingredient Drink13)0)
(= (required-ingredient Drink13 Gin)6)
 (= (used-ingredient Drink14)0)
(= (required-ingredient Drink14 Lemon)6)
 (= (used-ingredient Drink15)0)
(= (required-ingredient Drink15 Vermuth)6)
 (= (used-ingredient Drink16)0)
(= (required-ingredient Drink16 Gin)6)
 (= (used-ingredient Drink17)0)
(= (required-ingredient Drink17 Lemon)6)
 (= (used-ingredient Drink18)0)
(= (required-ingredient Drink18 Coca)6)
 (= (used-ingredient Drink19)0)
(= (required-ingredient Drink19 Monte)6)
 (= (used-ingredient Drink20)0)
(= (required-ingredient Drink20 Campari)6)
 (= (used-ingredient Drink1)0)
(= (required-ingredient Drink1 Monte)3)
(= (required-ingredient Drink1 Campari)3)
 (= (used-ingredient Drink2)0)
(= (required-ingredient Drink2 Campari)3)
(= (required-ingredient Drink2 Monte)3)
 (= (used-ingredient Drink3)0)
(= (required-ingredient Drink3 Tonica)3)
(= (required-ingredient Drink3 Gin)3)
 (= (used-ingredient Drink4)0)
(= (required-ingredient Drink4 Vermuth)3)
(= (required-ingredient Drink4 Tonica)3)
 (= (used-ingredient Drink5)0)
(= (required-ingredient Drink5 Tonica)3)
(= (required-ingredient Drink5 Lemon)3)
 (= (used-ingredient Drink6)0)
(= (required-ingredient Drink6 Vermuth)3)
(= (required-ingredient Drink6 Monte)3)
 (= (used-ingredient Drink7)0)
(= (required-ingredient Drink7 Vermuth)3)
(= (required-ingredient Drink7 Campari)3)
 (= (used-ingredient Drink8)0)
(= (required-ingredient Drink8 Vermuth)3)
(= (required-ingredient Drink8 Vodka)3)
 (= (used-ingredient Drink9)0)
(= (required-ingredient Drink9 Gin)3)
(= (required-ingredient Drink9 Vermuth)3)
 (= (used-ingredient Drink10)0)
(= (required-ingredient Drink10 Monte)3)
(= (required-ingredient Drink10 Lemon)3)
 (= (used-ingredient Drink21)0)
(= (required-ingredient Drink21 Lemon)2)
(= (required-ingredient Drink21 Vodka)2)
(= (required-ingredient Drink21 Campari)2)
 (= (used-ingredient Drink22)0)
(= (required-ingredient Drink22 Monte)2)
(= (required-ingredient Drink22 Tonica)2)
(= (required-ingredient Drink22 Campari)2)
 (= (used-ingredient Drink23)0)
(= (required-ingredient Drink23 Monte)2)
(= (required-ingredient Drink23 Tonica)2)
(= (required-ingredient Drink23 Vermuth)2)
 (= (used-ingredient Drink24)0)
(= (required-ingredient Drink24 Vermuth)2)
(= (required-ingredient Drink24 Gin)2)
(= (required-ingredient Drink24 Campari)2)
 (= (used-ingredient Drink25)0)
(= (required-ingredient Drink25 Campari)2)
(= (required-ingredient Drink25 Vermuth)2)
(= (required-ingredient Drink25 Lemon)2)
 (= (used-ingredient Drink26)0)
(= (required-ingredient Drink26 Tonica)2)
(= (required-ingredient Drink26 Coca)2)
(= (required-ingredient Drink26 Monte)2)
 (= (used-ingredient Drink27)0)
(= (required-ingredient Drink27 Vermuth)2)
(= (required-ingredient Drink27 Gin)2)
(= (required-ingredient Drink27 Campari)2)
 (= (used-ingredient Drink28)0)
(= (required-ingredient Drink28 Gin)2)
(= (required-ingredient Drink28 Coca)2)
(= (required-ingredient Drink28 Tonica)2)
 (= (used-ingredient Drink29)0)
(= (required-ingredient Drink29 Monte)2)
(= (required-ingredient Drink29 Campari)2)
(= (required-ingredient Drink29 Coca)2)
 (= (used-ingredient Drink30)0)
(= (required-ingredient Drink30 Tonica)2)
(= (required-ingredient Drink30 Vodka)2)
(= (required-ingredient Drink30 Coca)2)







        ;levello bottiglie
        ;ogni compose è 15 ml, quindi una bottiglia di 1L sono 66 compose
        (=(level Campari) 40)
        (=(level Gin)40)
        (=(level Vermuth) 40)
        (=(level Coca) 40)
        (=(level Monte) 40)
        (=(level Vodka) 40)
        (=(level Tonica) 40)
        (=(level Lemon) 40)
        (handFree)
    	 
                                                                                                                        
    )                                                               


    (:goal 
        (and    
          (served Negroni) (served Cocamonte) (served Gintonic) (served Ginlemon) (served Vodkalemon) (served Vodkatonic) (served Americano) (served Camparilemon) (served Camparimonte) (served Camparitonica)
          ;(served Drink1) (served Drink2) (served Drink3) (served Drink4) (served Drink5) (served Drink6) (served Drink7) (served Drink8) (served Drink9) (served Drink10) 
          ;(served Drink11) (served Drink12) (served Drink13) (served Drink14) (served Drink15) (served Drink16) (served Drink17) (served Drink18) (served Drink19) (served Drink20) (served Drink21) (served Drink22) (served Drink23) (served Drink24) (served Drink25)

          

          ;LIMIT
          ;(served Drink26) (served Drink27) (served Drink28) (served Drink29) (served Drink30)
          
        )

    )

   


)


  