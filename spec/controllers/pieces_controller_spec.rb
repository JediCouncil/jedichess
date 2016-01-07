require 'rails_helper'

RSpec.describe PiecesController, type: :controller do
  let(:piece){ create(:piece, x: 'B', y: 2) }

  describe "PUT #update" do
    it "updates piece's xy coordinates" do
      put :update, id: piece, piece: {x: 'B', y: 3}
      piece.reload
      expect(piece.x).to eq('B')
      expect(piece.y).to eq(3)
    end
  end
end