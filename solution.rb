require 'sinatra'


get '/' do
	erb :index
end

post '/dilo' do
	@mensaje = params[:mensaje]
	if (@mensaje == @mensaje.upcase)
		@resp = 'Ahhh si, manzanas!'

	else
		@resp = 'Habla más duro mijito'
	end
	erb :response
end
