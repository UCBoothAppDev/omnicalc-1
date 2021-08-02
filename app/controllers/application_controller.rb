class ApplicationController < ActionController::Base

    def blank_square_form

        render({ :template => "calculation_templates/square_form.html.erb"})
    end 

    def calculate_square
            # params = {"elephant"=>"42"}

    @num = params.fetch("elephant").to_f
    @square_of_num = @num ** 2

        render({ :template => "calculation_templates/square_results.html.erb"})
    end 

    def calculate_random 

        @lower = params.fetch("user_min").to_f
        @upper = params.fetch("user_max").to_f
        @result = rand(@lower..@upper)

        render({ :template => "calculation_templates/rand_results.html.erb" })
    end

    def rand_with_form

        render({ :template => "calculation_templates/rand_with_form.html.erb"})

    end

    def new_payment

        render({ :template => "calculation_templates/new_payment.html.erb"})

    end

end
