require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @user = params[:name]
    @user.reverse
  end

  get '/square/:number' do
    @num = params[:number]
    @num2 = @num.to_i
    @num3 = @num2 * @num2
    @num4 = @num3.to_s
    @num4
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @phrase * @num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    arr = []
    arr << params[:word1]
    arr << params[:word2]
    arr << params[:word3]
    arr << params[:word4]
    arr << params[:word5]

    var = arr.join(" ")
    var << "."
    var
  end

  get '/:operation/:number1/:number2' do
    @oper = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    answer = ""
      if @oper == "add"
        answer = @num1 + @num2
      elsif @oper == "subtract"
        answer = @num1 - @num2
      elsif @oper == "multiply"
        answer = @num1 * @num2
      elsif @oper == "divide"
        answer = @num1 / @num2
      end
      answer.to_s
  end
end
