require 'rails_helper'

RSpec.describe SongsController, type: :controller do
  it "should get index" do
    get :index
    expect(response).to be_success
    expect(assigns(:songs)).not_to eq(nil)
  end
end
