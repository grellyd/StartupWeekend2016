class ApplicationController < ActionController::API
    include ActionController::MimeResponds
    # before_filter :parse_request, :authenticate_user_from_token!

    # private
    #     def authenticate_user_from_token!
    #         if !@json['api_token']
    #             render nothing: true, status: unauthorized
    #         else
    #             @user = nil
    #             # now validate if needed. TODO
    #         end
    #     end

    #     def parse_request
    #         @json = JSON.parse(request.body.read)
    #     end
end

