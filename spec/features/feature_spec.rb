feature 'playing rock paper scissors' do
  
  before(:each) { enter_name_and_play }

  feature 'entering player name' do

    scenario 'enter the player name and see it on the play page' do
      expect(page).to have_content 'Ainsley'
    end

  end

  feature 'choosing a weapon' do

    scenario 'allows rock to be chosen' do
      expect(page).to have_css '#rock-icon'
    end

    scenario 'allows paper to be chosen' do
      expect(page).to have_css '#paper-icon'
    end

    scenario 'allows scissors to be chosen' do
      expect(page).to have_css '#scissors-icon'
    end

  end

  feature 'showing the game result' do

    scenario 'winning the game' do
      allow(Game.current_game).to receive(:result) { "win" }
      find("#rock-icon").click
      click_button "Go!"
      expect(page).to have_content 'You win'
    end

    scenario 'losing the game' do
      allow(Game.current_game).to receive(:result) { "lose" }
      find("#rock-icon").click
      click_button "Go!"
      expect(page).to have_content 'You lose'
    end

    scenario 'the game is a tie' do
      allow(Game.current_game).to receive(:result) { "tie" }
      find("#rock-icon").click
      click_button "Go!"
      expect(page).to have_content 'You tie'
    end

  end

  feature 'player can play again' do

    scenario 'Play again button is visible' do
      find("#rock-icon").click
      click_button "Go!"
      expect(page).to have_button 'Play again'
    end

  end

end
