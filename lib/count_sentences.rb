require 'pry'

class String

  def sentence?
    self[-1] == "."
  end

  def question?
    self[-1] == "?"
  end

  def exclamation?
    self[-1] == "!"
  end

  def count_sentences
    sentences = self.split(" ")
    sentence_count = sentences.select { |sent| sent.sentence? }.length
    question_count = sentences.select { |sent| sent.question? }.length
    exclamation_count = sentences.select { |sent| sent.exclamation? }.length
    sentence_count + question_count + exclamation_count
  end

end
