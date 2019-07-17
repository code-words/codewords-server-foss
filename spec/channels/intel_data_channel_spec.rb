require 'rails_helper'

describe IntelDataChannel, type: :channel do
  let(:user){User.create(name: "Archer")}
  before do
    stub_connection user_id: user.id
  end

  it 'rejects when no token is provided' do
    subscribe
    expect(subscription).to be_rejected
  end

  it 'rejects when an invalid token is provided' do
    subscribe(token: "nonsense")
    expect(subscription).to be_rejected
  end

  it 'rejects when the player does not have intel permission' do
    game = Game.create()
    player = game.players.create(user: user)
    subscribe(token: player.token)

    expect(subscription).to be_rejected
  end

  it 'subscribes to a room when a valid player token is provided' do
    game = Game.create()
    player = game.players.create(user: user, role: :intel)
    subscribe(token: player.token)

    expect(subscription).to be_confirmed
    expect(subscription).to have_stream_for("intel_#{game.intel_key}")
  end
end