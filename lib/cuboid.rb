
class Cuboid
  attr_reader :x, :y, :z, :l, :w, :h, :x_outer, :y_outer, :z_outer
  #BEGIN public methods that should be your starting point
  def initialize(orA, orB, orC, a,b,c)
    @x, @y, @z = orA, orB, orC
    @l, @w, @h = a, b, c
    if (a <= 0 || b<=0 || c<=0)
      raise ArgumentError.new("Sides can not be 0")
    end
  end

  def move_to!(x, y, z)
    @x, @y, @z = x, y, z
    return true
  end

  def vertices
    @x, @y, @z = 0, 0, 0
  end

  #returns true if the two cuboids intersect each other.  False otherwise.
  def intersects?(other)
#    (@x <= other.x_outer && other.x <= @x_outer) || (@y <= other.y_outer && other.y <= @y_outer) ||
#    (@z <= other.z_outer && other.z <= @z_outer)


    (other.x < (@x + @l)) && ((other.x + other.l) > @x) &&
    (other.y < (@y + @w)) && ((other.y + other.w) > @y) &&
    (other.z < (@z + @h)) && ((other.z + other.h) > @z)

  end

  #END public methods that should be your starting point
end
