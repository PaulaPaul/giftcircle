class RegistrationsController < Devise::RegistrationsController
	protected

	def afer_sign_up_path_for(resource)
		"/people/#{resource_.id}/edit"
	end
end
