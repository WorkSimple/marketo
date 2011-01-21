require 'xsd/qname'

# {http://www.marketo.com/mktows/}ArrayOfActivityType
class ArrayOfActivityType < ::Array
end

# {http://www.marketo.com/mktows/}ActivityTypeFilter
#   includeTypes - ArrayOfActivityType
#   excludeTypes - ArrayOfActivityType
class ActivityTypeFilter
  attr_accessor :includeTypes
  attr_accessor :excludeTypes

  def initialize(includeTypes = nil, excludeTypes = nil)
    @includeTypes = includeTypes
    @excludeTypes = excludeTypes
  end
end

# {http://www.marketo.com/mktows/}Attribute
#   attrName - SOAP::SOAPString
#   attrType - SOAP::SOAPString
#   attrValue - SOAP::SOAPString
class Attribute
  attr_accessor :attrName
  attr_accessor :attrType
  attr_accessor :attrValue

  def initialize(attrName = nil, attrType = nil, attrValue = nil)
    @attrName = attrName
    @attrType = attrType
    @attrValue = attrValue
  end
end

# {http://www.marketo.com/mktows/}ArrayOfAttribute
class ArrayOfAttribute < ::Array
end

# {http://www.marketo.com/mktows/}LeadRecord
#   id - SOAP::SOAPInt
#   email - SOAP::SOAPString
#   foreignSysPersonId - SOAP::SOAPString
#   foreignSysType - ForeignSysType
#   leadAttributeList - ArrayOfAttribute
class LeadRecord
  attr_accessor :id
  attr_accessor :email
  attr_accessor :foreignSysPersonId
  attr_accessor :foreignSysType
  attr_accessor :leadAttributeList

  def initialize(id = nil, email = nil, foreignSysPersonId = nil, foreignSysType = nil, leadAttributeList = nil)
    @id = id
    @email = email
    @foreignSysPersonId = foreignSysPersonId
    @foreignSysType = foreignSysType
    @leadAttributeList = leadAttributeList
  end
end

# {http://www.marketo.com/mktows/}ArrayOfLeadRecord
class ArrayOfLeadRecord < ::Array
end

# {http://www.marketo.com/mktows/}ActivityRecord
#   id - SOAP::SOAPInt
#   activityDateTime - SOAP::SOAPDateTime
#   activityType - SOAP::SOAPString
#   mktgAssetName - SOAP::SOAPString
#   activityAttributes - ArrayOfAttribute
#   campaign - SOAP::SOAPString
#   personName - SOAP::SOAPString
#   mktPersonId - SOAP::SOAPString
#   foreignSysId - SOAP::SOAPString
#   orgName - SOAP::SOAPString
#   foreignSysOrgId - SOAP::SOAPString
class ActivityRecord
  attr_accessor :id
  attr_accessor :activityDateTime
  attr_accessor :activityType
  attr_accessor :mktgAssetName
  attr_accessor :activityAttributes
  attr_accessor :campaign
  attr_accessor :personName
  attr_accessor :mktPersonId
  attr_accessor :foreignSysId
  attr_accessor :orgName
  attr_accessor :foreignSysOrgId

  def initialize(id = nil, activityDateTime = nil, activityType = nil, mktgAssetName = nil, activityAttributes = nil, campaign = nil, personName = nil, mktPersonId = nil, foreignSysId = nil, orgName = nil, foreignSysOrgId = nil)
    @id = id
    @activityDateTime = activityDateTime
    @activityType = activityType
    @mktgAssetName = mktgAssetName
    @activityAttributes = activityAttributes
    @campaign = campaign
    @personName = personName
    @mktPersonId = mktPersonId
    @foreignSysId = foreignSysId
    @orgName = orgName
    @foreignSysOrgId = foreignSysOrgId
  end
end

# {http://www.marketo.com/mktows/}CampaignRecord
#   id - SOAP::SOAPInt
#   name - SOAP::SOAPString
#   description - SOAP::SOAPString
class CampaignRecord
  attr_accessor :id
  attr_accessor :name
  attr_accessor :description

  def initialize(id = nil, name = nil, description = nil)
    @id = id
    @name = name
    @description = description
  end
end

# {http://www.marketo.com/mktows/}ArrayOfCampaignRecord
class ArrayOfCampaignRecord < ::Array
end

