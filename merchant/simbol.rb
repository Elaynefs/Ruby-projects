#encoding: UTF-8
class Simbol
  
  RM = Hash["I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000, "A"=>0]
	VALUE_INVALID="Valor inválido"

	def get_value_of nome
	    RM[nome]		
	end

	def get_total_value valor
	  valor_answer=VALUE_INVALID
	  valor_total=0
	  i=0

	  if !(is_repeted_4_times valor) and !(is_once_repeted valor)
	     valor= fix_n_simbol_impar valor
         while(i<valor.length)
           valor_total+=calculate_par_value_aux (get_value_of valor[i]),(get_value_of valor[i+1])
           i=i+2  
         end
         valor_answer=valor_total
      end
        valor_answer
	end	

	def calculate_par_value_aux first,second
	    calculo=0
          if first<second and (can_be_subtracted first,second) 
          	calculo= second-first
          else
            calculo= first+second
          end 
       calculo
	end	


	def can_be_subtracted first,second
        subtrac=true
		if first == RM["I"] and !(second == RM["V"] or second==RM["X"])
			subtrac=false

		elsif first == RM["X"] and !(second == RM["L"] or second==RM["C"])
			subtrac=false

		elsif first == RM["V"] or first == RM["L"] or first == RM["D"]
			subtrac=false	
        end	
        subtrac
	end	


	def fix_n_simbol_impar valor 
		number=valor.length
		if((number%2) == 1)
			valor= valor+"A"
		else
		    valor
        end
		valor    	
	end



	def is_repeted_4_times valor 
        num_I=0
        num_X=0
        num_C=0
        num_M=0
        is_repeted=false
        rep_num_I=0
        rep_num_X=0
        rep_num_C=0
        rep_num_M=0
        
        for i in (0 .. valor.length)    
        	if valor[i] == 'I'
				num_I+=1
                rep_num_I+=1
        		rep_num_X=0
       		 	rep_num_C=0
        		rep_num_M=0
        	elsif valor[i] == 'X'
        		num_X+=1
        		rep_num_I=0
        		rep_num_X+=1
       		 	rep_num_C=0
        		rep_num_M=0
        	elsif valor[i] == 'C'
        		num_C+=1
        		rep_num_I=0
        		rep_num_X=0
       		 	rep_num_C+=1
        		rep_num_M=0
        	elsif  valor[i] == 'M'
        		num_M+=1
        		rep_num_I=0
        		rep_num_X=0
       		 	rep_num_C=0
        		rep_num_M+=1
            end
            
            if ((num_I > 4 or (num_I==4 and rep_num_I==4)) or (num_X > 4 or (num_X==4 and rep_num_X==4)) or (num_C > 4 or (num_C==4 and rep_num_C==4)) or (num_M > 4 or (num_M==4 and rep_num_M==4)) )    	
             	is_repeted= true
            end 	
            
       end	
       is_repeted
	end	


	def is_once_repeted valor
		num_D=0
        num_L=0
        num_V=0  
        is_repeted=false
        
        for i in (0 .. valor.length)    
        	if valor[i] == 'D'
				num_D+=1
              
        	elsif valor[i] == 'L'
        		num_L+=1

        	elsif valor[i] == 'V'
        		num_V+=1
            end
            
            if ((num_D == 2 ) or (num_L == 2 ) or (num_V == 2 ))	
             	is_repeted= true
            end 	
            
       end	
       is_repeted

	end	



end

