// pablo zulaica velez
// 000416037
// pablo.zulaica@upb.edu.co
(START)
// declaracion de variables
   
	@24576  // se crea la variable del input del teclado
	D=A
	@input_teclado
	M=D
	@70
	D=A
	@tecla_f // se crea la variable de la tecla f
	M=D
	@67
	D=A
	@tecla_c // se crea la variable de la tecla c
	M=D

    
	(loop_teclado)

		 @color_tinte
	    D=M
	    @tinte_negro
	    D;JNE


		(tinte_blanco) //detecto que el tinte es blanco se mete al loop de deteccion de tecla f
		@24575
	    D=A
	    @pixel_actual
	    M=D
	    // se revisa si hay algun imput en el teclado y lo compara con el valor de la letra c
	    @input_teclado
	    A=M
	    D=M
	    @color_tinte
	    M=-1
	    @tecla_f
    	D=D-M
	    @fill_loop
	    D;JEQ
	    // repite el loop hasta que detecte la tecla f o detecte que el tinte de la pantalla sea negro
	    @loop_teclado
        0;JMP


		(tinte_negro) //detecto que el tinte es negro, se metio al loop de deteccion de la tecla c
		@24575
	    D=A
	    @pixel_actual
	    M=D
	    // se revisa si hay algun imput en el teclado y lo compara con el valor de la letra c
	    @input_teclado
	    A=M
	    D=M
	    @color_tinte
	    M=0
	    @tecla_c
	    D=D-M
	    @fill_loop
	    D;JEQ
        @loop_teclado
	 0;JMP


		(fill_loop)		              
	         @color_tinte  // se empieza el loop de el llenado de los pixeles de la pantalla si el valor de color_tinte es 0 se pinta blanco, si es - 1 negro
	         D=M
	        @pixel_actual
	         A=M   // los pixeles empiezan A cambiar su valor al color del tinte desde la posicion 24575 y se hace un loop de resta hasta la posicion 16384   
	         M=D // que se traducen A la primera y ultima posicion de memoria en la pantalla, luego se comprueba si la resta de la posicion actual y 16384 es 0, 
                  //si es el caso se rompe el loop y se devuelve al loop del teclado
            @pixel_actual
	        D=M
         	@16384
	        D=D-A
	         @loop_teclado
	         D;JLE
	        
	         @pixel_actual
	        M=M-1  //decrece la posicion actual
	        @fill_loop
	     0;JMP
