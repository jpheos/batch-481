class BaseRepository
  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @elements = []
    load_csv if File.exist? @csv_file_path
    @next_id = @elements.empty? ? 1 : @elements.last.id + 1
  end

  def create(element)
    element.id = @next_id
    @next_id += 1
    @elements << element
    save_csv
  end

  def all
    @elements
  end

  def find(id)
    @elements.find {|element| element.id == id}
  end

  def save
    save_csv
  end

  private

  def load_csv
    options = {headers: :first_row, header_converters: :symbol}
    CSV.foreach(@csv_file_path, options) do |row|
      row[:id] = row[:id].to_i
      @elements << row_to_element(row)
    end
  end

  def save_csv
    CSV.open(@csv_file_path, 'wb') do |csv|
      csv << csv_headers
      @elements.each do |element|
        csv << element_to_row(element)
      end
    end
  end
end
