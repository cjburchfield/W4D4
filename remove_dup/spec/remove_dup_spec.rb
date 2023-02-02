require "rspec"
require "remove_dup_spec"


describe "remove_dup" do
  subject(:arr_1)
   it "returns duped arr" do
    expect(arr_1).to eq(arr_1.uniq)
   end
  end

end
