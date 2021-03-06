require_relative 'player'

class Bullet
attr_reader :x, :y, :angulo
attr_accessor :x, :y, :angulo
	def initialize(window,x,y,angulo)
	@window = window
	@x = x
	@y = y
	@angulo = angulo
	@imagens = Gosu::Image.new(@window,"media/bulletz3.png", true)
	end
	
	def draw
		imagem= @imagens
		imagem.draw_rot(@x, @y, 4, @angulo)
	end
	
	def move
		self.x += Gosu::offset_x(@angulo, 20)
		self.y += Gosu::offset_y(@angulo, 20)
	end
	
	end
	
class Clip
	attr_reader :x, :y
	attr_accessor :x, :y
	def initialize(window,x,y)
		@window = window
		@x = x
		@y = y
		@angulo = 0
		@imagens = Gosu::Image.new(@window,"media/bullets.png", true)
	end

	
	def draw
		imagem= @imagens
		imagem.draw_rot(@x, @y, 2, (@angulo += 1)%360)
	end
	
end	

class Shotgun
	attr_reader :x, :y
	attr_accessor :x, :y
	def initialize(window,x,y)
		@window = window
		@x = x
		@y = y
		@angulo = 0
		@imagens = Gosu::Image.new(@window, "media/m3_d.bmp", true)
	end

	
	def draw
		imagem= @imagens
		imagem.draw_rot(@x, @y, 2, @angulo)
	end
	
end	


