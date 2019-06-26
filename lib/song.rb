class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  #A constructor is a special method of the class which gets automatically invoked whenever an instance of the class is created.
  def self.create           #Class constructor
    song = Song.new         #Make a new instance. initializes a song
    song.save               #calls #save method adds to @@all variable there. Calling objects!
    return song             #returns our song instance
  end
  #Constructors may also contain the group of instructions or a method which will execute at the time of object creation
  def self.create_by_name(song_name)   #Class constructor
    song = self.create         
    song.name = song_name   #Set song instance = to name accessor and our argument we pass in
    return song             #returns song instance
  end

  def self.find_by_name(song_name)     #Class constructor. 'song_name' is string name of a song
    song = Song.create              #Creates instance that calls our '.create' method
    song = song_name
    return song                 #return song instance with name
  end
  #Finder class methods are responsible for finding instances based on some property or condition.
  def self.find_or_create_by_name(song_name)    #Class Finder, accepts string name of a song
    self.all.detect {|song| song.name == song_name}       #detect iterator looks at #self.all method to create song instance and match song instance
  end

  def self.alphabetical         #class method that returns all the songs in ascending order
    self.all.sort_by {|song| song.name}   #Sorts enum using a set of keys generated by mapping the values in enum through the given block.
  end                                     #sort_by returns an array

  def self.new_from_filename(filename)        #Class constructor
    parse = filename.split(" - ")
    artist_name = parse[0]
    song_name = parse[1].gsub(".mp3", "")

    song = self.new               #this here all updates our return
    song.name = song_name
    song.artist_name = artist_name
    return song
  end

  def self.create_from_filename
    parts = filename.split(" - ")
    artist_name = parts[0]
    song_name = parts[1].gsub(".mp3", "")

    song = self.create
    song.name = song_name
    song.artist_name = artist_name
    return song
  end

  def self.destroy_all
    self.all.clear
  end
end
