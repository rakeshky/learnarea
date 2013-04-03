class Studyarea < ActiveRecord::Base
  attr_accessible :exp, :lang, :training_type, :personal_id
belongs_to :personal
has_many :paydetails
 validates :lang, :presence => {:message=>"plz fill language"},:uniqueness=>{:message=>"this language already existed with the same id"}
  #def self.search(search,type)
 #if type
   #where('training_type LIKE ?', "%#{type}%")
  #elsif search
   #  where('lang LIKE ?', "%#{search}%")
 #if type and search
 #	where('lang,training_type LIKE ?', "%#{search}% ,%#{type}%" )
 
 #else

  #  scoped
  #end
#end

searchable do
  text :exp
  text :lang
  text :training_type 
  text :personal_id 
    
  end
  

end
