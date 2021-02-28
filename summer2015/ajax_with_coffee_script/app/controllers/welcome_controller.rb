class WelcomeController < ApplicationController
  def index
  end

  def update_click_count
    # ClickCount.first.update(click_count_params)
    click_count = ClikCount.first_or_initialize
    if click_count.update(click_count_params)
      render(json: {message: 'click count updated'})
    else
      render(json: {message: 'Click count did not update'})
    end
  end

  private
    def click_count_params
      # params.require(:click_count).permit(:clickCount)
      params.require(:clickCount).permit(:val)
    end
end
