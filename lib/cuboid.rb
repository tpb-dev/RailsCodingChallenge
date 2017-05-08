
class Cuboid
  attr_reader :x, :y, :z, :vert_x, :vert_y, :vert_z, :x_outer, :y_outer, :z_outer
  #BEGIN public methods that should be your starting point
  def initialize(a,b,c)
    @x, @y, @z = a, b, c
    if (a <= 0 || b<=0 || c<=0)
      raise ArgumentError.new("Sides can not be 0")
    move_to(0, 0, 0)

  def move_to!(x, y, z)
    @vert_x, @vert_y, @vert_z = x, y, z
    @x_outer, @y_outer, @z_outer = @x_outer + @x, @y_outer + @y, @z_outer + @z
  end

  def vertices
    @vert_x, @vert_y, @vert_z = 0, 0, 0
  end

  #returns true if the two cuboids intersect each other.  False otherwise.
  def intersects?(other)
    (@x <= other.x_outer && other.x <= @x_outer) & (@y <= other.y_outer && other.y <= @y_outer) &
    (@z <= other.z_outer && other.z <= @z_outer)
  end

  #END public methods that should be your starting point
end
