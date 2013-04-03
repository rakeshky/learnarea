class Paydetail < ActiveRecord::Base
  attr_accessible :pay_type, :price, :rating, :studyarea_id


belongs_to :studyarea

validates_uniqueness_of :studyarea_id,:message=>"already exist" 
   # def self.search(search)
  #if search
   # where('pay_type LIKE ?', "%#{search}%")
  #else
  #  scoped
 # end
#end
searchable do
  text :pay_type
  text :price
  text :rating 
  text :studyarea_id 
    
  end
end
