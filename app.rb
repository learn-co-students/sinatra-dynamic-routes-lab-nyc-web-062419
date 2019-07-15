require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do 
    @name = params[:name]
    "#{@name.reverse}"
  end
  get "/square/:number" do 
    @num = params[:number]
    "#{@num.to_i**2}"
  end
  get "/say/:number/:phrase" do 
      @num,@phrase = params[:number].to_i,params[:phrase]
      string = ""
      @num.times do 
        string += @phrase
      end
      string
  end
  get "/say/:word1/:word2/:word3/:word4/:word5" do 
    @arr = [ params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]]
    "#{@arr.join(" ")}."
  end
  get "/:operation/:number1/:number2" do
    @num1,@num2,@operation = params[:number1].to_i, params[:number2].to_i,params[:operation]
      case @operation
      when "add"
       (@num1+@num2).to_s
      when "multiply"
        (@num1*@num2).to_s
      when "subtract"
        (@num1-@num2).to_s
      when "divide"
        (@num1/@num2).to_s
      end
  end



  
  
  # GET /say/:word1/:word2/:word3/:word4/:word5
  #   sends a 200 status code (FAILED - 10)
  #   concatenates the words and adds a period (FAILED - 11)
  #   isn't hard-coded (FAILED - 12)
  # GET /:operation/:number1/:number2
  #   adds two numbers together (FAILED - 13)
  #   subtracts the second number from the first (FAILED - 14)
  #   multiplies two numbers together (FAILED - 15)
  #   divides the first number by the second number (FAILED - 16)

  # get 

end