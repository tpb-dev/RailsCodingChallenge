require 'cuboid'

#This test is incomplete and, in fact, won't even run without errors.
#  Do whatever you need to do to make it work and please add your own test cases for as many
#  methods as you feel need coverage
describe Cuboid do
  describe "init" do
    it "init a cuboid" do
        cub = Cuboid.new([0, 0, 0], h:1, w:2, l:3 )
        expect(cub).to be_a Cuboid
      end
    it "raises error if invalid sides" do
      expect{Cuboid.new([0, 0, 0], h:0, w:0, l:0 )}.to raise_error(ArgumentError)
    end
  end

  describe "move" do
    it "changes the origin in the simple happy case" do
      expect(subject.move_to!(1,2,3)).to be true
    end
  end

  describe "intersects?" do
    it "intesects correctly" do
      cub1 = Cuboid.new([0, 0, 0], h:1, w:2, l:3 )
      cub2 = Cuboid.new([0, 0, 0], h:1, w:2, l:5 )
      expect(cub1.intersects?(cub2)).to be(true)
    end

    it "does not intersect" do
      cub3 = Cuboid.new([0, 0, 0], h:1, w:2, l:3 )
      cub4 = Cuboid.new([10, 10, 10], h:10, w:20, l:50 )
      expect(cub3.intersects?(cub4)).to be(false)
    end
  end

end