# {http://www.marketo.com/mktows/}LeadChangeRecord
#   id - SOAP::SOAPInt
#   activityDateTime - SOAP::SOAPDateTime
#   activityType - SOAP::SOAPString
#   mktgAssetName - SOAP::SOAPString
#   activityAttributes - ArrayOfAttribute
#   campaign - SOAP::SOAPString
#   mktPersonId - SOAP::SOAPString
class LeadChangeRecord
  attr_accessor :id
  attr_accessor :activityDateTime
  attr_accessor :activityType
  attr_accessor :mktgAssetName
  attr_accessor :activityAttributes
  attr_accessor :campaign
  attr_accessor :mktPersonId

  def initialize(id = nil, activityDateTime = nil, activityType = nil, mktgAssetName = nil, activityAttributes = nil, campaign = nil, mktPersonId = nil)
    @id = id
    @activityDateTime = activityDateTime
    @activityType = activityType
    @mktgAssetName = mktgAssetName
    @activityAttributes = activityAttributes
    @campaign = campaign
    @mktPersonId = mktPersonId
  end
end

# {http://www.marketo.com/mktows/}ArrayOfLeadChangeRecord
class ArrayOfLeadChangeRecord < ::Array
end

# {http://www.marketo.com/mktows/}ArrayOfActivityRecord
class ArrayOfActivityRecord < ::Array
end

# {http://www.marketo.com/mktows/}LeadKey
#   keyType - LeadKeyRef
#   keyValue - SOAP::SOAPString
class LeadKey
  attr_accessor :keyType
  attr_accessor :keyValue

  def initialize(keyType = nil, keyValue = nil)
    @keyType = keyType
    @keyValue = keyValue
  end
end

# {http://www.marketo.com/mktows/}ArrayOfLeadKey
class ArrayOfLeadKey < ::Array
end

# {http://www.marketo.com/mktows/}LeadStatus
#   leadKey - LeadKey
#   status - SOAP::SOAPBoolean
class LeadStatus
  attr_accessor :leadKey
  attr_accessor :status

  def initialize(leadKey = nil, status = nil)
    @leadKey = leadKey
    @status = status
  end
end

# {http://www.marketo.com/mktows/}ArrayOfLeadStatus
class ArrayOfLeadStatus < ::Array
end

# {http://www.marketo.com/mktows/}ListKey
#   keyType - ListKeyType
#   keyValue - SOAP::SOAPString
class ListKey
  attr_accessor :keyType
  attr_accessor :keyValue

  def initialize(keyType = nil, keyValue = nil)
    @keyType = keyType
    @keyValue = keyValue
  end
end

# {http://www.marketo.com/mktows/}StreamPosition
#   latestCreatedAt - SOAP::SOAPDateTime
#   oldestCreatedAt - SOAP::SOAPDateTime
#   activityCreatedAt - SOAP::SOAPDateTime
#   offset - SOAP::SOAPString
class StreamPosition
  attr_accessor :latestCreatedAt
  attr_accessor :oldestCreatedAt
  attr_accessor :activityCreatedAt
  attr_accessor :offset

  def initialize(latestCreatedAt = nil, oldestCreatedAt = nil, activityCreatedAt = nil, offset = nil)
    @latestCreatedAt = latestCreatedAt
    @oldestCreatedAt = oldestCreatedAt
    @activityCreatedAt = activityCreatedAt
    @offset = offset
  end
end

# {http://www.marketo.com/mktows/}SyncStatus
#   leadId - SOAP::SOAPInt
#   status - LeadSyncStatus
#   error - SOAP::SOAPString
class SyncStatus
  attr_accessor :leadId
  attr_accessor :status
  attr_accessor :error

  def initialize(leadId = nil, status = nil, error = nil)
    @leadId = leadId
    @status = status
    @error = error
  end
end

# {http://www.marketo.com/mktows/}ArrayOfSyncStatus
class ArrayOfSyncStatus < ::Array
end

# {http://www.marketo.com/mktows/}ArrayOfBase64Binary
class ArrayOfBase64Binary < ::Array
end

# {http://www.marketo.com/mktows/}VersionedItem
#   id - SOAP::SOAPInteger
#   name - SOAP::SOAPString
#   type - SOAP::SOAPString
#   description - SOAP::SOAPString
#   timestamp - SOAP::SOAPDateTime
class VersionedItem
  attr_accessor :id
  attr_accessor :name
  attr_accessor :type
  attr_accessor :description
  attr_accessor :timestamp

  def initialize(id = nil, name = nil, type = nil, description = nil, timestamp = nil)
    @id = id
    @name = name
    @type = type
    @description = description
    @timestamp = timestamp
  end
