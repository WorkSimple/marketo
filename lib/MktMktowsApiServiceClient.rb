#!/usr/bin/env ruby
require 'mktowsDriver.rb'

endpoint_url = ARGV.shift
obj = MktowsPort.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   getCampaignsForSource(paramsGetCampaignsForSource)
#
# ARGS
#   paramsGetCampaignsForSource ParamsGetCampaignsForSource - {http://www.marketo.com/mktows/}ParamsGetCampaignsForSource
#
# RETURNS
#   successGetCampaignsForSource SuccessGetCampaignsForSource - {http://www.marketo.com/mktows/}SuccessGetCampaignsForSource
#
paramsGetCampaignsForSource = nil
puts obj.getCampaignsForSource(paramsGetCampaignsForSource)

# SYNOPSIS
#   getLead(paramsGetLead)
#
# ARGS
#   paramsGetLead   ParamsGetLead - {http://www.marketo.com/mktows/}ParamsGetLead
#
# RETURNS
#   successGetLead  SuccessGetLead - {http://www.marketo.com/mktows/}SuccessGetLead
#
paramsGetLead = nil
puts obj.getLead(paramsGetLead)

# SYNOPSIS
#   getLeadActivity(paramsGetLeadActivity)
#
# ARGS
#   paramsGetLeadActivity ParamsGetLeadActivity - {http://www.marketo.com/mktows/}ParamsGetLeadActivity
#
# RETURNS
#   successGetLeadActivity SuccessGetLeadActivity - {http://www.marketo.com/mktows/}SuccessGetLeadActivity
#
paramsGetLeadActivity = nil
puts obj.getLeadActivity(paramsGetLeadActivity)

# SYNOPSIS
#   getLeadChanges(paramsGetLeadChanges)
#
# ARGS
#   paramsGetLeadChanges ParamsGetLeadChanges - {http://www.marketo.com/mktows/}ParamsGetLeadChanges
#
# RETURNS
#   successGetLeadChanges SuccessGetLeadChanges - {http://www.marketo.com/mktows/}SuccessGetLeadChanges
#
paramsGetLeadChanges = nil
puts obj.getLeadChanges(paramsGetLeadChanges)

# SYNOPSIS
#   getMultipleLeads(paramsGetMultipleLeads)
#
# ARGS
#   paramsGetMultipleLeads ParamsGetMultipleLeads - {http://www.marketo.com/mktows/}ParamsGetMultipleLeads
#
# RETURNS
#   successGetMultipleLeads SuccessGetMultipleLeads - {http://www.marketo.com/mktows/}SuccessGetMultipleLeads
#
paramsGetMultipleLeads = nil
puts obj.getMultipleLeads(paramsGetMultipleLeads)

# SYNOPSIS
#   listOperation(paramsListOperation)
#
# ARGS
#   paramsListOperation ParamsListOperation - {http://www.marketo.com/mktows/}ParamsListOperation
#
# RETURNS
#   successListOperation SuccessListOperation - {http://www.marketo.com/mktows/}SuccessListOperation
#
paramsListOperation = nil
puts obj.listOperation(paramsListOperation)

# SYNOPSIS
#   requestCampaign(paramsRequestCampaign)
#
# ARGS
#   paramsRequestCampaign ParamsRequestCampaign - {http://www.marketo.com/mktows/}ParamsRequestCampaign
#
# RETURNS
#   successRequestCampaign SuccessRequestCampaign - {http://www.marketo.com/mktows/}SuccessRequestCampaign
#
paramsRequestCampaign = nil
puts obj.requestCampaign(paramsRequestCampaign)

# SYNOPSIS
#   syncLead(paramsSyncLead)
#
# ARGS
#   paramsSyncLead  ParamsSyncLead - {http://www.marketo.com/mktows/}ParamsSyncLead
#
# RETURNS
#   successSyncLead SuccessSyncLead - {http://www.marketo.com/mktows/}SuccessSyncLead
#
paramsSyncLead = nil
puts obj.syncLead(paramsSyncLead)

# SYNOPSIS
#   syncMultipleLeads(paramsSyncMultipleLeads)
#
# ARGS
#   paramsSyncMultipleLeads ParamsSyncMultipleLeads - {http://www.marketo.com/mktows/}ParamsSyncMultipleLeads
#
# RETURNS
#   successSyncMultipleLeads SuccessSyncMultipleLeads - {http://www.marketo.com/mktows/}SuccessSyncMultipleLeads
#
paramsSyncMultipleLeads = nil
puts obj.syncMultipleLeads(paramsSyncMultipleLeads)


