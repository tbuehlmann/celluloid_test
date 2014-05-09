class Worker
  include Celluloid

  exclusive

  def process
    Movie.count
  end
end
