class DemoController < ApplicationController

  def html5

  end
  def index
	# render('hello')
	# redirect_to(:action => 'other_hello')
	@id = (params[:id]).to_i
	@page = (params[:page]).to_i

    def col
      @id.each
    end
  

  end

  def hello
    @array = [1,2,3,4,5,6,7]	

  end

  def other_hello
	render(:text => "Hello other hello")
  end

end
