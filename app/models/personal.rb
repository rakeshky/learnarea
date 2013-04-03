class Personal < ActiveRecord::Base
  attr_accessible :city, :gender, :name, :email

  has_many :studyareas

 validates :email, :presence => {:message=>"plz fill email"},:uniqueness=>{:message=>"this user already existed with the same email"}

  #def self.search(search)
  #if search
   # where('name LIKE ?', "%#{search}%")
  #else
  #  scoped
 # end
#end
searchable do
  text :city
  text :gender
  text :name
text :id
   text :lang do
      studyareas.collect(&:lang).compact if studyareas.any?
    end
text :exp do
      studyareas.collect(&:exp).compact if studyareas.any?
end
text :training_type do
      studyareas.collect(&:training_type).compact if studyareas.any?
end

  end
end