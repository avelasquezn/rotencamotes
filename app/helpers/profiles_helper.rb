module ProfilesHelper
  
  def your_own?
    (current_user == @profile.user) # or admin ||  
  end
  
end
