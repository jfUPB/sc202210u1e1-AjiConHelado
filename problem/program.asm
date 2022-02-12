// pablo zulaica velez
// 000416037
// pablo.zulaica@upb.edu.co
(START)
// declaracion de variables
   
	@24576// se crea la variable del input del teclado
	d=a
	@input_teclado
	m=d
	@70
	d=a
	@tecla_f // se crea la variable de la tecla f
	
    
	(loop_teclado)

			@24575
	    d=a
	    @pixel_actual
	    m=d
	    // se revisa si hay algun imput en el teclado y lo compara con el valor de la letra c
	    @input_teclado
	    a=m
	    d=m
	    @color_tinte
	    m=-1
	    @tecla_f
    	d=d-m
	    @fill_loop
	    d;jeq
	    // repite el loop hasta que detecte la tecla f 
	    @loop_teclado
        0;jmp

		(fill_loop)		              
	         @color_tinte  // se empieza el loop de el llenado de los pixeles de la pantalla si el valor de color_tinte es negro osea -1
	         d=m
	        @pixel_actual
	         a=m   // los pixeles empiezan a cambiar su valor al color del tinte desde la posicion 24575 y se hace un loop de resta hasta la posicion 16384   
	         m=d // que se traducen a la primera y ultima posicion de memoria en la pantalla, 
            @pixel_actual
	        d=m
         	@16384
	         d=m
         	@16384
	        d=d-a
	         @fin
	         d;jle
	        
	         @pixel_actual
	        m=m-1  //decrece la posicion actual
	        @fill_loop
	     0;jmp


          (fin)
          @0
          @fin
	     0;jmp
