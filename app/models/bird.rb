class Bird < ApplicationRecord

    def create
        # create! exceptions will be handled by the rescue_from ActiveRecord::RecordInvalid code
        bird = Bird.create!(bird_params)
        render json: bird, status: :created
      end
      
      def update
        bird = find_bird
        # update! exceptions will be handled by the rescue_from ActiveRecord::RecordInvalid code
        bird.update!(bird_params)
        render json: bird
      end

end