end

# {http://www.marketo.com/mktows/}ArrayOfVersionedItem
class ArrayOfVersionedItem < ::Array
end

# {http://www.marketo.com/mktows/}ParamsGetCampaignsForSource
#   source - ReqCampSourceType
#   name - SOAP::SOAPString
#   exactName - SOAP::SOAPBoolean
class ParamsGetCampaignsForSource
  attr_accessor :source
  attr_accessor :name
  attr_accessor :exactName

  def initialize(source = nil, name = nil, exactName = nil)
    @source = source
    @name = name
    @exactName = exactName
  end
end

# {http://www.marketo.com/mktows/}ParamsGetLead
#   leadKey - LeadKey
class ParamsGetLead
  attr_accessor :leadKey

  def initialize(leadKey = nil)
    @leadKey = leadKey
  end
end

# {http://www.marketo.com/mktows/}ParamsGetLeadActivity
#   leadKey - LeadKey
#   activityFilter - ActivityTypeFilter
#   startPosition - StreamPosition
#   batchSize - SOAP::SOAPInt
class ParamsGetLeadActivity
  attr_accessor :leadKey
  attr_accessor :activityFilter
  attr_accessor :startPosition
  attr_accessor :batchSize

  def initialize(leadKey = nil, activityFilter = nil, startPosition = nil, batchSize = nil)
    @leadKey = leadKey
    @activityFilter = activityFilter
    @startPosition = startPosition
    @batchSize = batchSize
  end
end

# {http://www.marketo.com/mktows/}ParamsGetLeadChanges
#   startPosition - StreamPosition
#   activityFilter - ActivityTypeFilter
#   batchSize - SOAP::SOAPInt
class ParamsGetLeadChanges
  attr_accessor :startPosition
  attr_accessor :activityFilter
  attr_accessor :batchSize

  def initialize(startPosition = nil, activityFilter = nil, batchSize = nil)
    @startPosition = startPosition
    @activityFilter = activityFilter
    @batchSize = batchSize
  end
end

# {http://www.marketo.com/mktows/}ParamsGetMultipleLeads
#   lastUpdatedAt - SOAP::SOAPDateTime
#   streamPosition - SOAP::SOAPString
#   batchSize - SOAP::SOAPInt
class ParamsGetMultipleLeads
  attr_accessor :lastUpdatedAt
  attr_accessor :streamPosition
  attr_accessor :batchSize

  def initialize(lastUpdatedAt = nil, streamPosition = nil, batchSize = nil)
    @lastUpdatedAt = lastUpdatedAt
    @streamPosition = streamPosition
    @batchSize = batchSize
  end
end

# {http://www.marketo.com/mktows/}ParamsListOperation
#   listOperation - ListOperationType
#   listKey - ListKey
#   listMemberList - ArrayOfLeadKey
#   strict - SOAP::SOAPBoolean
class ParamsListOperation
  attr_accessor :listOperation
  attr_accessor :listKey
  attr_accessor :listMemberList
  attr_accessor :strict

  def initialize(listOperation = nil, listKey = nil, listMemberList = nil, strict = nil)
    @listOperation = listOperation
    @listKey = listKey
    @listMemberList = listMemberList
    @strict = strict
  end
end

# {http://www.marketo.com/mktows/}ParamsRequestCampaign
#   source - ReqCampSourceType
#   campaignId - SOAP::SOAPInt
#   leadList - ArrayOfLeadKey
class ParamsRequestCampaign
  attr_accessor :source
  attr_accessor :campaignId
  attr_accessor :leadList

  def initialize(source = nil, campaignId = nil, leadList = nil)
    @source = source
    @campaignId = campaignId
    @leadList = leadList
  end
end

# {http://www.marketo.com/mktows/}ParamsSyncLead
#   leadRecord - LeadRecord
#   returnLead - SOAP::SOAPBoolean
#   marketoCookie - SOAP::SOAPString
class ParamsSyncLead
  attr_accessor :leadRecord
  attr_accessor :returnLead
  attr_accessor :marketoCookie

  def initialize(leadRecord = nil, returnLead = nil, marketoCookie = nil)
    @leadRecord = leadRecord
    @returnLead = returnLead
    @marketoCookie = marketoCookie
  end
