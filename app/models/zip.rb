class Zip
  #Convenience method for access to client in console
  def self.mongo_client
    Mongoid::Clients.default
  end

  #Convenience method for access to client in console
  def self.collection
    self.mongo_client['zips']
  end
end
