module ApplicationHelper
	def close_session_path
		case 
		when admin_signed_in?
			destroy_admin_session_path
		when user_signed_in?
			destroy_user_session_path
		end
	end

	def active?
		
	end
end