end

# {http://www.marketo.com/mktows/}ParamsSyncMultipleLeads
#   leadRecordList - ArrayOfLeadRecord
#   dedupEnabled - SOAP::SOAPBoolean
class ParamsSyncMultipleLeads
  attr_accessor :leadRecordList
  attr_accessor :dedupEnabled

  def initialize(leadRecordList = nil, dedupEnabled = nil)
    @leadRecordList = leadRecordList
    @dedupEnabled = dedupEnabled
  end
end

# {http://www.marketo.com/mktows/}LeadActivityList
#   returnCount - SOAP::SOAPInt
#   remainingCount - SOAP::SOAPInt
#   newStartPosition - StreamPosition
#   activityRecordList - ArrayOfActivityRecord
class LeadActivityList
  attr_accessor :returnCount
  attr_accessor :remainingCount
  attr_accessor :newStartPosition
  attr_accessor :activityRecordList

  def initialize(returnCount = nil, remainingCount = nil, newStartPosition = nil, activityRecordList = nil)
    @returnCount = returnCount
    @remainingCount = remainingCount
    @newStartPosition = newStartPosition
    @activityRecordList = activityRecordList
  end
end

# {http://www.marketo.com/mktows/}ResultGetCampaignsForSource
#   returnCount - SOAP::SOAPInt
#   campaignRecordList - ArrayOfCampaignRecord
class ResultGetCampaignsForSource
  attr_accessor :returnCount
  attr_accessor :campaignRecordList

  def initialize(returnCount = nil, campaignRecordList = nil)
    @returnCount = returnCount
    @campaignRecordList = campaignRecordList
  end
end

# {http://www.marketo.com/mktows/}ResultGetLeadChanges
#   returnCount - SOAP::SOAPInt
#   remainingCount - SOAP::SOAPInt
#   newStartPosition - StreamPosition
#   leadChangeRecordList - ArrayOfLeadChangeRecord
class ResultGetLeadChanges
  attr_accessor :returnCount
  attr_accessor :remainingCount
  attr_accessor :newStartPosition
  attr_accessor :leadChangeRecordList

  def initialize(returnCount = nil, remainingCount = nil, newStartPosition = nil, leadChangeRecordList = nil)
    @returnCount = returnCount
    @remainingCount = remainingCount
    @newStartPosition = newStartPosition
    @leadChangeRecordList = leadChangeRecordList
  end
end

# {http://www.marketo.com/mktows/}ResultGetLead
#   count - SOAP::SOAPInt
#   leadRecordList - ArrayOfLeadRecord
class ResultGetLead
  attr_accessor :count
  attr_accessor :leadRecordList

  def initialize(count = nil, leadRecordList = nil)
    @count = count
    @leadRecordList = leadRecordList
  end
end

# {http://www.marketo.com/mktows/}ResultListOperation
#   success - SOAP::SOAPBoolean
#   statusList - ArrayOfLeadStatus
class ResultListOperation
  attr_accessor :success
  attr_accessor :statusList

  def initialize(success = nil, statusList = nil)
    @success = success
    @statusList = statusList
  end
end

# {http://www.marketo.com/mktows/}ResultGetMultipleLeads
#   returnCount - SOAP::SOAPInt
#   remainingCount - SOAP::SOAPInt
#   newStreamPosition - SOAP::SOAPString
#   leadRecordList - ArrayOfLeadRecord
class ResultGetMultipleLeads
  attr_accessor :returnCount
  attr_accessor :remainingCount
  attr_accessor :newStreamPosition
  attr_accessor :leadRecordList

  def initialize(returnCount = nil, remainingCount = nil, newStreamPosition = nil, leadRecordList = nil)
    @returnCount = returnCount
    @remainingCount = remainingCount
    @newStreamPosition = newStreamPosition
    @leadRecordList = leadRecordList
  end
end

# {http://www.marketo.com/mktows/}ResultRequestCampaign
#   success - SOAP::SOAPBoolean
class ResultRequestCampaign
  attr_accessor :success

  def initialize(success = nil)
    @success = success
  end
end

