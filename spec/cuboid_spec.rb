require 'cuboid'

#This test is incomplete and, in fact, won't even run without errors.
#  Do whatever you need to do to make it work and please add your own test cases for as many
#  methods as you feel need coverage
describe Cuboid do
  describe "init" do
    it "init a cuboid" do
        cub = Cuboid.new(0, 0, 0, 1, 2, 3 )
        expect(cub).to be_a Cuboid
      end
    it "raises error if invalid sides" do
      expect{Cuboid.new(0, 0, 0, 0, 0, 0 )}.to raise_error(ArgumentError)
    end
  end

  describe "move" do
    it "changes the origin in the simple happy case" do
      cub0 = Cuboid.new(0, 0, 0, 1, 2, 3 )
      expect(cub0.move_to!(1,2,3)).to be true
    end
  end

  describe "intersects?" do
    it "intesects correctly" do
      cub1 = Cuboid.new(0, 0, 0, 1, 2, 3 )
      cub2 = Cuboid.new(0, 0, 0, 1, 2, 4 )
      expect(cub1.intersects?(cub2)).to be(true)
    end

    it "does not intersect" do
      cub3 = Cuboid.new(6, 6, 6, 6, 6, 6 )
      cub4 = Cuboid.new(0, 0, 0, 1, 1, 1 )
      expect(cub3.intersects?(cub4)).to be(false)
    end
  end

end
