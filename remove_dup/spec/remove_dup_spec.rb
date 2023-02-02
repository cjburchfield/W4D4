require "rspec"
require "remove_dup"


# describe "remove_dup" do
#   let(:arr_1) {[1,2,1,3,3]}
#   let(:duped) { remove_dup(arr_1.dup)}

#   it "should only contain unique elements" do
#     arr_1.each do |ele|
#      expect(duped.count(ele)).to eq(1)
#     end
#   end

#   it "should return a new array that does not mutate the original array" do
#     expect(arr_1.object_id).not_to eq(duped.object_id)
#     expect(duped).to be_a(Array)
#   end

#   it "should not include elements not in the original array" do
#     expect(duped.all?{|el|arr_1.include?(el)}).to eq(true)
#   end
# end

describe "two_sum" do
  let(:arr_1) {[-1, 0, 2, -2, 1]}
  let(:pairs) {[[0,4],[2,3]]}

  it "should return a new arrayy" do
    expect(pairs).to be_a(Array)
  end

  it "should have the elements of each subarray sum to zero" do
      expect(pairs.all? {|subpair| (arr_1[subpair[0]] + arr_1[subpair[1]]) == 0} ).to eq(true)
end

  it "should have each subarray be sorted dictionary wise" do #check indexes
    expect(pairs.all? {|subpair| subpair[0] < subpair[1]}).to eq(true)
  end


end

