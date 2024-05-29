class MultiplicationController < ApplicationController
  def multiplication
    render({ :template => "multiplication_templates/mult_form" })
  end

  def multiply
    first_number = params[:first_number].to_f
    second_number = params[:second_number].to_f

    @result =  first_number * second_number

    render({ :template => "multiplication_templates/mult_results" })
  end
end
