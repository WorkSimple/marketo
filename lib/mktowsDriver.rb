require 'mktows.rb'
require 'mktowsMappingRegistry.rb'
require 'soap/rpc/driver'

class MktowsPort < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "http://localhost/soap/mktows"

  Methods = [
    [ "http://www.marketo.com/mktows/getCampaignsForSource",
      "getCampaignsForSource",
      [ ["in", "paramsGetCampaignsForSource", ["::SOAP::SOAPElement", "http://www.marketo.com/mktows/", "paramsGetCampaignsForSource"]],
        ["out", "successGetCampaignsForSource", ["::SOAP::SOAPElement", "http://www.marketo.com/mktows/", "successGetCampaignsForSource"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.marketo.com/mktows/getLead",
      "getLead",
      [ ["in", "paramsGetLead", ["::SOAP::SOAPElement", "http://www.marketo.com/mktows/", "paramsGetLead"]],
        ["out", "successGetLead", ["::SOAP::SOAPElement", "http://www.marketo.com/mktows/", "successGetLead"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.marketo.com/mktows/getLeadActivity",
      "getLeadActivity",
      [ ["in", "paramsGetLeadActivity", ["::SOAP::SOAPElement", "http://www.marketo.com/mktows/", "paramsGetLeadActivity"]],
        ["out", "successGetLeadActivity", ["::SOAP::SOAPElement", "http://www.marketo.com/mktows/", "successGetLeadActivity"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.marketo.com/mktows/getLeadChanges",
      "getLeadChanges",
      [ ["in", "paramsGetLeadChanges", ["::SOAP::SOAPElement", "http://www.marketo.com/mktows/", "paramsGetLeadChanges"]],
        ["out", "successGetLeadChanges", ["::SOAP::SOAPElement", "http://www.marketo.com/mktows/", "successGetLeadChanges"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.marketo.com/mktows/getMultipleLeads",
      "getMultipleLeads",
      [ ["in", "paramsGetMultipleLeads", ["::SOAP::SOAPElement", "http://www.marketo.com/mktows/", "paramsGetMultipleLeads"]],
        ["out", "successGetMultipleLeads", ["::SOAP::SOAPElement", "http://www.marketo.com/mktows/", "successGetMultipleLeads"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.marketo.com/mktows/listOperation",
      "listOperation",
      [ ["in", "paramsListOperation", ["::SOAP::SOAPElement", "http://www.marketo.com/mktows/", "paramsListOperation"]],
        ["out", "successListOperation", ["::SOAP::SOAPElement", "http://www.marketo.com/mktows/", "successListOperation"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.marketo.com/mktows/requestCampaign",
      "requestCampaign",
      [ ["in", "paramsRequestCampaign", ["::SOAP::SOAPElement", "http://www.marketo.com/mktows/", "paramsRequestCampaign"]],
        ["out", "successRequestCampaign", ["::SOAP::SOAPElement", "http://www.marketo.com/mktows/", "successRequestCampaign"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.marketo.com/mktows/syncLead",
      "syncLead",
      [ ["in", "paramsSyncLead", ["::SOAP::SOAPElement", "http://www.marketo.com/mktows/", "paramsSyncLead"]],
        ["out", "successSyncLead", ["::SOAP::SOAPElement", "http://www.marketo.com/mktows/", "successSyncLead"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.marketo.com/mktows/syncMultipleLeads",
      "syncMultipleLeads",
      [ ["in", "paramsSyncMultipleLeads", ["::SOAP::SOAPElement", "http://www.marketo.com/mktows/", "paramsSyncMultipleLeads"]],
        ["out", "successSyncMultipleLeads", ["::SOAP::SOAPElement", "http://www.marketo.com/mktows/", "successSyncMultipleLeads"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = MktowsMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = MktowsMappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end