# {http://www.marketo.com/mktows/}ResultSyncLead
#   leadId - SOAP::SOAPInt
#   syncStatus - LeadSyncStatus
#   leadRecord - LeadRecord
class ResultSyncLead
  attr_accessor :leadId
  attr_accessor :syncStatus
  attr_accessor :leadRecord

  def initialize(leadId = nil, syncStatus = nil, leadRecord = nil)
    @leadId = leadId
    @syncStatus = syncStatus
    @leadRecord = leadRecord
  end
end

# {http://www.marketo.com/mktows/}ResultSyncMultipleLeads
#   syncStatusList - ArrayOfSyncStatus
class ResultSyncMultipleLeads
  attr_accessor :syncStatusList

  def initialize(syncStatusList = nil)
    @syncStatusList = syncStatusList
  end
end

# {http://www.marketo.com/mktows/}SuccessGetCampaignsForSource
#   result - ResultGetCampaignsForSource
class SuccessGetCampaignsForSource
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.marketo.com/mktows/}SuccessGetLead
#   result - ResultGetLead
class SuccessGetLead
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.marketo.com/mktows/}SuccessGetLeadActivity
#   leadActivityList - LeadActivityList
class SuccessGetLeadActivity
  attr_accessor :leadActivityList

  def initialize(leadActivityList = nil)
    @leadActivityList = leadActivityList
  end
end

# {http://www.marketo.com/mktows/}SuccessGetLeadChanges
#   result - ResultGetLeadChanges
class SuccessGetLeadChanges
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.marketo.com/mktows/}SuccessGetMultipleLeads
#   result - ResultGetMultipleLeads
class SuccessGetMultipleLeads
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.marketo.com/mktows/}SuccessListOperation
#   result - ResultListOperation
class SuccessListOperation
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.marketo.com/mktows/}SuccessRequestCampaign
#   result - ResultRequestCampaign
class SuccessRequestCampaign
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.marketo.com/mktows/}SuccessSyncLead
#   result - ResultSyncLead
class SuccessSyncLead
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.marketo.com/mktows/}SuccessSyncMultipleLeads
#   result - ResultSyncMultipleLeads
class SuccessSyncMultipleLeads
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.marketo.com/mktows/}AuthenticationHeaderInfo
#   mktowsUserId - SOAP::SOAPString
#   requestSignature - SOAP::SOAPString
#   requestTimestamp - SOAP::SOAPString
#   audit - SOAP::SOAPString
#   mode - SOAP::SOAPInt
class AuthenticationHeaderInfo
  attr_accessor :mktowsUserId
  attr_accessor :requestSignature
  attr_accessor :requestTimestamp
  attr_accessor :audit
  attr_accessor :mode

  def initialize(mktowsUserId = nil, requestSignature = nil, requestTimestamp = nil, audit = nil, mode = nil)
    @mktowsUserId = mktowsUserId
    @requestSignature = requestSignature
    @requestTimestamp = requestTimestamp
    @audit = audit
    @mode = mode
  end
end

# {http://www.marketo.com/mktows/}LeadKeyRef
class LeadKeyRef < ::String
  COOKIE = LeadKeyRef.new("COOKIE")
  EMAIL = LeadKeyRef.new("EMAIL")
  IDNUM = LeadKeyRef.new("IDNUM")
  LEADOWNEREMAIL = LeadKeyRef.new("LEADOWNEREMAIL")
  SFDCACCOUNTID = LeadKeyRef.new("SFDCACCOUNTID")
  SFDCCONTACTID = LeadKeyRef.new("SFDCCONTACTID")
  SFDCLEADID = LeadKeyRef.new("SFDCLEADID")
  SFDCLEADOWNERID = LeadKeyRef.new("SFDCLEADOWNERID")
  SFDCOPPTYID = LeadKeyRef.new("SFDCOPPTYID")
end

# {http://www.marketo.com/mktows/}LeadSyncStatus
class LeadSyncStatus < ::String
  CREATED = LeadSyncStatus.new("CREATED")
  FAILED = LeadSyncStatus.new("FAILED")
  UPDATED = LeadSyncStatus.new("UPDATED")
end

