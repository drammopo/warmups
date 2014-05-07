class Dogs
  POOR      = (0..5).to_a.sample
  AVERAGE   = (6..10).to_a.sample
  EXCELLENT = (11..15).to_a.sample

  def initialize
    joe   = {
      :name => {:first => "Joe", :last=> "Smith"},
      :owner_quality => EXCELLENT
    }
    sarah = {
      :name => {:first => "Sarah", :last => "Smith"},
      :owner_quality => AVERAGE
    }
    andrew = {
      :name => {:first => "Andrew", :last => "Beter"},
      :owner_quality => AVERAGE
    }

    @dogs = [
      {name: "Fido",     size: :large,  owner: joe},
      {name: "Yapper",   size: :small,  owner: joe},
      {name: "Bruiser",  size: :large,  owner: joe},
      {name: "Tank",     size: :huge,   owner: sarah},
      {name: "Beast",    size: :large,  owner: sarah},
      {name: "Harleigh", size: :medium, owner: andrew},
      {name: "Trixie",   size: :small,  owner: andrew}
    ]
  end

  def small_dogs
    @dogs.select { |dog| dog[:size] == :small}
  end

  def huge_dog
    @dogs.detect { |dog| dog[:size] == :huge}
  end

  def large_dog_names
    large_dogs = []
    @dogs.map { |dog| large_dogs << dog[:name] if dog[:size] == :large }
    large_dogs
  end

  def joes_large_dogs
    joes_large_dogs = []
    @dogs.map do |dog|
      joes_large_dogs << dog[:name] if dog[:size] == :large && dog[:owner][:name][:first] == "Joe"
    end
     joes_large_dogs
  end

  def sizes
    sizes = @dogs.map { |dog| dog[:size] }
    sizes.uniq
  end

  def owners
    owners = []
    @dogs.map { |dog| owners << "#{dog[:owner][:name][:first]} #{dog[:owner][:name][:last]}" }
    owners.uniq
  end

  def average_owners
    average_quality_owners = []
    @dogs.map do |dog|
      quality = dog[:owner][:owner_quality]
      if quality < 11 && quality > 5
        average_quality_owners << "#{dog[:owner][:name][:first]} #{dog[:owner][:name][:last]}"
      end
    end
    average_quality_owners.uniq
  end
end
