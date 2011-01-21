require 'mktows.rb'
require 'soap/mapping'

module MktowsMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsMktows = "http://www.marketo.com/mktows/"

  EncodedRegistry.register(
    :class => ArrayOfActivityType,
    :schema_type => XSD::QName.new(NsMktows, "ArrayOfActivityType"),
    :schema_element => [
      ["activityType", ["ActivityType[]", XSD::QName.new(nil, "activityType")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ActivityTypeFilter,
    :schema_type => XSD::QName.new(NsMktows, "ActivityTypeFilter"),
    :schema_element => [
      ["includeTypes", ["ArrayOfActivityType", XSD::QName.new(nil, "includeTypes")], [0, 1]],
      ["excludeTypes", ["ArrayOfActivityType", XSD::QName.new(nil, "excludeTypes")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Attribute,
    :schema_type => XSD::QName.new(NsMktows, "Attribute"),
    :schema_element => [
      ["attrName", ["SOAP::SOAPString", XSD::QName.new(nil, "attrName")]],
      ["attrType", ["SOAP::SOAPString", XSD::QName.new(nil, "attrType")], [0, 1]],
      ["attrValue", ["SOAP::SOAPString", XSD::QName.new(nil, "attrValue")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfAttribute,
    :schema_type => XSD::QName.new(NsMktows, "ArrayOfAttribute"),
    :schema_element => [
      ["attribute", ["Attribute[]", XSD::QName.new(nil, "attribute")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LeadRecord,
    :schema_type => XSD::QName.new(NsMktows, "LeadRecord"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "Id")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "Email")], [0, 1]],
      ["foreignSysPersonId", ["SOAP::SOAPString", XSD::QName.new(nil, "ForeignSysPersonId")], [0, 1]],
      ["foreignSysType", ["ForeignSysType", XSD::QName.new(nil, "ForeignSysType")], [0, 1]],
      ["leadAttributeList", ["ArrayOfAttribute", XSD::QName.new(nil, "leadAttributeList")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfLeadRecord,
    :schema_type => XSD::QName.new(NsMktows, "ArrayOfLeadRecord"),
    :schema_element => [
      ["leadRecord", ["LeadRecord[]", XSD::QName.new(nil, "leadRecord")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ActivityRecord,
    :schema_type => XSD::QName.new(NsMktows, "ActivityRecord"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["activityDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "activityDateTime")]],
      ["activityType", ["SOAP::SOAPString", XSD::QName.new(nil, "activityType")]],
      ["mktgAssetName", ["SOAP::SOAPString", XSD::QName.new(nil, "mktgAssetName")], [0, 1]],
      ["activityAttributes", ["ArrayOfAttribute", XSD::QName.new(nil, "activityAttributes")], [0, 1]],
      ["campaign", ["SOAP::SOAPString", XSD::QName.new(nil, "campaign")], [0, 1]],
      ["personName", ["SOAP::SOAPString", XSD::QName.new(nil, "personName")], [0, 1]],
      ["mktPersonId", ["SOAP::SOAPString", XSD::QName.new(nil, "mktPersonId")]],
      ["foreignSysId", ["SOAP::SOAPString", XSD::QName.new(nil, "foreignSysId")], [0, 1]],
      ["orgName", ["SOAP::SOAPString", XSD::QName.new(nil, "orgName")], [0, 1]],
      ["foreignSysOrgId", ["SOAP::SOAPString", XSD::QName.new(nil, "foreignSysOrgId")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CampaignRecord,
    :schema_type => XSD::QName.new(NsMktows, "CampaignRecord"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfCampaignRecord,
    :schema_type => XSD::QName.new(NsMktows, "ArrayOfCampaignRecord"),
    :schema_element => [
      ["campaignRecord", ["CampaignRecord[]", XSD::QName.new(nil, "campaignRecord")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LeadChangeRecord,
    :schema_type => XSD::QName.new(NsMktows, "LeadChangeRecord"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["activityDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "activityDateTime")]],
      ["activityType", ["SOAP::SOAPString", XSD::QName.new(nil, "activityType")]],
      ["mktgAssetName", ["SOAP::SOAPString", XSD::QName.new(nil, "mktgAssetName")], [0, 1]],
      ["activityAttributes", ["ArrayOfAttribute", XSD::QName.new(nil, "activityAttributes")], [0, 1]],
      ["campaign", ["SOAP::SOAPString", XSD::QName.new(nil, "campaign")], [0, 1]],
      ["mktPersonId", ["SOAP::SOAPString", XSD::QName.new(nil, "mktPersonId")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfLeadChangeRecord,
    :schema_type => XSD::QName.new(NsMktows, "ArrayOfLeadChangeRecord"),
    :schema_element => [
      ["leadChangeRecord", ["LeadChangeRecord[]", XSD::QName.new(nil, "leadChangeRecord")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfActivityRecord,
    :schema_type => XSD::QName.new(NsMktows, "ArrayOfActivityRecord"),
    :schema_element => [
      ["activityRecord", ["ActivityRecord[]", XSD::QName.new(nil, "activityRecord")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LeadKey,
    :schema_type => XSD::QName.new(NsMktows, "LeadKey"),
    :schema_element => [
      ["keyType", ["LeadKeyRef", XSD::QName.new(nil, "keyType")]],
      ["keyValue", ["SOAP::SOAPString", XSD::QName.new(nil, "keyValue")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfLeadKey,
    :schema_type => XSD::QName.new(NsMktows, "ArrayOfLeadKey"),
    :schema_element => [
      ["leadKey", ["LeadKey[]", XSD::QName.new(nil, "leadKey")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => LeadStatus,
    :schema_type => XSD::QName.new(NsMktows, "LeadStatus"),
    :schema_element => [
      ["leadKey", ["LeadKey", XSD::QName.new(nil, "leadKey")]],
      ["status", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "status")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfLeadStatus,
    :schema_type => XSD::QName.new(NsMktows, "ArrayOfLeadStatus"),
    :schema_element => [
      ["leadStatus", ["LeadStatus[]", XSD::QName.new(nil, "leadStatus")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ListKey,
    :schema_type => XSD::QName.new(NsMktows, "ListKey"),
    :schema_element => [
      ["keyType", ["ListKeyType", XSD::QName.new(nil, "keyType")]],
      ["keyValue", ["SOAP::SOAPString", XSD::QName.new(nil, "keyValue")]]
    ]
  )

  EncodedRegistry.register(
    :class => StreamPosition,
    :schema_type => XSD::QName.new(NsMktows, "StreamPosition"),
    :schema_element => [
      ["latestCreatedAt", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "latestCreatedAt")], [0, 1]],
      ["oldestCreatedAt", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "oldestCreatedAt")], [0, 1]],
      ["activityCreatedAt", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "activityCreatedAt")], [0, 1]],
      ["offset", ["SOAP::SOAPString", XSD::QName.new(nil, "offset")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SyncStatus,
    :schema_type => XSD::QName.new(NsMktows, "SyncStatus"),
    :schema_element => [
      ["leadId", ["SOAP::SOAPInt", XSD::QName.new(nil, "leadId")]],
      ["status", ["LeadSyncStatus", XSD::QName.new(nil, "status")]],
      ["error", ["SOAP::SOAPString", XSD::QName.new(nil, "error")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfSyncStatus,
    :schema_type => XSD::QName.new(NsMktows, "ArrayOfSyncStatus"),
    :schema_element => [
      ["syncStatus", ["SyncStatus[]", XSD::QName.new(nil, "syncStatus")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfBase64Binary,
    :schema_type => XSD::QName.new(NsMktows, "ArrayOfBase64Binary"),
    :schema_element => [
      ["base64Binary", ["SOAP::SOAPBase64[]", XSD::QName.new(nil, "base64Binary")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => VersionedItem,
    :schema_type => XSD::QName.new(NsMktows, "VersionedItem"),
    :schema_element => [
      ["id", ["SOAP::SOAPInteger", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")], [0, 1]],
      ["timestamp", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "timestamp")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfVersionedItem,
    :schema_type => XSD::QName.new(NsMktows, "ArrayOfVersionedItem"),
    :schema_element => [
      ["versionedItem", ["VersionedItem[]", XSD::QName.new(nil, "versionedItem")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ParamsGetCampaignsForSource,
    :schema_type => XSD::QName.new(NsMktows, "ParamsGetCampaignsForSource"),
    :schema_element => [
      ["source", ["ReqCampSourceType", XSD::QName.new(nil, "source")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["exactName", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "exactName")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ParamsGetLead,
    :schema_type => XSD::QName.new(NsMktows, "ParamsGetLead"),
    :schema_element => [
      ["leadKey", ["LeadKey", XSD::QName.new(nil, "leadKey")]]
    ]
  )

  EncodedRegistry.register(
    :class => ParamsGetLeadActivity,
    :schema_type => XSD::QName.new(NsMktows, "ParamsGetLeadActivity"),
    :schema_element => [
      ["leadKey", ["LeadKey", XSD::QName.new(nil, "leadKey")]],
      ["activityFilter", ["ActivityTypeFilter", XSD::QName.new(nil, "activityFilter")], [0, 1]],
      ["startPosition", ["StreamPosition", XSD::QName.new(nil, "startPosition")], [0, 1]],
      ["batchSize", ["SOAP::SOAPInt", XSD::QName.new(nil, "batchSize")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ParamsGetLeadChanges,
    :schema_type => XSD::QName.new(NsMktows, "ParamsGetLeadChanges"),
    :schema_element => [
      ["startPosition", ["StreamPosition", XSD::QName.new(nil, "startPosition")]],
      ["activityFilter", ["ActivityTypeFilter", XSD::QName.new(nil, "activityFilter")], [0, 1]],
      ["batchSize", ["SOAP::SOAPInt", XSD::QName.new(nil, "batchSize")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ParamsGetMultipleLeads,
    :schema_type => XSD::QName.new(NsMktows, "ParamsGetMultipleLeads"),
    :schema_element => [
      ["lastUpdatedAt", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "lastUpdatedAt")]],
      ["streamPosition", ["SOAP::SOAPString", XSD::QName.new(nil, "streamPosition")], [0, 1]],
      ["batchSize", ["SOAP::SOAPInt", XSD::QName.new(nil, "batchSize")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ParamsListOperation,
    :schema_type => XSD::QName.new(NsMktows, "ParamsListOperation"),
    :schema_element => [
      ["listOperation", ["ListOperationType", XSD::QName.new(nil, "listOperation")]],
      ["listKey", ["ListKey", XSD::QName.new(nil, "listKey")]],
      ["listMemberList", ["ArrayOfLeadKey", XSD::QName.new(nil, "listMemberList")]],
      ["strict", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "strict")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ParamsRequestCampaign,
    :schema_type => XSD::QName.new(NsMktows, "ParamsRequestCampaign"),
    :schema_element => [
      ["source", ["ReqCampSourceType", XSD::QName.new(nil, "source")]],
      ["campaignId", ["SOAP::SOAPInt", XSD::QName.new(nil, "campaignId")]],
      ["leadList", ["ArrayOfLeadKey", XSD::QName.new(nil, "leadList")]]
    ]
  )

  EncodedRegistry.register(
    :class => ParamsSyncLead,
    :schema_type => XSD::QName.new(NsMktows, "ParamsSyncLead"),
    :schema_element => [
      ["leadRecord", ["LeadRecord", XSD::QName.new(nil, "leadRecord")]],
      ["returnLead", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "returnLead")]],
      ["marketoCookie", ["SOAP::SOAPString", XSD::QName.new(nil, "marketoCookie")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ParamsSyncMultipleLeads,
    :schema_type => XSD::QName.new(NsMktows, "ParamsSyncMultipleLeads"),
    :schema_element => [
      ["leadRecordList", ["ArrayOfLeadRecord", XSD::QName.new(nil, "leadRecordList")]],
      ["dedupEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "dedupEnabled")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LeadActivityList,
    :schema_type => XSD::QName.new(NsMktows, "LeadActivityList"),
    :schema_element => [
      ["returnCount", ["SOAP::SOAPInt", XSD::QName.new(nil, "returnCount")]],
      ["remainingCount", ["SOAP::SOAPInt", XSD::QName.new(nil, "remainingCount")]],
      ["newStartPosition", ["StreamPosition", XSD::QName.new(nil, "newStartPosition")]],
      ["activityRecordList", ["ArrayOfActivityRecord", XSD::QName.new(nil, "activityRecordList")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ResultGetCampaignsForSource,
    :schema_type => XSD::QName.new(NsMktows, "ResultGetCampaignsForSource"),
    :schema_element => [
      ["returnCount", ["SOAP::SOAPInt", XSD::QName.new(nil, "returnCount")]],
      ["campaignRecordList", ["ArrayOfCampaignRecord", XSD::QName.new(nil, "campaignRecordList")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ResultGetLeadChanges,
    :schema_type => XSD::QName.new(NsMktows, "ResultGetLeadChanges"),
    :schema_element => [
      ["returnCount", ["SOAP::SOAPInt", XSD::QName.new(nil, "returnCount")]],
      ["remainingCount", ["SOAP::SOAPInt", XSD::QName.new(nil, "remainingCount")]],
      ["newStartPosition", ["StreamPosition", XSD::QName.new(nil, "newStartPosition")]],
      ["leadChangeRecordList", ["ArrayOfLeadChangeRecord", XSD::QName.new(nil, "leadChangeRecordList")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ResultGetLead,
    :schema_type => XSD::QName.new(NsMktows, "ResultGetLead"),
    :schema_element => [
      ["count", ["SOAP::SOAPInt", XSD::QName.new(nil, "count")]],
      ["leadRecordList", ["ArrayOfLeadRecord", XSD::QName.new(nil, "leadRecordList")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ResultListOperation,
    :schema_type => XSD::QName.new(NsMktows, "ResultListOperation"),
    :schema_element => [
      ["success", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "success")]],
      ["statusList", ["ArrayOfLeadStatus", XSD::QName.new(nil, "statusList")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ResultGetMultipleLeads,
    :schema_type => XSD::QName.new(NsMktows, "ResultGetMultipleLeads"),
    :schema_element => [
      ["returnCount", ["SOAP::SOAPInt", XSD::QName.new(nil, "returnCount")]],
      ["remainingCount", ["SOAP::SOAPInt", XSD::QName.new(nil, "remainingCount")]],
      ["newStreamPosition", ["SOAP::SOAPString", XSD::QName.new(nil, "newStreamPosition")]],
      ["leadRecordList", ["ArrayOfLeadRecord", XSD::QName.new(nil, "leadRecordList")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ResultRequestCampaign,
    :schema_type => XSD::QName.new(NsMktows, "ResultRequestCampaign"),
    :schema_element => [
      ["success", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "success")]]
    ]
  )

  EncodedRegistry.register(
    :class => ResultSyncLead,
    :schema_type => XSD::QName.new(NsMktows, "ResultSyncLead"),
    :schema_element => [
      ["leadId", ["SOAP::SOAPInt", XSD::QName.new(nil, "leadId")]],
      ["syncStatus", ["LeadSyncStatus", XSD::QName.new(nil, "syncStatus")]],
      ["leadRecord", ["LeadRecord", XSD::QName.new(nil, "leadRecord")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ResultSyncMultipleLeads,
    :schema_type => XSD::QName.new(NsMktows, "ResultSyncMultipleLeads"),
    :schema_element => [
      ["syncStatusList", ["ArrayOfSyncStatus", XSD::QName.new(nil, "syncStatusList")]]
    ]
  )

  EncodedRegistry.register(
    :class => SuccessGetCampaignsForSource,
    :schema_type => XSD::QName.new(NsMktows, "SuccessGetCampaignsForSource"),
    :schema_element => [
      ["result", ["ResultGetCampaignsForSource", XSD::QName.new(nil, "result")]]
    ]
  )

  EncodedRegistry.register(
    :class => SuccessGetLead,
    :schema_type => XSD::QName.new(NsMktows, "SuccessGetLead"),
    :schema_element => [
      ["result", ["ResultGetLead", XSD::QName.new(nil, "result")]]
    ]
  )

  EncodedRegistry.register(
    :class => SuccessGetLeadActivity,
    :schema_type => XSD::QName.new(NsMktows, "SuccessGetLeadActivity"),
    :schema_element => [
      ["leadActivityList", ["LeadActivityList", XSD::QName.new(nil, "leadActivityList")]]
    ]
  )

  EncodedRegistry.register(
    :class => SuccessGetLeadChanges,
    :schema_type => XSD::QName.new(NsMktows, "SuccessGetLeadChanges"),
    :schema_element => [
      ["result", ["ResultGetLeadChanges", XSD::QName.new(nil, "result")]]
    ]
  )

  EncodedRegistry.register(
    :class => SuccessGetMultipleLeads,
    :schema_type => XSD::QName.new(NsMktows, "SuccessGetMultipleLeads"),
    :schema_element => [
      ["result", ["ResultGetMultipleLeads", XSD::QName.new(nil, "result")]]
    ]
  )

  EncodedRegistry.register(
    :class => SuccessListOperation,
    :schema_type => XSD::QName.new(NsMktows, "SuccessListOperation"),
    :schema_element => [
      ["result", ["ResultListOperation", XSD::QName.new(nil, "result")]]
    ]
  )

  EncodedRegistry.register(
    :class => SuccessRequestCampaign,
    :schema_type => XSD::QName.new(NsMktows, "SuccessRequestCampaign"),
    :schema_element => [
      ["result", ["ResultRequestCampaign", XSD::QName.new(nil, "result")]]
    ]
  )

  EncodedRegistry.register(
    :class => SuccessSyncLead,
    :schema_type => XSD::QName.new(NsMktows, "SuccessSyncLead"),
    :schema_element => [
      ["result", ["ResultSyncLead", XSD::QName.new(nil, "result")]]
    ]
  )

  EncodedRegistry.register(
    :class => SuccessSyncMultipleLeads,
    :schema_type => XSD::QName.new(NsMktows, "SuccessSyncMultipleLeads"),
    :schema_element => [
      ["result", ["ResultSyncMultipleLeads", XSD::QName.new(nil, "result")]]
    ]
  )

  EncodedRegistry.register(
    :class => AuthenticationHeaderInfo,
    :schema_type => XSD::QName.new(NsMktows, "AuthenticationHeaderInfo"),
    :schema_element => [
      ["mktowsUserId", ["SOAP::SOAPString", XSD::QName.new(nil, "mktowsUserId")]],
      ["requestSignature", ["SOAP::SOAPString", XSD::QName.new(nil, "requestSignature")]],
      ["requestTimestamp", ["SOAP::SOAPString", XSD::QName.new(nil, "requestTimestamp")]],
      ["audit", ["SOAP::SOAPString", XSD::QName.new(nil, "audit")], [0, 1]],
      ["mode", ["SOAP::SOAPInt", XSD::QName.new(nil, "mode")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LeadKeyRef,
    :schema_type => XSD::QName.new(NsMktows, "LeadKeyRef")
  )

  EncodedRegistry.register(
    :class => LeadSyncStatus,
    :schema_type => XSD::QName.new(NsMktows, "LeadSyncStatus")
  )

  EncodedRegistry.register(
    :class => ActivityType,
    :schema_type => XSD::QName.new(NsMktows, "ActivityType")
  )

  EncodedRegistry.register(
    :class => ForeignSysType,
    :schema_type => XSD::QName.new(NsMktows, "ForeignSysType")
  )

  EncodedRegistry.register(
    :class => ReqCampSourceType,
    :schema_type => XSD::QName.new(NsMktows, "ReqCampSourceType")
  )

  EncodedRegistry.register(
    :class => ListKeyType,
    :schema_type => XSD::QName.new(NsMktows, "ListKeyType")
  )

  EncodedRegistry.register(
    :class => ListOperationType,
    :schema_type => XSD::QName.new(NsMktows, "ListOperationType")
  )

  LiteralRegistry.register(
    :class => ArrayOfActivityType,
    :schema_type => XSD::QName.new(NsMktows, "ArrayOfActivityType"),
    :schema_element => [
      ["activityType", ["ActivityType[]", XSD::QName.new(nil, "activityType")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ActivityTypeFilter,
    :schema_type => XSD::QName.new(NsMktows, "ActivityTypeFilter"),
    :schema_element => [
      ["includeTypes", ["ArrayOfActivityType", XSD::QName.new(nil, "includeTypes")], [0, 1]],
      ["excludeTypes", ["ArrayOfActivityType", XSD::QName.new(nil, "excludeTypes")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Attribute,
    :schema_type => XSD::QName.new(NsMktows, "Attribute"),
    :schema_element => [
      ["attrName", ["SOAP::SOAPString", XSD::QName.new(nil, "attrName")]],
      ["attrType", ["SOAP::SOAPString", XSD::QName.new(nil, "attrType")], [0, 1]],
      ["attrValue", ["SOAP::SOAPString", XSD::QName.new(nil, "attrValue")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfAttribute,
    :schema_type => XSD::QName.new(NsMktows, "ArrayOfAttribute"),
    :schema_element => [
      ["attribute", ["Attribute[]", XSD::QName.new(nil, "attribute")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LeadRecord,
    :schema_type => XSD::QName.new(NsMktows, "LeadRecord"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "Id")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "Email")], [0, 1]],
      ["foreignSysPersonId", ["SOAP::SOAPString", XSD::QName.new(nil, "ForeignSysPersonId")], [0, 1]],
      ["foreignSysType", ["ForeignSysType", XSD::QName.new(nil, "ForeignSysType")], [0, 1]],
      ["leadAttributeList", ["ArrayOfAttribute", XSD::QName.new(nil, "leadAttributeList")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfLeadRecord,
    :schema_type => XSD::QName.new(NsMktows, "ArrayOfLeadRecord"),
    :schema_element => [
      ["leadRecord", ["LeadRecord[]", XSD::QName.new(nil, "leadRecord")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ActivityRecord,
    :schema_type => XSD::QName.new(NsMktows, "ActivityRecord"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["activityDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "activityDateTime")]],
      ["activityType", ["SOAP::SOAPString", XSD::QName.new(nil, "activityType")]],
      ["mktgAssetName", ["SOAP::SOAPString", XSD::QName.new(nil, "mktgAssetName")], [0, 1]],
      ["activityAttributes", ["ArrayOfAttribute", XSD::QName.new(nil, "activityAttributes")], [0, 1]],
      ["campaign", ["SOAP::SOAPString", XSD::QName.new(nil, "campaign")], [0, 1]],
      ["personName", ["SOAP::SOAPString", XSD::QName.new(nil, "personName")], [0, 1]],
      ["mktPersonId", ["SOAP::SOAPString", XSD::QName.new(nil, "mktPersonId")]],
      ["foreignSysId", ["SOAP::SOAPString", XSD::QName.new(nil, "foreignSysId")], [0, 1]],
      ["orgName", ["SOAP::SOAPString", XSD::QName.new(nil, "orgName")], [0, 1]],
      ["foreignSysOrgId", ["SOAP::SOAPString", XSD::QName.new(nil, "foreignSysOrgId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CampaignRecord,
    :schema_type => XSD::QName.new(NsMktows, "CampaignRecord"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfCampaignRecord,
    :schema_type => XSD::QName.new(NsMktows, "ArrayOfCampaignRecord"),
    :schema_element => [
      ["campaignRecord", ["CampaignRecord[]", XSD::QName.new(nil, "campaignRecord")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LeadChangeRecord,
    :schema_type => XSD::QName.new(NsMktows, "LeadChangeRecord"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["activityDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "activityDateTime")]],
      ["activityType", ["SOAP::SOAPString", XSD::QName.new(nil, "activityType")]],
      ["mktgAssetName", ["SOAP::SOAPString", XSD::QName.new(nil, "mktgAssetName")], [0, 1]],
      ["activityAttributes", ["ArrayOfAttribute", XSD::QName.new(nil, "activityAttributes")], [0, 1]],
      ["campaign", ["SOAP::SOAPString", XSD::QName.new(nil, "campaign")], [0, 1]],
      ["mktPersonId", ["SOAP::SOAPString", XSD::QName.new(nil, "mktPersonId")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfLeadChangeRecord,
    :schema_type => XSD::QName.new(NsMktows, "ArrayOfLeadChangeRecord"),
    :schema_element => [
      ["leadChangeRecord", ["LeadChangeRecord[]", XSD::QName.new(nil, "leadChangeRecord")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfActivityRecord,
    :schema_type => XSD::QName.new(NsMktows, "ArrayOfActivityRecord"),
    :schema_element => [
      ["activityRecord", ["ActivityRecord[]", XSD::QName.new(nil, "activityRecord")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LeadKey,
    :schema_type => XSD::QName.new(NsMktows, "LeadKey"),
    :schema_element => [
      ["keyType", ["LeadKeyRef", XSD::QName.new(nil, "keyType")]],
      ["keyValue", ["SOAP::SOAPString", XSD::QName.new(nil, "keyValue")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfLeadKey,
    :schema_type => XSD::QName.new(NsMktows, "ArrayOfLeadKey"),
    :schema_element => [
      ["leadKey", ["LeadKey[]", XSD::QName.new(nil, "leadKey")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LeadStatus,
    :schema_type => XSD::QName.new(NsMktows, "LeadStatus"),
    :schema_element => [
      ["leadKey", ["LeadKey", XSD::QName.new(nil, "leadKey")]],
      ["status", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "status")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfLeadStatus,
    :schema_type => XSD::QName.new(NsMktows, "ArrayOfLeadStatus"),
    :schema_element => [
      ["leadStatus", ["LeadStatus[]", XSD::QName.new(nil, "leadStatus")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ListKey,
    :schema_type => XSD::QName.new(NsMktows, "ListKey"),
    :schema_element => [
      ["keyType", ["ListKeyType", XSD::QName.new(nil, "keyType")]],
      ["keyValue", ["SOAP::SOAPString", XSD::QName.new(nil, "keyValue")]]
    ]
  )

  LiteralRegistry.register(
    :class => StreamPosition,
    :schema_type => XSD::QName.new(NsMktows, "StreamPosition"),
    :schema_element => [
      ["latestCreatedAt", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "latestCreatedAt")], [0, 1]],
      ["oldestCreatedAt", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "oldestCreatedAt")], [0, 1]],
      ["activityCreatedAt", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "activityCreatedAt")], [0, 1]],
      ["offset", ["SOAP::SOAPString", XSD::QName.new(nil, "offset")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SyncStatus,
    :schema_type => XSD::QName.new(NsMktows, "SyncStatus"),
    :schema_element => [
      ["leadId", ["SOAP::SOAPInt", XSD::QName.new(nil, "leadId")]],
      ["status", ["LeadSyncStatus", XSD::QName.new(nil, "status")]],
      ["error", ["SOAP::SOAPString", XSD::QName.new(nil, "error")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfSyncStatus,
    :schema_type => XSD::QName.new(NsMktows, "ArrayOfSyncStatus"),
    :schema_element => [
      ["syncStatus", ["SyncStatus[]", XSD::QName.new(nil, "syncStatus")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfBase64Binary,
    :schema_type => XSD::QName.new(NsMktows, "ArrayOfBase64Binary"),
    :schema_element => [
      ["base64Binary", ["SOAP::SOAPBase64[]", XSD::QName.new(nil, "base64Binary")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => VersionedItem,
    :schema_type => XSD::QName.new(NsMktows, "VersionedItem"),
    :schema_element => [
      ["id", ["SOAP::SOAPInteger", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")], [0, 1]],
      ["timestamp", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "timestamp")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfVersionedItem,
    :schema_type => XSD::QName.new(NsMktows, "ArrayOfVersionedItem"),
    :schema_element => [
      ["versionedItem", ["VersionedItem[]", XSD::QName.new(nil, "versionedItem")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ParamsGetCampaignsForSource,
    :schema_type => XSD::QName.new(NsMktows, "ParamsGetCampaignsForSource"),
    :schema_element => [
      ["source", ["ReqCampSourceType", XSD::QName.new(nil, "source")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["exactName", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "exactName")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ParamsGetLead,
    :schema_type => XSD::QName.new(NsMktows, "ParamsGetLead"),
    :schema_element => [
      ["leadKey", ["LeadKey", XSD::QName.new(nil, "leadKey")]]
    ]
  )

  LiteralRegistry.register(
    :class => ParamsGetLeadActivity,
    :schema_type => XSD::QName.new(NsMktows, "ParamsGetLeadActivity"),
    :schema_element => [
      ["leadKey", ["LeadKey", XSD::QName.new(nil, "leadKey")]],
      ["activityFilter", ["ActivityTypeFilter", XSD::QName.new(nil, "activityFilter")], [0, 1]],
      ["startPosition", ["StreamPosition", XSD::QName.new(nil, "startPosition")], [0, 1]],
      ["batchSize", ["SOAP::SOAPInt", XSD::QName.new(nil, "batchSize")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ParamsGetLeadChanges,
    :schema_type => XSD::QName.new(NsMktows, "ParamsGetLeadChanges"),
    :schema_element => [
      ["startPosition", ["StreamPosition", XSD::QName.new(nil, "startPosition")]],
      ["activityFilter", ["ActivityTypeFilter", XSD::QName.new(nil, "activityFilter")], [0, 1]],
      ["batchSize", ["SOAP::SOAPInt", XSD::QName.new(nil, "batchSize")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ParamsGetMultipleLeads,
    :schema_type => XSD::QName.new(NsMktows, "ParamsGetMultipleLeads"),
    :schema_element => [
      ["lastUpdatedAt", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "lastUpdatedAt")]],
      ["streamPosition", ["SOAP::SOAPString", XSD::QName.new(nil, "streamPosition")], [0, 1]],
      ["batchSize", ["SOAP::SOAPInt", XSD::QName.new(nil, "batchSize")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ParamsListOperation,
    :schema_type => XSD::QName.new(NsMktows, "ParamsListOperation"),
    :schema_element => [
      ["listOperation", ["ListOperationType", XSD::QName.new(nil, "listOperation")]],
      ["listKey", ["ListKey", XSD::QName.new(nil, "listKey")]],
      ["listMemberList", ["ArrayOfLeadKey", XSD::QName.new(nil, "listMemberList")]],
      ["strict", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "strict")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ParamsRequestCampaign,
    :schema_type => XSD::QName.new(NsMktows, "ParamsRequestCampaign"),
    :schema_element => [
      ["source", ["ReqCampSourceType", XSD::QName.new(nil, "source")]],
      ["campaignId", ["SOAP::SOAPInt", XSD::QName.new(nil, "campaignId")]],
      ["leadList", ["ArrayOfLeadKey", XSD::QName.new(nil, "leadList")]]
    ]
  )

  LiteralRegistry.register(
    :class => ParamsSyncLead,
    :schema_type => XSD::QName.new(NsMktows, "ParamsSyncLead"),
    :schema_element => [
      ["leadRecord", ["LeadRecord", XSD::QName.new(nil, "leadRecord")]],
      ["returnLead", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "returnLead")]],
      ["marketoCookie", ["SOAP::SOAPString", XSD::QName.new(nil, "marketoCookie")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ParamsSyncMultipleLeads,
    :schema_type => XSD::QName.new(NsMktows, "ParamsSyncMultipleLeads"),
    :schema_element => [
      ["leadRecordList", ["ArrayOfLeadRecord", XSD::QName.new(nil, "leadRecordList")]],
      ["dedupEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "dedupEnabled")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LeadActivityList,
    :schema_type => XSD::QName.new(NsMktows, "LeadActivityList"),
    :schema_element => [
      ["returnCount", ["SOAP::SOAPInt", XSD::QName.new(nil, "returnCount")]],
      ["remainingCount", ["SOAP::SOAPInt", XSD::QName.new(nil, "remainingCount")]],
      ["newStartPosition", ["StreamPosition", XSD::QName.new(nil, "newStartPosition")]],
      ["activityRecordList", ["ArrayOfActivityRecord", XSD::QName.new(nil, "activityRecordList")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ResultGetCampaignsForSource,
    :schema_type => XSD::QName.new(NsMktows, "ResultGetCampaignsForSource"),
    :schema_element => [
      ["returnCount", ["SOAP::SOAPInt", XSD::QName.new(nil, "returnCount")]],
      ["campaignRecordList", ["ArrayOfCampaignRecord", XSD::QName.new(nil, "campaignRecordList")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ResultGetLeadChanges,
    :schema_type => XSD::QName.new(NsMktows, "ResultGetLeadChanges"),
    :schema_element => [
      ["returnCount", ["SOAP::SOAPInt", XSD::QName.new(nil, "returnCount")]],
      ["remainingCount", ["SOAP::SOAPInt", XSD::QName.new(nil, "remainingCount")]],
      ["newStartPosition", ["StreamPosition", XSD::QName.new(nil, "newStartPosition")]],
      ["leadChangeRecordList", ["ArrayOfLeadChangeRecord", XSD::QName.new(nil, "leadChangeRecordList")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ResultGetLead,
    :schema_type => XSD::QName.new(NsMktows, "ResultGetLead"),
    :schema_element => [
      ["count", ["SOAP::SOAPInt", XSD::QName.new(nil, "count")]],
      ["leadRecordList", ["ArrayOfLeadRecord", XSD::QName.new(nil, "leadRecordList")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ResultListOperation,
    :schema_type => XSD::QName.new(NsMktows, "ResultListOperation"),
    :schema_element => [
      ["success", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "success")]],
      ["statusList", ["ArrayOfLeadStatus", XSD::QName.new(nil, "statusList")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ResultGetMultipleLeads,
    :schema_type => XSD::QName.new(NsMktows, "ResultGetMultipleLeads"),
    :schema_element => [
      ["returnCount", ["SOAP::SOAPInt", XSD::QName.new(nil, "returnCount")]],
      ["remainingCount", ["SOAP::SOAPInt", XSD::QName.new(nil, "remainingCount")]],
      ["newStreamPosition", ["SOAP::SOAPString", XSD::QName.new(nil, "newStreamPosition")]],
      ["leadRecordList", ["ArrayOfLeadRecord", XSD::QName.new(nil, "leadRecordList")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ResultRequestCampaign,
    :schema_type => XSD::QName.new(NsMktows, "ResultRequestCampaign"),
    :schema_element => [
      ["success", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "success")]]
    ]
  )

  LiteralRegistry.register(
    :class => ResultSyncLead,
    :schema_type => XSD::QName.new(NsMktows, "ResultSyncLead"),
    :schema_element => [
      ["leadId", ["SOAP::SOAPInt", XSD::QName.new(nil, "leadId")]],
      ["syncStatus", ["LeadSyncStatus", XSD::QName.new(nil, "syncStatus")]],
      ["leadRecord", ["LeadRecord", XSD::QName.new(nil, "leadRecord")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ResultSyncMultipleLeads,
    :schema_type => XSD::QName.new(NsMktows, "ResultSyncMultipleLeads"),
    :schema_element => [
      ["syncStatusList", ["ArrayOfSyncStatus", XSD::QName.new(nil, "syncStatusList")]]
    ]
  )

  LiteralRegistry.register(
    :class => SuccessGetCampaignsForSource,
    :schema_type => XSD::QName.new(NsMktows, "SuccessGetCampaignsForSource"),
    :schema_element => [
      ["result", ["ResultGetCampaignsForSource", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SuccessGetLead,
    :schema_type => XSD::QName.new(NsMktows, "SuccessGetLead"),
    :schema_element => [
      ["result", ["ResultGetLead", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SuccessGetLeadActivity,
    :schema_type => XSD::QName.new(NsMktows, "SuccessGetLeadActivity"),
    :schema_element => [
      ["leadActivityList", ["LeadActivityList", XSD::QName.new(nil, "leadActivityList")]]
    ]
  )

  LiteralRegistry.register(
    :class => SuccessGetLeadChanges,
    :schema_type => XSD::QName.new(NsMktows, "SuccessGetLeadChanges"),
    :schema_element => [
      ["result", ["ResultGetLeadChanges", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SuccessGetMultipleLeads,
    :schema_type => XSD::QName.new(NsMktows, "SuccessGetMultipleLeads"),
    :schema_element => [
      ["result", ["ResultGetMultipleLeads", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SuccessListOperation,
    :schema_type => XSD::QName.new(NsMktows, "SuccessListOperation"),
    :schema_element => [
      ["result", ["ResultListOperation", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SuccessRequestCampaign,
    :schema_type => XSD::QName.new(NsMktows, "SuccessRequestCampaign"),
    :schema_element => [
      ["result", ["ResultRequestCampaign", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SuccessSyncLead,
    :schema_type => XSD::QName.new(NsMktows, "SuccessSyncLead"),
    :schema_element => [
      ["result", ["ResultSyncLead", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SuccessSyncMultipleLeads,
    :schema_type => XSD::QName.new(NsMktows, "SuccessSyncMultipleLeads"),
    :schema_element => [
      ["result", ["ResultSyncMultipleLeads", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => AuthenticationHeaderInfo,
    :schema_type => XSD::QName.new(NsMktows, "AuthenticationHeaderInfo"),
    :schema_element => [
      ["mktowsUserId", ["SOAP::SOAPString", XSD::QName.new(nil, "mktowsUserId")]],
      ["requestSignature", ["SOAP::SOAPString", XSD::QName.new(nil, "requestSignature")]],
      ["requestTimestamp", ["SOAP::SOAPString", XSD::QName.new(nil, "requestTimestamp")]],
      ["audit", ["SOAP::SOAPString", XSD::QName.new(nil, "audit")], [0, 1]],
      ["mode", ["SOAP::SOAPInt", XSD::QName.new(nil, "mode")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LeadKeyRef,
    :schema_type => XSD::QName.new(NsMktows, "LeadKeyRef")
  )

  LiteralRegistry.register(
    :class => LeadSyncStatus,
    :schema_type => XSD::QName.new(NsMktows, "LeadSyncStatus")
  )

  LiteralRegistry.register(
    :class => ActivityType,
    :schema_type => XSD::QName.new(NsMktows, "ActivityType")
  )

  LiteralRegistry.register(
    :class => ForeignSysType,
    :schema_type => XSD::QName.new(NsMktows, "ForeignSysType")
  )

  LiteralRegistry.register(
    :class => ReqCampSourceType,
    :schema_type => XSD::QName.new(NsMktows, "ReqCampSourceType")
  )

  LiteralRegistry.register(
    :class => ListKeyType,
    :schema_type => XSD::QName.new(NsMktows, "ListKeyType")
  )

  LiteralRegistry.register(
    :class => ListOperationType,
    :schema_type => XSD::QName.new(NsMktows, "ListOperationType")
  )

  LiteralRegistry.register(
    :class => AuthenticationHeaderInfo,
    :schema_name => XSD::QName.new(NsMktows, "AuthenticationHeader"),
    :schema_element => [
      ["mktowsUserId", ["SOAP::SOAPString", XSD::QName.new(nil, "mktowsUserId")]],
      ["requestSignature", ["SOAP::SOAPString", XSD::QName.new(nil, "requestSignature")]],
      ["requestTimestamp", ["SOAP::SOAPString", XSD::QName.new(nil, "requestTimestamp")]],
      ["audit", ["SOAP::SOAPString", XSD::QName.new(nil, "audit")], [0, 1]],
      ["mode", ["SOAP::SOAPInt", XSD::QName.new(nil, "mode")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ParamsGetCampaignsForSource,
    :schema_name => XSD::QName.new(NsMktows, "paramsGetCampaignsForSource"),
    :schema_element => [
      ["source", ["ReqCampSourceType", XSD::QName.new(nil, "source")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["exactName", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "exactName")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ParamsGetLead,
    :schema_name => XSD::QName.new(NsMktows, "paramsGetLead"),
    :schema_element => [
      ["leadKey", ["LeadKey", XSD::QName.new(nil, "leadKey")]]
    ]
  )

  LiteralRegistry.register(
    :class => ParamsGetLeadActivity,
    :schema_name => XSD::QName.new(NsMktows, "paramsGetLeadActivity"),
    :schema_element => [
      ["leadKey", ["LeadKey", XSD::QName.new(nil, "leadKey")]],
      ["activityFilter", ["ActivityTypeFilter", XSD::QName.new(nil, "activityFilter")], [0, 1]],
      ["startPosition", ["StreamPosition", XSD::QName.new(nil, "startPosition")], [0, 1]],
      ["batchSize", ["SOAP::SOAPInt", XSD::QName.new(nil, "batchSize")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ParamsGetLeadChanges,
    :schema_name => XSD::QName.new(NsMktows, "paramsGetLeadChanges"),
    :schema_element => [
      ["startPosition", ["StreamPosition", XSD::QName.new(nil, "startPosition")]],
      ["activityFilter", ["ActivityTypeFilter", XSD::QName.new(nil, "activityFilter")], [0, 1]],
      ["batchSize", ["SOAP::SOAPInt", XSD::QName.new(nil, "batchSize")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ParamsGetMultipleLeads,
    :schema_name => XSD::QName.new(NsMktows, "paramsGetMultipleLeads"),
    :schema_element => [
      ["lastUpdatedAt", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "lastUpdatedAt")]],
      ["streamPosition", ["SOAP::SOAPString", XSD::QName.new(nil, "streamPosition")], [0, 1]],
      ["batchSize", ["SOAP::SOAPInt", XSD::QName.new(nil, "batchSize")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ParamsListOperation,
    :schema_name => XSD::QName.new(NsMktows, "paramsListOperation"),
    :schema_element => [
      ["listOperation", ["ListOperationType", XSD::QName.new(nil, "listOperation")]],
      ["listKey", ["ListKey", XSD::QName.new(nil, "listKey")]],
      ["listMemberList", ["ArrayOfLeadKey", XSD::QName.new(nil, "listMemberList")]],
      ["strict", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "strict")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ParamsRequestCampaign,
    :schema_name => XSD::QName.new(NsMktows, "paramsRequestCampaign"),
    :schema_element => [
      ["source", ["ReqCampSourceType", XSD::QName.new(nil, "source")]],
      ["campaignId", ["SOAP::SOAPInt", XSD::QName.new(nil, "campaignId")]],
      ["leadList", ["ArrayOfLeadKey", XSD::QName.new(nil, "leadList")]]
    ]
  )

  LiteralRegistry.register(
    :class => ParamsSyncLead,
    :schema_name => XSD::QName.new(NsMktows, "paramsSyncLead"),
    :schema_element => [
      ["leadRecord", ["LeadRecord", XSD::QName.new(nil, "leadRecord")]],
      ["returnLead", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "returnLead")]],
      ["marketoCookie", ["SOAP::SOAPString", XSD::QName.new(nil, "marketoCookie")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ParamsSyncMultipleLeads,
    :schema_name => XSD::QName.new(NsMktows, "paramsSyncMultipleLeads"),
    :schema_element => [
      ["leadRecordList", ["ArrayOfLeadRecord", XSD::QName.new(nil, "leadRecordList")]],
      ["dedupEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "dedupEnabled")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SuccessGetCampaignsForSource,
    :schema_name => XSD::QName.new(NsMktows, "successGetCampaignsForSource"),
    :schema_element => [
      ["result", ["ResultGetCampaignsForSource", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SuccessGetLead,
    :schema_name => XSD::QName.new(NsMktows, "successGetLead"),
    :schema_element => [
      ["result", ["ResultGetLead", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SuccessGetLeadActivity,
    :schema_name => XSD::QName.new(NsMktows, "successGetLeadActivity"),
    :schema_element => [
      ["leadActivityList", ["LeadActivityList", XSD::QName.new(nil, "leadActivityList")]]
    ]
  )

  LiteralRegistry.register(
    :class => SuccessGetLeadChanges,
    :schema_name => XSD::QName.new(NsMktows, "successGetLeadChanges"),
    :schema_element => [
      ["result", ["ResultGetLeadChanges", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SuccessGetMultipleLeads,
    :schema_name => XSD::QName.new(NsMktows, "successGetMultipleLeads"),
    :schema_element => [
      ["result", ["ResultGetMultipleLeads", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SuccessListOperation,
    :schema_name => XSD::QName.new(NsMktows, "successListOperation"),
    :schema_element => [
      ["result", ["ResultListOperation", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SuccessRequestCampaign,
    :schema_name => XSD::QName.new(NsMktows, "successRequestCampaign"),
    :schema_element => [
      ["result", ["ResultRequestCampaign", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SuccessSyncLead,
    :schema_name => XSD::QName.new(NsMktows, "successSyncLead"),
    :schema_element => [
      ["result", ["ResultSyncLead", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => SuccessSyncMultipleLeads,
    :schema_name => XSD::QName.new(NsMktows, "successSyncMultipleLeads"),
    :schema_element => [
      ["result", ["ResultSyncMultipleLeads", XSD::QName.new(nil, "result")]]
    ]
  )
end
