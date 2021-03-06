module FlexmlsApi
  module Models
    class VirtualTour < Base
      extend Subresource
      self.element_name="virtualtours"
      

      def branded? 
        attributes["Type"] == "branded"
      end

      def unbranded?
        attributes["Type"] == "unbranded"
      end

    end
  end
end
