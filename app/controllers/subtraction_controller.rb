class SubtractionController < ApplicationController
  def show_sub_form
    render({ :template => "subtraction_templates/sub_form" })
  end

  def subtract
    first_number = params[:first_number].to_f
    second_number = params[:second_number].to_f

    @result =  second_number - first_number

    render({ :template => "subtraction_templates/sub_results" })
  end
end
