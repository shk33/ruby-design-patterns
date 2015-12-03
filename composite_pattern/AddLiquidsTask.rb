require "./Task"

class AddLiquidsTask < Task
  
  def initialize
    super('Mix the liquids up!')
  end

  def get_time_required
   3.0 # Mix for 3 minutes
  end
end