module SessionsHelper
	#validacion de usuario administrador
	def sign_in(user)
		$some=user
	end
	def admin?
		if(defined?($some))
			if($some.name=="admin")
				return true
			else
				return false
			end
		end
	end
end