# {http://www.marketo.com/mktows/}ActivityType
class ActivityType < ::String
  AddToList = ActivityType.new("AddToList")
  AddtoSFDCCampaign = ActivityType.new("AddtoSFDCCampaign")
  AssocWithOpprtntyInSales = ActivityType.new("AssocWithOpprtntyInSales")
  AttendEvent = ActivityType.new("AttendEvent")
  ChangeDataValue = ActivityType.new("ChangeDataValue")
  ChangeOwner = ActivityType.new("ChangeOwner")
  ChangeScore = ActivityType.new("ChangeScore")
  ChangeStatusInSFDCCampaign = ActivityType.new("ChangeStatusInSFDCCampaign")
  ClickEmail = ActivityType.new("ClickEmail")
  ClickLink = ActivityType.new("ClickLink")
  ClickSalesEmail = ActivityType.new("ClickSalesEmail")
  ConvertLead = ActivityType.new("ConvertLead")
  CreateTask = ActivityType.new("CreateTask")
  DeleteLead = ActivityType.new("DeleteLead")
  DeleteLeadFromSales = ActivityType.new("DeleteLeadFromSales")
  DissocFromOpprtntyInSales = ActivityType.new("DissocFromOpprtntyInSales")
  EmailBounced = ActivityType.new("EmailBounced")
  EmailBouncedSoft = ActivityType.new("EmailBouncedSoft")
  EmailDelivered = ActivityType.new("EmailDelivered")
  FillOutForm = ActivityType.new("FillOutForm")
  InterestingMoment = ActivityType.new("InterestingMoment")
  LeadAssigned = ActivityType.new("LeadAssigned")
  MergeLeads = ActivityType.new("MergeLeads")
  NewLead = ActivityType.new("NewLead")
  NewSFDCOpprtnty = ActivityType.new("NewSFDCOpprtnty")
  OpenEmail = ActivityType.new("OpenEmail")
  OpenSalesEmail = ActivityType.new("OpenSalesEmail")
  PushLeadToSales = ActivityType.new("PushLeadToSales")
  PushLeadUpdatesToSales = ActivityType.new("PushLeadUpdatesToSales")
  ReceiveSalesEmail = ActivityType.new("ReceiveSalesEmail")
  RegisterForEvent = ActivityType.new("RegisterForEvent")
  RemoveFromFlow = ActivityType.new("RemoveFromFlow")
  RemoveFromList = ActivityType.new("RemoveFromList")
  RemoveFromSFDCCampaign = ActivityType.new("RemoveFromSFDCCampaign")
  RequestCampaign = ActivityType.new("RequestCampaign")
  ResolveConflicts = ActivityType.new("ResolveConflicts")
  RunSubflow = ActivityType.new("RunSubflow")
  SFDCActivity = ActivityType.new("SFDCActivity")
  SFDCActivityUpdated = ActivityType.new("SFDCActivityUpdated")
  SFDCMergeLeads = ActivityType.new("SFDCMergeLeads")
  SalesEmailBounced = ActivityType.new("SalesEmailBounced")
  SendAlert = ActivityType.new("SendAlert")
  SendEmail = ActivityType.new("SendEmail")
  SendSalesEmail = ActivityType.new("SendSalesEmail")
  UnsubscribeEmail = ActivityType.new("UnsubscribeEmail")
  UpdateOpprtntyInSales = ActivityType.new("UpdateOpprtntyInSales")
  VisitWebpage = ActivityType.new("VisitWebpage")
  Wait = ActivityType.new("Wait")
end

# {http://www.marketo.com/mktows/}ForeignSysType
class ForeignSysType < ::String
  CUSTOM = ForeignSysType.new("CUSTOM")
  NETSUITE = ForeignSysType.new("NETSUITE")
  SFDC = ForeignSysType.new("SFDC")
end

# {http://www.marketo.com/mktows/}ReqCampSourceType
class ReqCampSourceType < ::String
  MKTOWS = ReqCampSourceType.new("MKTOWS")
  SALES = ReqCampSourceType.new("SALES")
end

# {http://www.marketo.com/mktows/}ListKeyType
class ListKeyType < ::String
  MKTOLISTNAME = ListKeyType.new("MKTOLISTNAME")
  MKTOSALESUSERID = ListKeyType.new("MKTOSALESUSERID")
  SFDCLEADOWNERID = ListKeyType.new("SFDCLEADOWNERID")
end

# {http://www.marketo.com/mktows/}ListOperationType
class ListOperationType < ::String
  ADDTOLIST = ListOperationType.new("ADDTOLIST")
  ISMEMBEROFLIST = ListOperationType.new("ISMEMBEROFLIST")
  REMOVEFROMLIST = ListOperationType.new("REMOVEFROMLIST")
end
