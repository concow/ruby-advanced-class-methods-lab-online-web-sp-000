class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create           #Class constructor
    song = Song.new         #Make a new instance. initializes a song
    song.save               #calls #save method adds to @@all variable there. Calling objects!
    return song             #returns our song instance
  end

  def self.create_by_name(song_name)   #Class constructor
    song = Song.new         #Make a new instance
    song.name = song_name   #Set song instance = to name accessor and our argument we pass in
    return song             #returns song instance
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
