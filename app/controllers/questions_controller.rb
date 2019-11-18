class QuestionsController < ApplicationController
  MESSAGE = [
    'Great!',
    'Silly question, get dressed and go to work!',
    'I don\'t care, get dressed and go to work!'
  ].freeze

  def ask

  end

  def answer
    @ask = params['question']
    @answer = MESSAGE[2]
    @answer = MESSAGE[1] if params['question'][-1] == '?'
    @answer = MESSAGE[0] if params['question'] == 'I am going to work'
  end
end
