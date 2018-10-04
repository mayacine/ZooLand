require "test_helper"

describe EmployeController do
  it "should get new" do
    get employe_new_url
    value(response).must_be :success?
  end

end
