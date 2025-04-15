/* checksum : a9f760cdc18408313c49c05055be35da */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.message.scope.supported : 'true'
@sap.supported.formats : 'atom json xlsx'
service PurchaseContracts {};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '2'
@sap.label : 'Purchase Contract Item Acc. Assignment'
entity PurchaseContracts.A_PurCtrAccount {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Account Assignment'
  key AccountAssignment : String(30) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item'
  @sap.quickinfo : 'Item Number of Purchasing Document'
  key PurchaseContractItem : String(5) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Document'
  @sap.quickinfo : 'Purchasing Document Number'
  key PurchaseContract : String(10) not null;
  @sap.label : 'Deletion Indicator'
  @sap.quickinfo : 'Deletion Indicator: Purchasing Document Account Assignment'
  IsDeleted : Boolean;
  @sap.unit : 'OrderQuantityUnit'
  @sap.label : 'Quantity'
  Quantity : Decimal(13, 3);
  @sap.label : 'Order Unit'
  @sap.quickinfo : 'Purchase Order Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  OrderQuantityUnit : String(3);
  @sap.semantics : 'unit-of-measure'
  OrderQuantityUnitISOCode : String(3);
  @sap.label : 'Distribution (%)'
  @sap.quickinfo : 'Distribution percentage in the case of multiple acct assgt'
  MultipleAcctAssgmtDistrPercent : Decimal(3, 1);
  @sap.unit : 'DocumentCurrency'
  @sap.variable.scale : 'true'
  @sap.label : 'Net Order Value'
  @sap.quickinfo : 'Net Order Value in PO Currency'
  PurgDocNetAmount : Decimal(13, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  DocumentCurrency : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'G/L Account'
  @sap.quickinfo : 'G/L Account Number'
  GLAccount : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Area'
  BusinessArea : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cost Center'
  CostCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'SD Document'
  @sap.quickinfo : 'Sales and Distribution Document Number'
  SalesOrder : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item'
  @sap.quickinfo : 'Sales Document Item'
  SalesOrderItem : String(6);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Schedule Line Number'
  SalesOrderScheduleLine : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Asset'
  @sap.quickinfo : 'Main Asset Number'
  MasterFixedAsset : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Subnumber'
  @sap.quickinfo : 'Asset Subnumber'
  FixedAsset : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Order'
  @sap.quickinfo : 'Order Number'
  OrderID : String(12);
  @sap.label : 'Goods Recipient'
  GoodsRecipientName : String(12);
  @sap.label : 'Unloading Point'
  UnloadingPointName : String(25);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Controlling Area'
  ControllingArea : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cost Object'
  CostObject : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Profit Center'
  ProfitCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Network'
  @sap.quickinfo : 'Network Number for Account Assignment'
  ProjectNetwork : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Real Estate Key'
  @sap.quickinfo : 'Internal Key of Real Estate Object (FI)'
  RealEstateObject : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Partner'
  @sap.quickinfo : 'Partner account number'
  PartnerAccountNumber : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Commitment Item'
  CommitmentItem : String(24);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Recovery Indicator'
  JointVentureRecoveryCode : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Funds Center'
  FundsCenter : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Functional Area'
  FunctionalArea : String(16);
  @sap.display.format : 'Date'
  @sap.label : 'Reference Date'
  @sap.quickinfo : 'Reference date for settlement'
  SettlementReferenceDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Code'
  @sap.quickinfo : 'Tax on Sales/Purchases Code'
  TaxCode : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Jurisdiction'
  TaxJurisdiction : String(15);
  @sap.unit : 'DocumentCurrency'
  @sap.variable.scale : 'true'
  @sap.label : 'Non-deductible'
  @sap.quickinfo : 'Non-deductible input tax'
  NonDeductibleInputTaxAmount : Decimal(13, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Activity Type'
  CostCtrActivityType : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Process'
  BusinessProcess : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Earmarked Funds'
  @sap.quickinfo : 'Document Number for Earmarked Funds'
  EarmarkedFundsDocument : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grant'
  GrantID : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Budget Period'
  BudgetPeriod : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'WBS Element'
  @sap.quickinfo : 'Work Breakdown Structure Element (WBS Element) Edited'
  WBSElementExternalID : String(24);
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '2'
@sap.label : 'Delivery Address'
entity PurchaseContracts.A_PurCtrAddress {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchase Contract'
  @sap.quickinfo : 'Purchasing Contract Header'
  key PurchaseContract : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Number'
  key AddressID : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item'
  @sap.quickinfo : 'Item Number of Purchasing Contract'
  key PurchaseContractItem : String(5) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Title Key'
  @sap.quickinfo : 'Form-of-Address Key'
  FormOfAddress : String(4);
  @sap.label : 'Full Name'
  @sap.quickinfo : 'Full Name of Person'
  FullName : String(80);
  @sap.label : 'Name 3'
  ConsigneeName3 : String(40);
  @sap.label : 'Name 4'
  ConsigneeName4 : String(40);
  @sap.label : 'c/o'
  @sap.quickinfo : 'c/o name'
  CareOfName : String(40);
  @sap.label : 'City'
  CityName : String(40);
  @sap.label : 'District'
  District : String(35);
  @sap.display.format : 'UpperCase'
  @sap.label : 'City Code'
  CityCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Postal Code'
  @sap.quickinfo : 'City Postal Code'
  PostalCode : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'PO Box Postal Code'
  POBoxPostalCode : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Postal Code'
  @sap.quickinfo : 'Company Postal Code (for Large Customers)'
  CompanyPostalCode : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'PO Box'
  POBox : String(10);
  @sap.label : 'PO Box City'
  @sap.quickinfo : 'PO Box city'
  POBoxDeviatingCityName : String(40);
  @sap.label : 'Street'
  StreetName : String(60);
  @sap.label : 'House Number'
  HouseNumber : String(10);
  @sap.label : 'Street 2'
  StreetPrefixName : String(40);
  @sap.label : 'Street 3'
  AdditionalStreetPrefixName : String(40);
  @sap.label : 'Street 5'
  AdditionalStreetSuffixName : String(40);
  @sap.label : 'Building Code'
  @sap.quickinfo : 'Building (Number or Code)'
  Building : String(20);
  @sap.label : 'Floor'
  @sap.quickinfo : 'Floor in building'
  Floor : String(10);
  @sap.label : 'Room Number'
  @sap.quickinfo : 'Room or Apartment Number'
  RoomNumber : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country/Region Key'
  Country : String(3);
  @sap.label : 'Language Key'
  CorrespondenceLanguage : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Region'
  @sap.quickinfo : 'Region (State, Province, County)'
  Region : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Time Zone'
  @sap.quickinfo : 'Address Time Zone'
  AddressTimeZone : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Jurisdiction'
  TaxJurisdiction : String(15);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Comm. Method'
  @sap.quickinfo : 'Communication Method (Key) (Business Address Services)'
  PrfrdCommMediumType : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Telephone'
  @sap.quickinfo : 'Telephone No.: Dialing Code and Number'
  PhoneNumber : String(30);
  @sap.label : 'Fax Number'
  FaxNumber : String(31);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transportation Zone'
  @sap.quickinfo : 'Transportation zone to or from which the goods are delivered'
  TransportZone : String(10);
  @sap.label : 'Supplement'
  @sap.quickinfo : 'House number supplement'
  HouseNumberSupplementText : String(10);
  @sap.label : 'Street 4'
  StreetSuffixName : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '2'
@sap.label : 'Item Notes'
entity PurchaseContracts.A_PurchaseContractItemNotes {
  @sap.label : 'Language Key'
  key Language : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Text ID'
  key TextObjectType : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Text Name'
  @sap.quickinfo : 'Name'
  key ArchitecturalObjectNumber : String(70) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Text object'
  @sap.quickinfo : 'Texts: application object'
  key TechnicalObjectType : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item'
  @sap.quickinfo : 'Item Number of Purchasing Document'
  key PurchaseContractItem : String(5) not null;
  key PurchaseContract : String(10) not null;
  @sap.label : 'Long Text'
  NoteDescription : LargeString;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fixing'
  @sap.quickinfo : '&quot;Fixed&quot; Indicator for Texts'
  FixedIndicator : String(1);
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '2'
@sap.label : 'Purchase Contract Item'
entity PurchaseContracts.A_PurchaseContractItem {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchase Contract'
  @sap.quickinfo : 'Purchasing Contract Header'
  @sap.value.list : 'standard'
  key PurchaseContract : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item'
  @sap.quickinfo : 'Item Number of Purchasing Contract'
  key PurchaseContractItem : String(5) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Deletion Indicator'
  @sap.quickinfo : 'Deletion Indicator in Purchasing Document'
  PurchasingContractDeletionCode : String(1);
  @sap.label : 'Short Text'
  PurchaseContractItemText : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  CompanyCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  Plant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Storage Location'
  StorageLocation : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Req. Tracking Number'
  @sap.quickinfo : 'Requirement Tracking Number'
  RequirementTracking : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material Group'
  MaterialGroup : String(9);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier Mat. No.'
  @sap.quickinfo : 'Material Number Used by Supplier'
  SupplierMaterialNumber : String(35);
  @sap.label : 'Order Unit'
  @sap.quickinfo : 'Purchase Order Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  OrderQuantityUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'ISO Code'
  @sap.quickinfo : 'ISO Code for Unit of Measurement'
  OrderQuantityUnitISOCode : String(3);
  @sap.unit : 'OrderQuantityUnit'
  @sap.label : 'Target Quantity'
  TargetQuantity : Decimal(13, 3);
  @sap.unit : 'OrderQuantityUnit'
  @sap.label : 'Stand.Rel.Order.Qty.'
  @sap.quickinfo : 'Standard release order quantity'
  PurgDocReleaseOrderQuantity : Decimal(13, 3);
  @sap.label : 'Order Price Unit'
  @sap.quickinfo : 'Order Price Unit (Purchasing)'
  @sap.semantics : 'unit-of-measure'
  OrderPriceUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'ISO Code'
  @sap.quickinfo : 'ISO Code for Unit of Measurement'
  OrderPriceUnitISOCode : String(3);
  @sap.label : 'Qty. Conv. Numerator'
  @sap.quickinfo : 'Numerator for Conversion of Order Price Unit into Order Unit'
  OrderPriceUnitToOrderUnitNmrtr : Decimal(5, 0);
  @sap.label : 'Quantity Conversion'
  @sap.quickinfo : 'Denominator for Conv. of Order Price Unit into Order Unit'
  OrdPriceUnitToOrderUnitDnmntr : Decimal(5, 0);
  @sap.unit : 'DocumentCurrency'
  @sap.variable.scale : 'true'
  @sap.label : 'Net Order Price'
  @sap.quickinfo : 'Net Price in Purchasing Document (in Document Currency)'
  ContractNetPriceAmount : Decimal(11, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  DocumentCurrency : String(5);
  @sap.unit : 'OrderQuantityUnit'
  @sap.label : 'Price Unit'
  NetPriceQuantity : Decimal(5, 0);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Code'
  @sap.quickinfo : 'Tax on Sales/Purchases Code'
  TaxCode : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Ctry/Reg.'
  @sap.quickinfo : 'Tax Reporting Country/Region'
  TaxCountry : String(3);
  @sap.display.format : 'Date'
  @sap.label : 'Tax Date'
  @sap.quickinfo : 'Date for Determining Tax Rates'
  TaxDeterminationDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Stock Type'
  StockType : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Info Record Update'
  @sap.quickinfo : 'Indicator: Update Info Record'
  PurchasingInfoRecordUpdateCode : String(1);
  @sap.label : 'Print Price'
  @sap.quickinfo : 'Price Printout'
  PriceIsToBePrinted : Boolean;
  @sap.label : 'Estimated Price'
  @sap.quickinfo : 'Indicator: Estimated Price'
  PurchasingPriceIsEstimated : Boolean;
  @sap.label : '1st Reminder/Exped.'
  @sap.quickinfo : 'Number of Days for First Reminder/Expediter'
  NoDaysReminder1 : Decimal(3, 0);
  @sap.label : '2nd Reminder/Exped.'
  @sap.quickinfo : 'Number of Days for Second Reminder/Expediter'
  NoDaysReminder2 : Decimal(3, 0);
  @sap.label : '3rd Reminder/Exped.'
  @sap.quickinfo : 'Number of Days for Third Reminder/Expediter'
  NoDaysReminder3 : Decimal(3, 0);
  @sap.label : 'Planned Deliv. Time'
  @sap.quickinfo : 'Planned Delivery Time in Days'
  PlannedDeliveryDurationInDays : Decimal(3, 0);
  @sap.label : 'Overdeliv. Tolerance'
  @sap.quickinfo : 'Overdelivery Tolerance'
  OverdelivTolrtdLmtRatioInPct : Decimal(3, 1);
  @sap.label : 'Unltd Overdelivery'
  @sap.quickinfo : 'Unlimited Overdelivery Allowed'
  UnlimitedOverdeliveryIsAllowed : Boolean;
  @sap.label : 'Underdel. Tolerance'
  @sap.quickinfo : 'Underdelivery Tolerance'
  UnderdelivTolrtdLmtRatioInPct : Decimal(3, 1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Item Category'
  @sap.quickinfo : 'Item category in purchasing document'
  PurchasingDocumentItemCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Acct Assignment Cat.'
  @sap.quickinfo : 'Account Assignment Category'
  AccountAssignmentCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Distribut. Indicator'
  @sap.quickinfo : 'Distribution Indicator for Multiple Account Assignment'
  MultipleAcctAssgmtDistribution : String(1);
  @sap.label : 'Goods Receipt'
  @sap.quickinfo : 'Goods Receipt Indicator'
  GoodsReceiptIsExpected : Boolean;
  @sap.label : 'GR Non-Valuated'
  @sap.quickinfo : 'Goods Receipt, Non-Valuated'
  GoodsReceiptIsNonValuated : Boolean;
  @sap.label : 'Invoice Receipt'
  @sap.quickinfo : 'Invoice Receipt Indicator'
  InvoiceIsExpected : Boolean;
  @sap.label : 'GR-Based Inv. Verif.'
  @sap.quickinfo : 'Indicator: GR-Based Invoice Verification'
  InvoiceIsGoodsReceiptBased : Boolean;
  @sap.label : 'Acknowledgment Reqd.'
  @sap.quickinfo : 'Order Acknowledgment Requirement'
  IsOrderAcknRqd : Boolean;
  @sap.label : 'Order Acknowledgment'
  @sap.quickinfo : 'Order Acknowledgment Number'
  PurgDocOrderAcknNumber : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Shipping Instruction'
  @sap.quickinfo : 'Shipping Instructions'
  ShippingInstruction : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address'
  @sap.quickinfo : 'Manual address number in purchasing document item'
  ManualDeliveryAddressID : String(10);
  @sap.label : 'Volume Unit'
  @sap.semantics : 'unit-of-measure'
  VolumeUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'ISO Code'
  @sap.quickinfo : 'ISO Code for Unit of Measurement'
  PurContrVolumeUnitISOCode : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incoterms'
  @sap.quickinfo : 'Incoterms (Part 1)'
  IncotermsClassification : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier'
  @sap.quickinfo : 'Supplier to be Supplied/Who is to Receive Delivery'
  Subcontractor : String(10);
  @sap.label : 'Eval. Receipt Sett.'
  @sap.quickinfo : 'Evaluated Receipt Settlement (ERS)'
  EvaldRcptSettlmtIsAllowed : Boolean;
  @sap.label : 'Incoterms Location 1'
  IncotermsLocation1 : String(70);
  @sap.label : 'Incoterms Location 2'
  IncotermsLocation2 : String(70);
  @sap.label : 'Incoterm Loc. 1 ID'
  @sap.quickinfo : 'Identifier for Incoterm Location 1'
  IncotermsLocation1Identifier : String(20);
  @sap.label : 'Incoterm Loc. 2 ID'
  @sap.quickinfo : 'Identifier for Incoterm Location 2'
  IncotermsLocation2Identifier : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Material Number'
  Material : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Service Performer'
  ServicePerformer : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product Type Group'
  ProductTypeCode : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material Type'
  MaterialType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Kanban Indicator'
  PurContractItmReplnmtElmntType : String(1);
  PurContrAcceptedAtOriginCode : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier Check Sts'
  @sap.quickinfo : 'Product Compliance Supplier Check Status (Item)'
  PurgProdCmplncSupplierStatus : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Char15'
  @sap.quickinfo : 'Char 15'
  PurchaseContractItemFormatted : String(15);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Higher-Level Item'
  @sap.quickinfo : 'Higher-Level Item in Purchasing Documents'
  PurchasingParentItem : String(5);
  PurgDocItemCatalogRelevance : String(1);
  ContractConsumptionInPct : Decimal(18, 3);
  to_PurContrItemCndnValdty : Composition of many PurchaseContracts.A_PurContrItmCndnValdty {  };
  to_PurCtrAccount : Composition of many PurchaseContracts.A_PurCtrAccount {  };
  to_PurCtrAddress : Composition of many PurchaseContracts.A_PurCtrAddress {  };
  to_PurCtrItemNotes : Composition of many PurchaseContracts.A_PurchaseContractItemNotes {  };
  to_PurchaseContract : Association to PurchaseContracts.A_PurchaseContract {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '2'
@sap.label : 'Header Notes'
entity PurchaseContracts.A_PurchaseContractNotes {
  @sap.label : 'Language Key'
  key Language : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Text ID'
  key TextObjectType : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Text object'
  @sap.quickinfo : 'Texts: application object'
  key TechnicalObjectType : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Text Name'
  @sap.quickinfo : 'Name'
  key ArchitecturalObjectNumber : String(70) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Document'
  @sap.quickinfo : 'Purchasing Document Number'
  key PurchaseContract : String(10) not null;
  @sap.label : 'Long Text'
  NoteDescription : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '2'
@sap.label : 'Purchase Contract Partner'
entity PurchaseContracts.A_PurCtrPartners {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Document'
  @sap.quickinfo : 'Purchasing Document Number'
  key PurchaseContract : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item'
  @sap.quickinfo : 'Item Number of Purchasing Document'
  key PurchaseContractItem : String(5) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purch. Organization'
  @sap.quickinfo : 'Purchasing Organization'
  key PurchasingOrganization : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Partner Function'
  key PartnerFunction : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  key Plant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier Subrange'
  key SupplierSubrange : String(6) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Partner counter'
  key PartnerCounter : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier'
  @sap.quickinfo : 'Account Number of Supplier'
  Supplier : String(10);
  @sap.label : 'Default Partner'
  DefaultPartner : Boolean;
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '2'
@sap.label : 'Purchase Contract'
entity PurchaseContracts.A_PurchaseContract {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Active Purchase Doc'
  @sap.quickinfo : 'Active Purchasing Document'
  key PurchaseContract : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Doc. Type'
  @sap.quickinfo : 'Purchasing Document Type'
  PurchaseContractType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  CompanyCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Deletion Indicator'
  @sap.quickinfo : 'Deletion Indicator in Purchasing Document'
  PurchasingDocumentDeletionCode : String(1);
  @sap.display.format : 'Date'
  @sap.label : 'Created On'
  @sap.quickinfo : 'Creation Date of Purchasing Document'
  CreationDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Created By'
  @sap.quickinfo : 'User of person who created a purchasing document'
  CreatedByUser : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier'
  Supplier : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purch. Organization'
  @sap.quickinfo : 'Purchasing Organization'
  PurchasingOrganization : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Group'
  PurchasingGroup : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payment Terms'
  @sap.quickinfo : 'Terms of Payment Key'
  PaymentTerms : String(4);
  @sap.label : 'Days 1'
  @sap.quickinfo : 'Cash Discount Days 1'
  CashDiscount1Days : Decimal(3, 0);
  @sap.label : 'Days 2'
  @sap.quickinfo : 'Cash Discount Days 2'
  CashDiscount2Days : Decimal(3, 0);
  @sap.label : 'Days Net'
  @sap.quickinfo : 'Net Payment Terms Period'
  NetPaymentDays : Decimal(3, 0);
  @sap.label : 'CD Percentage 1'
  @sap.quickinfo : 'Cash Discount Percentage 1'
  CashDiscount1Percent : Decimal(5, 3);
  @sap.label : 'CD Percentage 2'
  @sap.quickinfo : 'Cash Discount Percentage 2'
  CashDiscount2Percent : Decimal(5, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  DocumentCurrency : String(5);
  @sap.label : 'Absolute Exchange Rate'
  ExchangeRate : Decimal(9, 5);
  @sap.label : 'Fixed Exchange Rate'
  @sap.quickinfo : 'Indicator for Fixed Exchange Rate'
  ExchangeRateIsFixed : Boolean;
  @sap.display.format : 'Date'
  @sap.label : 'Validity Per. Start'
  @sap.quickinfo : 'Start of Validity Period'
  ValidityStartDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Validity Period End'
  @sap.quickinfo : 'End of Validity Period'
  ValidityEndDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Quotation Date'
  @sap.quickinfo : 'Quotation Submission Date'
  QuotationSubmissionDate : Date;
  @sap.label : 'Your Reference'
  CorrespncExternalReference : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Quotation'
  @sap.quickinfo : 'Quotation Number'
  SupplierQuotation : String(10);
  @sap.label : 'Salesperson'
  @sap.quickinfo : 'Responsible Salesperson at Supplier''s Office'
  SupplierRespSalesPersonName : String(30);
  @sap.label : 'Supplier Phone'
  @sap.quickinfo : 'Supplier''s Phone Number'
  SupplierPhoneNumber : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Goods Supplier'
  SupplyingSupplier : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incoterms'
  @sap.quickinfo : 'Incoterms (Part 1)'
  IncotermsClassification : String(3);
  @sap.label : 'Incoterms (Part 2)'
  IncotermsTransferLocation : String(28);
  @sap.unit : 'DocumentCurrency'
  @sap.variable.scale : 'true'
  @sap.label : 'Target Value'
  @sap.quickinfo : 'Target Value for Header Area per Distribution'
  PurchaseContractTargetAmount : Decimal(15, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Invoicing Party'
  @sap.quickinfo : 'Different Invoicing Party'
  InvoicingParty : String(10);
  @sap.label : 'Our Reference'
  CorrespncInternalReference : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Release indicator'
  @sap.quickinfo : 'Release Indicator: Purchasing Document'
  ReleaseCode : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incoterms Version'
  IncotermsVersion : String(4);
  @sap.label : 'Incoterms Location 1'
  IncotermsLocation1 : String(70);
  @sap.label : 'Incoterms Location 2'
  IncotermsLocation2 : String(70);
  @sap.label : 'Incoterm Loc. 1 ID'
  @sap.quickinfo : 'Identifier for Incoterm Location 1'
  IncotermsLocation1Identifier : String(20);
  @sap.label : 'Incoterm Loc. 2 ID'
  @sap.quickinfo : 'Identifier for Incoterm Location 2'
  IncotermsLocation2Identifier : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Busin. Purp. Cmpltd.'
  @sap.quickinfo : 'Business Purpose Completed'
  IsEndOfPurposeBlocked : String(1);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Last Changed'
  @sap.quickinfo : 'Change Time Stamp'
  LastChangeDateTime : Timestamp;
  PurContrLastChgdDteTimeValue : Decimal(21, 7);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Proc. State'
  @sap.quickinfo : 'Purchasing Document Processing State'
  PurchasingProcessingStatus : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier Check Sts'
  @sap.quickinfo : 'Product Compliance Supplier Check Status (All Items)'
  PurgAggrgdProdCmplncSuplrSts : String(1);
  @sap.label : 'Purch. Processing Status Name'
  PurchasingProcessingStatusName : String(60);
  @sap.label : 'Boolean Variable (X = True, - = False, Space = Unknown)'
  @sap.heading : ''
  PurgContractIsInPreparation : Boolean;
  @sap.label : 'Ext. Reference ID'
  @sap.quickinfo : 'External Reference ID'
  PurgDocExternalReference : String(70);
  @sap.label : 'Purch. Doc. Name'
  @sap.quickinfo : 'Name of Purchasing Document'
  PurchasingDocumentName : String(40);
  PurgDocCatalogItemRelevance : String(1);
  @sap.label : 'Short Description'
  @sap.quickinfo : 'Short Text for Fixed Values'
  PurContrAttentionRequiredText : String(60);
  ContractConsumptionInPct : Decimal(18, 3);
  VersionIsEnabled : String(1);
  @sap.label : 'Boolean Variable (X = True, - = False, Space = Unknown)'
  @sap.heading : ''
  PurDocHasChgVers : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Version'
  @sap.quickinfo : 'Version number in Purchasing'
  PurchasingDocumentVersion : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reason for Change'
  PurchasingDocVersionReasonCode : String(4);
  to_PurchaseContractItem : Composition of many PurchaseContracts.A_PurchaseContractItem {  };
  to_PurContrHdrCndnValdty : Association to many PurchaseContracts.A_PurContrHdrCndnValdty {  };
  to_Purctrnotes : Composition of many PurchaseContracts.A_PurchaseContractNotes {  };
  to_PurCtrPartners : Composition of many PurchaseContracts.A_PurCtrPartners {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '2'
@sap.label : 'Purchase Contract Header Conditions Amount'
entity PurchaseContracts.A_PurContrHdrCndnAmount {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Document'
  @sap.quickinfo : 'Purchasing Document Number'
  key PurchaseContract : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condition Record No.'
  @sap.quickinfo : 'Number of Condition Record'
  key ConditionRecord : String(10) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Valid To'
  @sap.quickinfo : 'Validity end date of the condition record'
  key ConditionValidityEndDate : Date not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Sequent. No. of Cond'
  @sap.quickinfo : 'Sequential number of the condition'
  key ConditionSequentialNumber : String(2) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Valid From'
  @sap.quickinfo : 'Validity start date of the condition record'
  ConditionValidityStartDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condition Type'
  ConditionType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Text number'
  @sap.quickinfo : 'Number of texts'
  ConditionTextID : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Calculation Type'
  @sap.quickinfo : 'Calculation Type for Condition'
  ConditionCalculationType : String(1);
  @sap.label : 'Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  ConditionRateRatioUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condition Currency'
  @sap.quickinfo : 'Condition Unit (Currency or Percentage)'
  @sap.semantics : 'currency-code'
  PurContrCndnRateRatioUntISOCd : String(5);
  @sap.label : 'Ratio'
  @sap.quickinfo : 'Condition Ratio (in Percent or Per Mille)'
  ConditionRateRatio : Decimal(24, 9);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condition Currency'
  @sap.quickinfo : 'Condition Unit (Currency or Percentage)'
  @sap.semantics : 'currency-code'
  ConditionCurrency : String(5);
  @sap.unit : 'ConditionCurrency'
  @sap.label : 'Amount'
  @sap.quickinfo : 'Condition Amount or Percentage'
  ConditionRateAmount : Decimal(24, 9);
  @sap.unit : 'ConditionRateValueUnit'
  @sap.variable.scale : 'true'
  @sap.label : 'Condition Amount'
  @sap.quickinfo : 'Condition amount or percentage where no scale exists'
  ConditionRateValue : Decimal(11, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condition Currency'
  @sap.quickinfo : 'Condition Unit (Currency or Percentage)'
  @sap.semantics : 'currency-code'
  ConditionRateValueUnit : String(5);
  @sap.unit : 'ConditionQuantityUnit'
  @sap.label : 'Pricing Unit'
  @sap.quickinfo : 'Condition Pricing Unit'
  ConditionQuantity : Decimal(5, 0);
  @sap.label : 'Unit of Measure'
  @sap.quickinfo : 'Condition Unit'
  @sap.semantics : 'unit-of-measure'
  ConditionQuantityUnit : String(3);
  @sap.semantics : 'unit-of-measure'
  PurContrCndnQtyUnitISOCode : String(3);
  @sap.label : 'NumeratorForConvers.'
  @sap.quickinfo : 'Numerator for converting condition units to base units'
  ConditionToBaseQtyNmrtr : Decimal(5, 0);
  @sap.label : 'Denom.for Conversion'
  @sap.quickinfo : 'Denominator for converting condition units to base units'
  ConditionToBaseQtyDnmntr : Decimal(5, 0);
  @sap.label : 'Base Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  BaseUnit : String(3);
  @sap.semantics : 'unit-of-measure'
  PurContrBaseUnitISOCode : String(3);
  @sap.unit : 'ConditionRateValueUnit'
  @sap.label : 'Amount'
  @sap.quickinfo : 'Condition Amount or Percentage'
  ConditionLowerLimitAmount : Decimal(24, 9);
  @sap.label : 'Ratio'
  @sap.quickinfo : 'Condition Ratio (in Percent or Per Mille)'
  ConditionLowerLimitRatio : Decimal(24, 9);
  @sap.unit : 'ConditionRateValueUnit'
  @sap.label : 'Amount'
  @sap.quickinfo : 'Condition Amount or Percentage'
  ConditionUpperLimitAmount : Decimal(24, 9);
  @sap.label : 'Ratio'
  @sap.quickinfo : 'Condition Ratio (in Percent or Per Mille)'
  ConditionUpperLimitRatio : Decimal(24, 9);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condition Currency'
  @sap.quickinfo : 'Condition Currency (for Cumulation Fields)'
  @sap.semantics : 'currency-code'
  ConditionAlternativeCurrency : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Exclusion'
  @sap.quickinfo : 'Condition exclusion indicator'
  ConditionExclusion : String(1);
  @sap.label : 'Deletion Indicator'
  @sap.quickinfo : 'Deletion Indicator for Condition Record'
  ConditionIsDeleted : Boolean;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Addit. Value Days'
  @sap.quickinfo : 'Additional Value Days'
  AdditionalValueDays : String(2);
  @sap.display.format : 'Date'
  @sap.label : 'Fixed Value Date'
  FixedValueDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Terms of Payment'
  @sap.quickinfo : 'Key for Terms of Payment'
  PaymentTerms : String(4);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Max.number.of.orders'
  @sap.quickinfo : 'Maximum number of sales orders per condition record'
  CndnMaxNumberOfSalesOrders : String(2);
  @sap.unit : 'BaseUnit'
  @sap.label : 'Min.cond.base value'
  @sap.quickinfo : 'Minimum condition base value'
  MinimumConditionBasisValue : Decimal(15, 3);
  @sap.unit : 'BaseUnit'
  @sap.label : 'Max.cond.base value'
  @sap.quickinfo : 'Maximum condition base value'
  MaximumConditionBasisValue : Decimal(15, 3);
  @sap.unit : 'ConditionAlternativeCurrency'
  @sap.variable.scale : 'true'
  @sap.label : 'Max.condition value'
  @sap.quickinfo : 'Maximum condition value'
  MaximumConditionAmount : Decimal(13, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Release Status'
  ConditionReleaseStatus : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cndn Change Reason'
  @sap.quickinfo : 'Reason for Changing Condition Record'
  ConditionChangeReason : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Scale Type'
  PricingScaleType : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Scale Base Type'
  PricingScaleBasis : String(1);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Pricing scale'
  @sap.quickinfo : 'Scale number for pricing'
  PricingScaleLine : String(4);
  @sap.label : 'Scales'
  @sap.quickinfo : 'Scales are maintained'
  ConditionHasScales : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Check Scale'
  @sap.quickinfo : 'Checking Rule for Scale Amounts'
  PricingScaleCheckingRule : String(1);
  to_PurchaseContract : Association to PurchaseContracts.A_PurchaseContract {  };
  to_PurContrHdrCndnScale : Association to many PurchaseContracts.A_PurContrHdrCndnScale {  };
  to_PurContrHdrCndnValdty : Association to PurchaseContracts.A_PurContrHdrCndnValdty {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '2'
@sap.label : 'Purchase Contract Header Conditions Scales'
entity PurchaseContracts.A_PurContrHdrCndnScale {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Document'
  @sap.quickinfo : 'Purchasing Document Number'
  key PurchaseContract : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condition Record No.'
  @sap.quickinfo : 'Number of Condition Record'
  key ConditionRecord : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Sequent. No. of Cond'
  @sap.quickinfo : 'Sequential number of the condition'
  key ConditionSequentialNumber : String(2) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Valid To'
  @sap.quickinfo : 'Validity end date of the condition record'
  key ConditionValidityEndDate : Date not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Line number'
  @sap.quickinfo : 'Current number of the line scale'
  key ConditionScaleLine : String(4) not null;
  @sap.unit : 'ConditionScaleQuantityUnit'
  @sap.label : 'Scale Quantity'
  @sap.quickinfo : 'Condition Scale Quantity'
  ConditionScaleQuantity : Decimal(15, 3);
  @sap.label : 'Scale Unit of Meas.'
  @sap.quickinfo : 'Condition Scale Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  ConditionScaleQuantityUnit : String(3);
  @sap.semantics : 'unit-of-measure'
  PurContrCndnScQtyUnitISOCode : String(3);
  @sap.unit : 'ConditionScaleAmountCurrency'
  @sap.variable.scale : 'true'
  @sap.label : 'Scale Value'
  ConditionScaleAmount : Decimal(15, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Scale Currency'
  @sap.semantics : 'currency-code'
  ConditionScaleAmountCurrency : String(5);
  @sap.unit : 'ConditionRateValueUnit'
  @sap.variable.scale : 'true'
  @sap.label : 'Amount'
  @sap.quickinfo : 'Condition Amount or Percentage'
  ConditionRateValue : Decimal(11, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condition Currency'
  @sap.quickinfo : 'Condition Unit (Currency or Percentage)'
  @sap.semantics : 'currency-code'
  ConditionRateValueUnit : String(5);
  @sap.label : 'Ratio'
  @sap.quickinfo : 'Condition Ratio (in Percent or Per Mille)'
  ConditionRateRatio : Decimal(24, 9);
  @sap.label : 'Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  ConditionRateRatioUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condition Currency'
  @sap.quickinfo : 'Condition Unit (Currency or Percentage)'
  @sap.semantics : 'currency-code'
  PurContrCndnRateRatioUntISOCd : String(5);
  @sap.unit : 'ConditionCurrency'
  @sap.label : 'Amount'
  @sap.quickinfo : 'Condition Amount or Percentage'
  ConditionRateAmount : Decimal(24, 9);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condition Currency'
  @sap.quickinfo : 'Condition Unit (Currency or Percentage)'
  @sap.semantics : 'currency-code'
  ConditionCurrency : String(5);
  @sap.label : 'Deletion Indicator'
  @sap.quickinfo : 'Deletion Indicator for Condition Record'
  ConditionScaleIsDeleted : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Scale Type'
  PricingScaleType : String(1);
  @sap.unit : 'ConditionQuantityUnit'
  @sap.label : 'Pricing Unit'
  @sap.quickinfo : 'Condition Pricing Unit'
  ConditionQuantity : Decimal(5, 0);
  @sap.label : 'Unit of Measure'
  @sap.quickinfo : 'Condition Unit'
  @sap.semantics : 'unit-of-measure'
  ConditionQuantityUnit : String(3);
  @sap.semantics : 'unit-of-measure'
  PurContrCndnQtyUnitISOCode : String(3);
  to_PurchaseContract : Association to PurchaseContracts.A_PurchaseContract {  };
  to_PurContrHdrCndnAmount : Association to PurchaseContracts.A_PurContrHdrCndnAmount {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '2'
@sap.label : 'Purchase Contract Header Conditions Validity'
entity PurchaseContracts.A_PurContrHdrCndnValdty {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Document'
  @sap.quickinfo : 'Purchasing Document Number'
  key PurchaseContract : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condition Record No.'
  @sap.quickinfo : 'Number of Condition Record'
  key ConditionRecord : String(10) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Valid To'
  @sap.quickinfo : 'Validity end date of the condition record'
  key ConditionValidityEndDate : Date not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Application'
  ConditionApplication : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condition Type'
  ConditionType : String(4);
  @sap.label : 'Deletion Indicator'
  @sap.quickinfo : 'Deletion Indicator for Condition Record'
  ConditionIsDeleted : Boolean;
  @sap.display.format : 'Date'
  @sap.label : 'Valid From'
  @sap.quickinfo : 'Validity start date of the condition record'
  ConditionValidityStartDate : Date;
  to_PurchaseContract : Association to PurchaseContracts.A_PurchaseContract {  };
  to_PurContrHdrCndnAmount : Association to many PurchaseContracts.A_PurContrHdrCndnAmount {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '2'
@sap.label : 'Purchase Contract Item Condition Amount'
entity PurchaseContracts.A_PurContrItmCndnAmount {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Document'
  @sap.quickinfo : 'Purchasing Document Number'
  key PurchaseContract : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item'
  @sap.quickinfo : 'Item Number of Purchasing Document'
  key PurchaseContractItem : String(5) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condition Record No.'
  @sap.quickinfo : 'Number of Condition Record'
  key ConditionRecord : String(10) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Valid To'
  @sap.quickinfo : 'Validity end date of the condition record'
  key ConditionValidityEndDate : Date not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Sequent. No. of Cond'
  @sap.quickinfo : 'Sequential number of the condition'
  key ConditionSequentialNumber : String(2) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Valid From'
  @sap.quickinfo : 'Validity start date of the condition record'
  ConditionValidityStartDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  Plant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condition Type'
  ConditionType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Text number'
  @sap.quickinfo : 'Number of texts'
  ConditionTextID : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Calculation Type'
  @sap.quickinfo : 'Calculation Type for Condition'
  ConditionCalculationType : String(1);
  @sap.label : 'Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  ConditionRateRatioUnit : String(3);
  @sap.semantics : 'unit-of-measure'
  PurContrCndnRateRatioUntISOCd : String(3);
  @sap.label : 'Ratio'
  @sap.quickinfo : 'Condition Ratio (in Percent or Per Mille)'
  ConditionRateRatio : Decimal(24, 9);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condition Currency'
  @sap.quickinfo : 'Condition Unit (Currency or Percentage)'
  @sap.semantics : 'currency-code'
  ConditionCurrency : String(5);
  @sap.unit : 'ConditionCurrency'
  @sap.label : 'Amount'
  @sap.quickinfo : 'Condition Amount or Percentage'
  ConditionRateAmount : Decimal(24, 9);
  @sap.unit : 'ConditionRateValueUnit'
  @sap.variable.scale : 'true'
  @sap.label : 'Condition Amount'
  @sap.quickinfo : 'Condition amount or percentage where no scale exists'
  ConditionRateValue : Decimal(11, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condition Currency'
  @sap.quickinfo : 'Condition Unit (Currency or Percentage)'
  @sap.semantics : 'currency-code'
  ConditionRateValueUnit : String(5);
  @sap.unit : 'ConditionQuantityUnit'
  @sap.label : 'Pricing Unit'
  @sap.quickinfo : 'Condition Pricing Unit'
  ConditionQuantity : Decimal(5, 0);
  @sap.label : 'Unit of Measure'
  @sap.quickinfo : 'Condition Unit'
  @sap.semantics : 'unit-of-measure'
  ConditionQuantityUnit : String(3);
  PurContrCndnQtyUnitISOCode : String(3);
  @sap.label : 'NumeratorForConvers.'
  @sap.quickinfo : 'Numerator for converting condition units to base units'
  ConditionToBaseQtyNmrtr : Decimal(5, 0);
  @sap.label : 'Denom.for Conversion'
  @sap.quickinfo : 'Denominator for converting condition units to base units'
  ConditionToBaseQtyDnmntr : Decimal(5, 0);
  @sap.label : 'Base Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  BaseUnit : String(3);
  @sap.semantics : 'unit-of-measure'
  PurContrBaseUnitISOCode : String(3);
  @sap.unit : 'ConditionRateValueUnit'
  @sap.label : 'Amount'
  @sap.quickinfo : 'Condition Amount or Percentage'
  ConditionLowerLimitAmount : Decimal(24, 9);
  @sap.label : 'Ratio'
  @sap.quickinfo : 'Condition Ratio (in Percent or Per Mille)'
  ConditionLowerLimitRatio : Decimal(24, 9);
  @sap.unit : 'ConditionRateValueUnit'
  @sap.label : 'Amount'
  @sap.quickinfo : 'Condition Amount or Percentage'
  ConditionUpperLimitAmount : Decimal(24, 9);
  @sap.label : 'Ratio'
  @sap.quickinfo : 'Condition Ratio (in Percent or Per Mille)'
  ConditionUpperLimitRatio : Decimal(24, 9);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condition Currency'
  @sap.quickinfo : 'Condition Currency (for Cumulation Fields)'
  @sap.semantics : 'currency-code'
  ConditionAlternativeCurrency : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Exclusion'
  @sap.quickinfo : 'Condition exclusion indicator'
  ConditionExclusion : String(1);
  @sap.label : 'Deletion Indicator'
  @sap.quickinfo : 'Deletion Indicator for Condition Record'
  ConditionIsDeleted : Boolean;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Addit. Value Days'
  @sap.quickinfo : 'Additional Value Days'
  AdditionalValueDays : String(2);
  @sap.display.format : 'Date'
  @sap.label : 'Fixed Value Date'
  FixedValueDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Terms of Payment'
  @sap.quickinfo : 'Key for Terms of Payment'
  PaymentTerms : String(4);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Max.number.of.orders'
  @sap.quickinfo : 'Maximum number of sales orders per condition record'
  CndnMaxNumberOfSalesOrders : String(2);
  @sap.unit : 'BaseUnit'
  @sap.label : 'Min.cond.base value'
  @sap.quickinfo : 'Minimum condition base value'
  MinimumConditionBasisValue : Decimal(15, 3);
  @sap.unit : 'BaseUnit'
  @sap.label : 'Max.cond.base value'
  @sap.quickinfo : 'Maximum condition base value'
  MaximumConditionBasisValue : Decimal(15, 3);
  @sap.unit : 'ConditionAlternativeCurrency'
  @sap.variable.scale : 'true'
  @sap.label : 'Max.condition value'
  @sap.quickinfo : 'Maximum condition value'
  MaximumConditionAmount : Decimal(13, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Release Status'
  ConditionReleaseStatus : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cndn Change Reason'
  @sap.quickinfo : 'Reason for Changing Condition Record'
  ConditionChangeReason : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Scale Type'
  PricingScaleType : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Scale Base Type'
  PricingScaleBasis : String(1);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Pricing scale'
  @sap.quickinfo : 'Scale number for pricing'
  PricingScaleLine : String(4);
  @sap.label : 'Scales'
  @sap.quickinfo : 'Scales are maintained'
  ConditionHasScales : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Check Scale'
  @sap.quickinfo : 'Checking Rule for Scale Amounts'
  PricingScaleCheckingRule : String(1);
  to_PurchaseContract : Association to PurchaseContracts.A_PurchaseContract {  };
  to_PurContrItmCndnScales : Composition of many PurchaseContracts.A_PurContrItmCndnScales {  };
  to_PurContrItmCndnValdty : Association to PurchaseContracts.A_PurContrItmCndnValdty {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '2'
@sap.label : 'Purchase Contract Item Condition Scales'
entity PurchaseContracts.A_PurContrItmCndnScales {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Document'
  @sap.quickinfo : 'Purchasing Document Number'
  key PurchaseContract : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item'
  @sap.quickinfo : 'Item Number of Purchasing Document'
  key PurchaseContractItem : String(5) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condition Record No.'
  @sap.quickinfo : 'Number of Condition Record'
  key ConditionRecord : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Sequent. No. of Cond'
  @sap.quickinfo : 'Sequential number of the condition'
  key ConditionSequentialNumber : String(2) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Valid To'
  @sap.quickinfo : 'Validity end date of the condition record'
  key ConditionValidityEndDate : Date not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Line number'
  @sap.quickinfo : 'Current number of the line scale'
  key ConditionScaleLine : String(4) not null;
  @sap.unit : 'ConditionScaleQuantityUnit'
  @sap.label : 'Scale Quantity'
  @sap.quickinfo : 'Condition Scale Quantity'
  ConditionScaleQuantity : Decimal(15, 3);
  @sap.label : 'Scale Unit of Meas.'
  @sap.quickinfo : 'Condition Scale Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  ConditionScaleQuantityUnit : String(3);
  @sap.semantics : 'unit-of-measure'
  PurContrCndnScQtyUnitISOCode : String(3);
  @sap.unit : 'ConditionScaleAmountCurrency'
  @sap.variable.scale : 'true'
  @sap.label : 'Scale Value'
  ConditionScaleAmount : Decimal(15, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Scale Currency'
  @sap.semantics : 'currency-code'
  ConditionScaleAmountCurrency : String(5);
  @sap.unit : 'ConditionRateValueUnit'
  @sap.variable.scale : 'true'
  @sap.label : 'Amount'
  @sap.quickinfo : 'Condition Amount or Percentage'
  ConditionRateValue : Decimal(11, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condition Currency'
  @sap.quickinfo : 'Condition Unit (Currency or Percentage)'
  @sap.semantics : 'currency-code'
  ConditionRateValueUnit : String(5);
  @sap.label : 'Ratio'
  @sap.quickinfo : 'Condition Ratio (in Percent or Per Mille)'
  ConditionRateRatio : Decimal(24, 9);
  @sap.label : 'Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  ConditionRateRatioUnit : String(3);
  @sap.semantics : 'unit-of-measure'
  PurContrCndnRateRatioUntISOCd : String(3);
  @sap.unit : 'ConditionCurrency'
  @sap.label : 'Amount'
  @sap.quickinfo : 'Condition Amount or Percentage'
  ConditionRateAmount : Decimal(24, 9);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condition Currency'
  @sap.quickinfo : 'Condition Unit (Currency or Percentage)'
  @sap.semantics : 'currency-code'
  ConditionCurrency : String(5);
  @sap.label : 'Deletion Indicator'
  @sap.quickinfo : 'Deletion Indicator for Condition Record'
  ConditionScaleIsDeleted : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Scale Type'
  PricingScaleType : String(1);
  @sap.unit : 'ConditionQuantityUnit'
  @sap.label : 'Pricing Unit'
  @sap.quickinfo : 'Condition Pricing Unit'
  ConditionQuantity : Decimal(5, 0);
  @sap.label : 'Unit of Measure'
  @sap.quickinfo : 'Condition Unit'
  @sap.semantics : 'unit-of-measure'
  ConditionQuantityUnit : String(3);
  @sap.semantics : 'unit-of-measure'
  PurContrCndnQtyUnitISOCode : String(3);
  to_PurContrItmCndnAmount : Association to PurchaseContracts.A_PurContrItmCndnAmount {  };
  to_PurchaseContract : Association to PurchaseContracts.A_PurchaseContract {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '2'
@sap.label : 'Purchase Contract Item Condition Validity'
entity PurchaseContracts.A_PurContrItmCndnValdty {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Document'
  @sap.quickinfo : 'Purchasing Document Number'
  key PurchaseContract : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item'
  @sap.quickinfo : 'Item Number of Purchasing Document'
  key PurchaseContractItem : String(5) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condition Record No.'
  @sap.quickinfo : 'Number of Condition Record'
  key ConditionRecord : String(10) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Valid To'
  @sap.quickinfo : 'Validity end date of the condition record'
  key ConditionValidityEndDate : Date not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Application'
  ConditionApplication : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condition Type'
  ConditionType : String(4);
  @sap.label : 'Deletion Indicator'
  @sap.quickinfo : 'Deletion Indicator for Condition Record'
  ConditionIsDeleted : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  Plant : String(4);
  @sap.display.format : 'Date'
  @sap.label : 'Valid From'
  @sap.quickinfo : 'Validity start date of the condition record'
  ConditionValidityStartDate : Date;
  to_PurchaseContractItem : Association to PurchaseContracts.A_PurchaseContractItem {  };
  to_PurchaseContract : Association to PurchaseContracts.A_PurchaseContract {  };
  to_PurContrItmCndnAmount : Composition of many PurchaseContracts.A_PurContrItmCndnAmount {  };
};

@cds.external : true
type PurchaseContracts.Messages {
  @sap.label : 'Message type'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Type : String(1) not null;
  @sap.label : 'Message Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Message : String(220) not null;
};

@cds.external : true
action PurchaseContracts.ApproveDocument(
  PurchaseContract : String(10)
) returns many PurchaseContracts.Messages;

@cds.external : true
action PurchaseContracts.RejectDocument(
  PurchaseContract : String(10)
) returns many PurchaseContracts.Messages;

@cds.external : true
action PurchaseContracts.WithdrawFromApproval(
  PurchaseContract : String(10)
) returns many PurchaseContracts.Messages;

