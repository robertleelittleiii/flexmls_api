require 'will_paginate/collection'

# =Pagination for api resource collections
# Will paginate adapter for the api client.  Utilizes the same interface as will paginate and returns the 
# same WillPaginate::Collection for finder results.
module FlexmlsApi
  module Paginate
    
    DEFAULT_PAGE_SIZE = 25
    
    # == Replacement hook for will_paginate's class method
    # Does a best effort to mimic the will_paginate method of same name.  All arguments are
    # passed on to the finder method except the special keys for the options hash listed below.
    #
    # == Special parameters for paginating finders
    # * <tt>:page</tt> -- REQUIRED, but defaults to 1 if false or nil
    # * <tt>:per_page</tt> -- defaults to <tt>CurrentModel.per_page</tt> (which is 25 if not overridden)
    # * <tt>:finder</tt> -- name of the finder used (default: "get").  This needs to be a class finder method on the class
    def paginate(*args)
      options = args.last.is_a?(::Hash) ? args.pop : {}
      page = options.delete(:page) || 1
      items_per_page = options.delete(:per_page) || self.per_page
      finder = (options.delete(:finder) || 'get').to_s
      page_options = {
        "_pagination" => 1,
        "_limit" => items_per_page,
        "_page" => page
      }
      options.merge!(page_options)
      args << options
      collection = send(finder,*args)
    end
    
    # == Instanciate class instances from array of hash representations.  
    # Needs to be called by all finders that would like to support paging.  Takes the hash result 
    # set from the request layer and instanciates instances of the class called for the finder.
    #
    # * result_array -- the results object returned from the api request layer.  An array of hashes.
    # 
    # :returns:
    #   An array of class instances for the Class of the calling finder
    def collect(result_array)
      
      # when conducting a count (pagination=count), the result_array is not an array
      # in those cases, simply return the Fixnum
      return result_array unless result_array.kind_of? Array
      
      collection = result_array.collect { |item| new(item)}
      result_array.replace(collection)
      result_array
    end
    
    # Default per_page limit set on all models.  Override this method in the model such ala the 
    # will_paginate gem to change
    def per_page
      DEFAULT_PAGE_SIZE
    end
    
    
  end

  # ==Paginate Api Responses
  # Module used by the request layer to decorate the response's results array with paging support.
  # Pagination only happens if the response includes the pagination information as specified by the 
  # API.
  module PaginateResponse
    attr_accessor :results
    def method_missing(method_symbol, *arguments)
      if results.respond_to?(method_symbol)
        arguments.empty? ? self.results.send(method_symbol) : self.results.send(method_symbol, arguments)
      else
        super
      end
    end
  end
    
  # ==Pagination Helpers
  # Helpers to create the pagination collection
  module PaginateHelper
    # ==Enable pagination
    # * results -- array of hashes representing api resources
    # * paging_hash -- the pagination response information from the api representing paging state.
    # 
    # :returns:
    #   The result set decorated as a WillPaginate::Collection
    def paginate_response(results, paging_hash)
      pager = Pagination.new(paging_hash)
      paged_results = WillPaginate::Collection.create(pager.current_page, pager.page_size, pager.total_rows) do |p|
        p.replace(results)
      end
      paged_results.extend PaginateResponse
      paged_results.results = results
      paged_results
    end
  end

  # ==Pagination
  #   Simple class representing the API's pagination response object
  class Pagination
    attr_accessor :total_rows, :page_size, :total_pages, :current_page
    def initialize(hash)
      @total_rows     = hash["TotalRows"]
      @page_size      = hash["PageSize"]
      @total_pages    = hash["TotalPages"]
      @current_page   = hash["CurrentPage"]
    end
  end
  
end