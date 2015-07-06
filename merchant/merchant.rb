require_relative "simbol"

require_relative "galaxy"

class Merchant 

 @answer 
 @galaxies
 @products
 def initialize()
  @answer=""
  @galaxies=Hash[]
  @products=Hash[]
end


def data_input text
  string_arr = text.split(' ')

  if(string_arr.length==3)
   @galaxies[string_arr[0]]=(Galaxy.new string_arr[0], string_arr[2])


  elsif (string_arr.length==6)
   v1= @galaxies[string_arr[0]].get_value
   v2=@galaxies[string_arr[1]].get_value
   prod=string_arr[2]
   cred=string_arr[4].to_f
   total=(cred/(define_unit_credits_value "#{v1}#{v2}").to_f).to_f
   @products[prod]=total



  elsif (string_arr.length==8 and string_arr[1]== "much")

   v1=@galaxies[string_arr[3]].get_value
   v2=@galaxies[string_arr[4]].get_value
   v3=@galaxies[string_arr[5]].get_value
   v4=@galaxies[string_arr[6]].get_value
   total=(define_unit_credits_value "#{v1}#{v2}#{v3}#{v4}").to_i
   @answer="#{@galaxies[string_arr[3]].get_name} #{@galaxies[string_arr[4]].get_name} #{@galaxies[string_arr[5]].get_name} #{@galaxies[string_arr[6]].get_name} is #{total}"#


   elsif (string_arr.length==8 and string_arr[1]== "many") 

      v1=@galaxies[string_arr[4]].get_value
      v2= @galaxies[string_arr[5]].get_value
      galaxy_value=(define_unit_credits_value "#{v1}#{v2}").to_i

      product_name=string_arr[6]
      prod_unit_value= @products[product_name]
      total=(galaxy_value*prod_unit_value).to_i
      @answer="#{@galaxies[string_arr[4]].get_name} #{@galaxies[string_arr[5]].get_name} #{product_name} is #{total} Credits"
      else
        @answer="I have no idea what you are talking about" 
   end 
      @answer
 end


    def define_unit_credits_value value
      simbol=Simbol.new
      unit_value= (simbol.get_total_value value).to_i
      unit_value	
    end

  end 



