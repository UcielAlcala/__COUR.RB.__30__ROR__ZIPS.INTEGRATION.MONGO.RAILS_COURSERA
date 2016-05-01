class Zip
  #Convenience method for access to client in console
  def self.mongo_client
    Mongoid::Clients.default
  end

  #Convenience method for access to client in console
  def self.collection
    self.mongo_client['zips']
  end

  #Return all documents in zips collection
  def self.all(prototype={}, sort={:population=>1}, offset=0, limit=100)
    collection.find.projection({_id:true, city:true, state:true, pop:true})
  end
end
