class StudyareaController < ApplicationController
	helper_method :sort_column ,:sort_direction

def detail
@in=Personal.new
if request.post?
@in=Personal.create(:name=>params[:name],:city=>params[:city],:gender=>params[:gender])
  session[:id]=@in.id
#redirect_to :action=>"index1"
end

end
def index

	end

def index1

#@id=session[:id]

@id=session[:id]

logger.info"..........1.#{@id}"
#@per=Personal.find_by_id(@id)

if request.post?
@study=Studyarea.create(:training_type=>params[:trainingtype],:lang=>params[:lang],:exp=>params[:exp],:personal_id=>params[:id1])
#redirect_to :action=>"index2",:id1=>"#{@study.id}"
	end
end

def index2

	@id1=session[:id]
	logger.info"..........2.#{@id1}"

	@area=Studyarea.find_all_by_personal_id(@id1)
		
if request.post?
@pay=Paydetail.create(:pay_type=>params[:paytype],:price=>params[:price],:rating=>params[:rating],:studyarea_id=>params[:course_id])

end
end

def index3
@person1=Personal.find(:all)
logger.info"..........3.#{@person1}"
# @person = Personal.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:per_page => 5, :page => params[:page])
end


def index4

#@b=params[:id4]
#logger.info".......1234......#{@b}"
@p=Studyarea.new
if request.post?
@p=Studyarea.create(:training_type=>params[:trainingtype],:lang=>params[:lang],:exp=>params[:exp],:personal_id=>params[:id2])

end

end
def index5
	#not working
logger.info"XZXZXZXZ.....#{params[:id5]}......FDGFDGDFGFG"
@abc=params[:id5]
@area1=Studyarea.find_all_by_personal_id(@abc)
logger.info "gdgjdfgkdlfjgkdfjglkdfjgkl#{@area1}"
if request.post?
@pay=Paydetail.create(:pay_type=>params[:paytype],:price=>params[:price],:rating=>params[:rating],:personal_id=>params[:id12],:studyarea_id=>params[:course_id])

end
end


def index6

#@person3=Studyarea.find_by_sql("select * from studyareas")

  @search = Studyarea.search do
    fulltext params[:search]
   fulltext params[:tutor_type]
fulltext params[:experience]   
paginate(:per_page => 3, :page => params[:page])
        
#    with(:published_at).less_than(Time.zone.now)
 #   facet(:publish_month)
  #  with(:publish_month, params[:month]) if params[:month].present?
  end
  @values = @search.results
	end

def index7
@a=params[:id]

@b=params[:person]

if request.post?
@pay1=Paydetail.create(:pay_type=>params[:paytype],:price=>params[:price],:rating=>params[:rating],:studyarea_id=>params[:course_id])

end
end

def index8
#@a1=Personal.find_by_id(32)
#logger.info".......#{@a1.id}"
#@ab1=@a1.studyareas
#logger.info"....123...#{@ab1}"
#for a in @ab1 do
#@abc1=a.paydetails
#logger.info"....1234...#{@abc1}"
#end
@a1 = Personal.search do
fulltext params[:search]
#paginate(:per_page => 3, :page => params[:page])
#    with(:published_at).less_than(Time.zone.now)
 #   facet(:publish_month)
  #  with(:publish_month, params[:month]) if params[:month].present?
  end
@values = @a1.results
logger.info"===================#{@values}"

#if @values
#@values1=@values.id.studyareas
#for a in @values1 do
#@abc1=a.paydetails
#logger.info"....1234...#{@abc1}"
#end
#end

#logger.info"....123...#{@values.id}"



        
#    with(:published_at).less_than(Time.zone.now)
 #   facet(:publish_month)
  #  with(:publish_month, params[:month]) if params[:month].present?
end

	private 
def sort_column
params[:sort] || 'name'
end
def sort_direction

params[:direction]|| 'asc'
end

end
