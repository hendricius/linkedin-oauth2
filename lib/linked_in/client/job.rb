module LinkedIn
  class Client
    module Job

      # Returns detailed information about the job posting.
      #
      # @see https://developer.linkedin.com/documents/job-lookup-api-and-fields
      # @param id [Integer] Retreive the job using the ID
      # @param options [Hash] A customizable set of options.
      # @option options fields [Hash] A list of company fields
      # @return [Hashie::Rash]
      # @example
      #   client.job(1337)
      #   client.job(1337,:fields => ['id','company','posting-date'])
      def job(id,options={})
        path = job_path(id,options)
        simple_query(path,options)
      end

      private
        def job_path(id,options)
          path = "jobs/#{id}"
        end
    end
  end
end
