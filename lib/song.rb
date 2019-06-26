class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create           #our class constructor
    song = Song.new         #initializes a song
    song.save               #calls #save method adds to @@all variable there. Calling objects!
    return song
  end

  def self.create_by_name

  end

  def self.find_by_name

  end

  def self.find_or_create_by_name

  end

  def self.alphabetical

  end

  def self.new_from_filename

  end

  def self.create_from_filename

  end

  def self.destroy_all

  end
end
