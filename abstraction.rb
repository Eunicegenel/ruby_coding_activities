class VolumeCircleBases
  include Math
  $pi = (Math::PI).round(2)
  def initialize(shape,radius,height)
    @shape = shape
    @r = radius
    @h = height
  end

  def get_volume
    if @shape == "cylinder"
      puts cylinder
    elsif @shape == "cone"
      puts cone
    elsif @shape == "sphere"
      puts sphere
    end
  end

  private

  def cylinder
    puts "Volume of Cylinder"
    return ($pi * @r * @r * @h).round(2)
  end

  def cone
    puts "Volume of Cone"
    return (($pi * @r * @r * @h)/3).round(2)
  end

  def sphere
    puts "Volume of Sphere"
    return ((4 * $pi * @r * @r * @r)/3).round(2)
  end
end

cylinder_1 = VolumeCircleBases.new("cylinder",5,7)
cone_1 = VolumeCircleBases.new("cone",5,7)
sphere_1 = VolumeCircleBases.new("sphere",5,0)

cylinder_1.get_volume
cone_1.get_volume
sphere_1.get_volume