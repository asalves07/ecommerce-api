module Admin  
  class ModelLoadingService
    attr_reader :records, :pagination

    def initialize(searchable_model, params = {})
      @searchable_model = searchable_model
      @params = params || {}
      @records = []
      @pagination = { page: @params[:page].to_i, length: @params[:length].to_i }
    end

    def call
      set_pagination_values
      searched = search_records(@searchable_model)
      @records = searched.order(@params[:order].to_h).paginate(@pagination[:page], @pagination[:length])
      total_pages = (searched.count / @pagination[:length].to_f).ceil
      @pagination.merge!(total: searched.count, total_pages: total_pages)
    end

    private

    def search_records(searched)
      return searched unless @params.has_key?(:search)
      @params[:search].each do |key, value|
        searched = searched.like(key, value)
      end
      searched
    end

    def set_pagination_values
      @pagination[:page] = @searchable_model.model::DEFAULT_PAGE if @pagination[:page].zero?
      @pagination[:length] = @searchable_model.model::MAX_PER_PAGE if @pagination[:length].zero?
    end
    
  end
end