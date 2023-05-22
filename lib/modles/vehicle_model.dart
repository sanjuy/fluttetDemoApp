
class VehiclesModel {
  List<VehiclesData>? data;
  Info? info;

  VehiclesModel({
    this.data,
    this.info,
  });

  factory VehiclesModel.fromJson(Map<String, dynamic> json) => VehiclesModel(
        data: json["data"] == null
            ? []
            : List<VehiclesData>.from(
                json["data"].map((x) => VehiclesData.fromJson(x))),
        info: json["info"] == null ? null : Info.fromJson(json["info"]),
      );
}

class VehiclesData {
  dynamic retailCounter;
  dynamic fleetApp;
  CreatedBy? owner;
  dynamic mbcEndDate;
  Customer? customer;
  dynamic fieldStates;
  Customer? product;
  dynamic wholesaleOrderNo;
  dynamic sellingDealerCity;
  dynamic sapColorCode;
  String? paintWork;
  States? state;
  dynamic financeStartDate;
  dynamic returnApprovalDate;
  bool? processFlow;
  String? lastServiceMileage;
  String? id;
  DateTime? warrantyEndDate;
  dynamic nextServicePlannedDate;
  dynamic insuranceTypeRotf;
  dynamic financeEndDate;
  dynamic newFinStartDate;
  Approval? approval;
  dynamic scp4EndDate;
  VehicleCategory? vehicleCategory;
  dynamic scp5Package;
  dynamic sfdcStatus;
  DateTime? createdTime;
  String? personToContact;
  DateTime? starCareEndDate;
  dynamic newInsEndDate;
  dynamic advanceAssuranceCancelDate;
  dynamic upholsteryDescription;
  String? vehiclePurchaseMileage;
  String? nst;
  dynamic mbcWarranty;
  Line? line;
  DateTime? starCareStartDate;
  DateTime? insuranceEndDat;
  dynamic sellingDealerName;
  DateTime? dateOf1StRegistration;
  dynamic scp5EndDate;
  dynamic secEndMileage;
  dynamic warrantyValidityMileage;
  dynamic baumuster;
  dynamic reasonForNafs;
  CreatedBy? createdBy;
  dynamic stageDescription;
  ServiceTask? serviceTask;
  String? inventory;
  dynamic insurer;
  dynamic insurerRotf;
  String? tacNo;
  bool? stolenVehicle;
  String? inventoryType;
  Customer? organization;
  Transmission? transmission;
  dynamic returnApprovalStatus;
  Approval? reviewProcess;
  dynamic scp5StartDate;
  String? registrationCity;
  dynamic sellingPersonName;
  String? vehicleStatus;
  String? recordImage;
  dynamic specialWarrantyEndDate;
  dynamic returnCounter;
  dynamic sellingDealer1;
  dynamic peVehicle;
  dynamic advanceAssuranceEndDate;
  dynamic policyType;
  dynamic secEndDate;
  dynamic advanceAssurancePartner;
  dynamic sapUpholsteryCode;
  dynamic provenExclusivityDealer;
  dynamic vehicleTypeIdentifier;
  String? paymentMode;
  String? vehicleType;
  bool? orchestration;
  Customer? nextServiceEstimate;
  dynamic mbInvoiceDate;
  Type? type;
  dynamic ffiAppointmentDate;
  String? upholstery;
  Customer? model;
  dynamic retailPoNo;
  List<dynamic>? tag;
  dynamic pathfinder;
  StatusForDealership? statusForDealership;
  dynamic retailPoDate;
  String? nstDescription;
  dynamic oraPackage;
  CurrencySymbol? currencySymbol;
  dynamic advanceAssuranceStartDate;
  String? commission;
  dynamic starCare;
  dynamic secStartMileage;
  dynamic retailFlag;
  String? name;
  DateTime? lastActivityTime;
  dynamic financeTerm;
  dynamic unsubscribedMode;
  dynamic wholesaleOrderDate;
  dynamic scp4StartDate;
  dynamic advanceAssurancePackageSold;
  dynamic financeTypes;
  bool? approved;
  String? engine;
  dynamic secPackage;
  dynamic salesInvoiceDate;
  String? productDescription;
  BodyType? bodyType;
  dynamic salesInvoiceNo;
  dynamic wStartDate;
  dynamic newFinEndDate;
  bool? editable;
  String? jdpCustomer;
  String? pocVehicleFlag;
  dynamic blockGoodwill;
  dynamic insuranceDue;
  dynamic lastServiceDate;
  DateTime? insuranceStartDat;
  dynamic manufacturingDate;
  String? colorDescription;
  dynamic financeTenure;
  String? hypothecation;
  String? productLine;
  String? insuranceType;
  String? defleetFlag;
  dynamic mbcValidityMileage;
  String? datumClass;
  dynamic newInsStartDate;
  dynamic servicePackage;
  String? businessUnit;
  dynamic pdiDone;
  Customer? topEndVehicleRelationshipManager;
  DateTime? odometerReadingDate;
  dynamic expectedFokDate;
  StatusForCustomer? statusForCustomer;
  ProductRange? productRange;
  Customer? kamAssignedTo;
  CreatedBy? modifiedBy;
  dynamic review;
  String? engineType;
  dynamic advanceAssuranceInvoiceDate;
  dynamic productBundle;
  dynamic financeType;
  WarrantyType? warrantyType;
  dynamic foilExpiryDate;
  dynamic policyTypeId;
  DateTime? firstSaleDate;
  dynamic scp4Package;
  int? currentKm;
  Customer? keyAccountManager;
  DateTime? modifiedTime;
  DateTime? warrantyStartDate;
  DateTime? handoverDate;
  dynamic hypothetication;
  dynamic mbInvoiceNo;
  dynamic unsubscribedTime;
  dynamic soldTo;
  DateTime? warrantyOverallEndDate;
  dynamic mbcStartDate;
  String? modelYear;
  dynamic scpSpecialCase;
  DateTime? ffiPlannedDate;
  dynamic specialWarrantyStartDate;
  dynamic pucDate;
  dynamic advanceAssuranceCancellationReason;
  DateTime? finalOkDate;
  dynamic umrn;
  DateTime? warrantyValidityDate;
  dynamic secStartDate;
  bool? inMerge;
  String? modelDescription;
  dynamic sfdcComments;
  String? registrationNo;
  ApprovalState? approvalState;
  String? phoneNo;
  Customer? dealer;

  VehiclesData({
    this.retailCounter,
    this.fleetApp,
    this.owner,
    this.mbcEndDate,
    this.customer,
    this.fieldStates,
    this.product,
    this.wholesaleOrderNo,
    this.sellingDealerCity,
    this.sapColorCode,
    this.paintWork,
    this.state,
    this.financeStartDate,
    this.returnApprovalDate,
    this.processFlow,
    this.lastServiceMileage,
    this.id,
    this.warrantyEndDate,
    this.nextServicePlannedDate,
    this.insuranceTypeRotf,
    this.financeEndDate,
    this.newFinStartDate,
    this.approval,
    this.scp4EndDate,
    this.vehicleCategory,
    this.scp5Package,
    this.sfdcStatus,
    this.createdTime,
    this.personToContact,
    this.starCareEndDate,
    this.newInsEndDate,
    this.advanceAssuranceCancelDate,
    this.upholsteryDescription,
    this.vehiclePurchaseMileage,
    this.nst,
    this.mbcWarranty,
    this.line,
    this.starCareStartDate,
    this.insuranceEndDat,
    this.sellingDealerName,
    this.dateOf1StRegistration,
    this.scp5EndDate,
    this.secEndMileage,
    this.warrantyValidityMileage,
    this.baumuster,
    this.reasonForNafs,
    this.createdBy,
    this.stageDescription,
    this.serviceTask,
    this.inventory,
    this.insurer,
    this.insurerRotf,
    this.tacNo,
    this.stolenVehicle,
    this.inventoryType,
    this.organization,
    this.transmission,
    this.returnApprovalStatus,
    this.reviewProcess,
    this.scp5StartDate,
    this.registrationCity,
    this.sellingPersonName,
    this.vehicleStatus,
    this.recordImage,
    this.specialWarrantyEndDate,
    this.returnCounter,
    this.sellingDealer1,
    this.peVehicle,
    this.advanceAssuranceEndDate,
    this.policyType,
    this.secEndDate,
    this.advanceAssurancePartner,
    this.sapUpholsteryCode,
    this.provenExclusivityDealer,
    this.vehicleTypeIdentifier,
    this.paymentMode,
    this.vehicleType,
    this.orchestration,
    this.nextServiceEstimate,
    this.mbInvoiceDate,
    this.type,
    this.ffiAppointmentDate,
    this.upholstery,
    this.model,
    this.retailPoNo,
    this.tag,
    this.pathfinder,
    this.statusForDealership,
    this.retailPoDate,
    this.nstDescription,
    this.oraPackage,
    this.currencySymbol,
    this.advanceAssuranceStartDate,
    this.commission,
    this.starCare,
    this.secStartMileage,
    this.retailFlag,
    this.name,
    this.lastActivityTime,
    this.financeTerm,
    this.unsubscribedMode,
    this.wholesaleOrderDate,
    this.scp4StartDate,
    this.advanceAssurancePackageSold,
    this.financeTypes,
    this.approved,
    this.engine,
    this.secPackage,
    this.salesInvoiceDate,
    this.productDescription,
    this.bodyType,
    this.salesInvoiceNo,
    this.wStartDate,
    this.newFinEndDate,
    this.editable,
    this.jdpCustomer,
    this.pocVehicleFlag,
    this.blockGoodwill,
    this.insuranceDue,
    this.lastServiceDate,
    this.insuranceStartDat,
    this.manufacturingDate,
    this.colorDescription,
    this.financeTenure,
    this.hypothecation,
    this.productLine,
    this.insuranceType,
    this.defleetFlag,
    this.mbcValidityMileage,
    this.datumClass,
    this.newInsStartDate,
    this.servicePackage,
    this.businessUnit,
    this.pdiDone,
    this.topEndVehicleRelationshipManager,
    this.odometerReadingDate,
    this.expectedFokDate,
    this.statusForCustomer,
    this.productRange,
    this.kamAssignedTo,
    this.modifiedBy,
    this.review,
    this.engineType,
    this.advanceAssuranceInvoiceDate,
    this.productBundle,
    this.financeType,
    this.warrantyType,
    this.foilExpiryDate,
    this.policyTypeId,
    this.firstSaleDate,
    this.scp4Package,
    this.currentKm,
    this.keyAccountManager,
    this.modifiedTime,
    this.warrantyStartDate,
    this.handoverDate,
    this.hypothetication,
    this.mbInvoiceNo,
    this.unsubscribedTime,
    this.soldTo,
    this.warrantyOverallEndDate,
    this.mbcStartDate,
    this.modelYear,
    this.scpSpecialCase,
    this.ffiPlannedDate,
    this.specialWarrantyStartDate,
    this.pucDate,
    this.advanceAssuranceCancellationReason,
    this.finalOkDate,
    this.umrn,
    this.warrantyValidityDate,
    this.secStartDate,
    this.inMerge,
    this.modelDescription,
    this.sfdcComments,
    this.registrationNo,
    this.approvalState,
    this.phoneNo,
    this.dealer,
  });

  factory VehiclesData.fromJson(Map<String, dynamic> json) => VehiclesData(
        retailCounter: json["Retail_Counter"],
        fleetApp: json["Fleet_App"],
        owner: json["Owner"] == null ? null : CreatedBy.fromJson(json["Owner"]),
        mbcEndDate: json["MBC_End_Date"],
        customer: json["Customer"] == null
            ? null
            : Customer.fromJson(json["Customer"]),
        fieldStates: json["\u0024field_states"],
        product:
            json["Product"] == null ? null : Customer.fromJson(json["Product"]),
        wholesaleOrderNo: json["Wholesale_Order_No"],
        sellingDealerCity: json["Selling_Dealer_City"],
        sapColorCode: json["SAP_Color_Code"],
        paintWork: json["Paint_Work"],
        state: stateValues.map[json["\u0024state"]],
        financeStartDate: json["Finance_Start_Date"],
        returnApprovalDate: json["Return_Approval_Date"],
        processFlow: json["\u0024process_flow"],
        lastServiceMileage: json["Last_Service_Mileage"],
        id: json["id"],
        warrantyEndDate: json["Warranty_EndDate"] == null
            ? null
            : DateTime.parse(json["Warranty_EndDate"]),
        nextServicePlannedDate: json["Next_Service_Planned_Date"],
        insuranceTypeRotf: json["Insurance_Type_ROTF"],
        financeEndDate: json["Finance_End_Date"],
        newFinStartDate: json["New_Fin_Start_Date"],
        approval: json["\u0024approval"] == null
            ? null
            : Approval.fromJson(json["\u0024approval"]),
        scp4EndDate: json["SCP4_End_Date"],
        vehicleCategory: vehicleCategoryValues.map[json["Vehicle_Category"]],
        scp5Package: json["SCP5_Package"],
        sfdcStatus: json["SFDC_Status"],
        createdTime: json["Created_Time"] == null
            ? null
            : DateTime.parse(json["Created_Time"]),
        personToContact: json["Person_to_Contact"],
        starCareEndDate: json["Star_Care_EndDate"] == null
            ? null
            : DateTime.parse(json["Star_Care_EndDate"]),
        newInsEndDate: json["New_Ins_End_Date"],
        advanceAssuranceCancelDate: json["Advance_Assurance_Cancel_Date"],
        upholsteryDescription: json["Upholstery_Description"],
        vehiclePurchaseMileage: json["Vehicle_Purchase_Mileage"],
        nst: json["NST"],
        mbcWarranty: json["MBC_Warranty"],
        line: lineValues.map[json["Line"]],
        starCareStartDate: json["Star_Care_StartDate"] == null
            ? null
            : DateTime.parse(json["Star_Care_StartDate"]),
        insuranceEndDat: json["Insurance_End_Dat"] == null
            ? null
            : DateTime.parse(json["Insurance_End_Dat"]),
        sellingDealerName: json["Selling_Dealer_Name"],
        dateOf1StRegistration: json["Date_of_1st_Registration"] == null
            ? null
            : DateTime.parse(json["Date_of_1st_Registration"]),
        scp5EndDate: json["SCP5_End_Date"],
        secEndMileage: json["SEC_End_Mileage"],
        warrantyValidityMileage: json["Warranty_Validity_Mileage"],
        baumuster: json["Baumuster"],
        reasonForNafs: json["Reason_for_NAFS"],
        createdBy: json["Created_By"] == null
            ? null
            : CreatedBy.fromJson(json["Created_By"]),
        stageDescription: json["Stage_Description"],
        serviceTask: serviceTaskValues.map[json["Service_Task"]],
        inventory: json["Inventory"],
        insurer: json["Insurer"],
        insurerRotf: json["Insurer_ROTF"],
        tacNo: json["TAC_No"],
        stolenVehicle: json["Stolen_Vehicle"],
        inventoryType: json["Inventory_Type"],
        organization: json["Organization"] == null
            ? null
            : Customer.fromJson(json["Organization"]),
        transmission: transmissionValues.map[json["Transmission"]],
        returnApprovalStatus: json["Return_Approval_Status"],
        reviewProcess: json["\u0024review_process"] == null
            ? null
            : Approval.fromJson(json["\u0024review_process"]),
        scp5StartDate: json["SCP5_Start_Date"],
        registrationCity: json["Registration_City"],
        sellingPersonName: json["Selling_Person_Name"],
        vehicleStatus: json["Vehicle_Status"],
        recordImage: json["Record_Image"],
        specialWarrantyEndDate: json["Special_Warranty_EndDate"],
        returnCounter: json["Return_Counter"],
        sellingDealer1: json["Selling_Dealer1"],
        peVehicle: json["PE_Vehicle"],
        advanceAssuranceEndDate: json["Advance_Assurance_End_Date"],
        policyType: json["Policy_Type"],
        secEndDate: json["SEC_End_Date"],
        advanceAssurancePartner: json["Advance_Assurance_Partner"],
        sapUpholsteryCode: json["SAP_Upholstery_Code"],
        provenExclusivityDealer: json["Proven_Exclusivity_Dealer"],
        vehicleTypeIdentifier: json["Vehicle_Type_Identifier"],
        paymentMode: json["Payment_Mode"],
        vehicleType: json["Vehicle_Type"],
        orchestration: json["\u0024orchestration"],
        nextServiceEstimate: json["Next_Service_Estimate"] == null
            ? null
            : Customer.fromJson(json["Next_Service_Estimate"]),
        mbInvoiceDate: json["MB_Invoice_Date"],
        type: typeValues.map[json["Type"]],
        ffiAppointmentDate: json["FFI_Appointment_Date"],
        upholstery: json["Upholstery"],
        model: json["Model"] == null ? null : Customer.fromJson(json["Model"]),
        retailPoNo: json["Retail_PO_No"],
        tag: json["Tag"] == null
            ? []
            : List<dynamic>.from(json["Tag"].map((x) => x)),
        pathfinder: json["\u0024pathfinder"],
        statusForDealership:
            statusForDealershipValues.map[json["Status_For_Dealership"]],
        retailPoDate: json["Retail_PO_Date"],
        nstDescription: json["NST_Description"],
        oraPackage: json["ORA_Package"],
        currencySymbol: currencySymbolValues.map[json["\u0024currency_symbol"]],
        advanceAssuranceStartDate: json["Advance_Assurance_Start_Date"],
        commission: json["Commission"],
        starCare: json["Star_Care"],
        secStartMileage: json["SEC_Start_Mileage"],
        retailFlag: json["Retail_Flag"],
        name: json["Name"],
        lastActivityTime: json["Last_Activity_Time"] == null
            ? null
            : DateTime.parse(json["Last_Activity_Time"]),
        financeTerm: json["Finance_Term"],
        unsubscribedMode: json["Unsubscribed_Mode"],
        wholesaleOrderDate: json["Wholesale_Order_Date"],
        scp4StartDate: json["SCP4_Start_Date"],
        advanceAssurancePackageSold: json["Advance_Assurance_Package_Sold"],
        financeTypes: json["Finance_Types"],
        approved: json["\u0024approved"],
        engine: json["Engine"],
        secPackage: json["SEC_Package"],
        salesInvoiceDate: json["Sales_Invoice_Date"],
        productDescription: json["Product_Description"],
        bodyType: bodyTypeValues.map[json["Body_Type"]],
        salesInvoiceNo: json["Sales_Invoice_No"],
        wStartDate: json["W_Start_Date"],
        newFinEndDate: json["New_Fin_End_Date"],
        editable: json["\u0024editable"],
        jdpCustomer: json["JDP_Customer"],
        pocVehicleFlag: json["POC_Vehicle_Flag"],
        blockGoodwill: json["Block_Goodwill"],
        insuranceDue: json["Insurance_Due"],
        lastServiceDate: json["Last_Service_Date"],
        insuranceStartDat: json["Insurance_Start_Dat"] == null
            ? null
            : DateTime.parse(json["Insurance_Start_Dat"]),
        manufacturingDate: json["Manufacturing_Date"],
        colorDescription: json["Color_Description"],
        financeTenure: json["Finance_Tenure"],
        hypothecation: json["Hypothecation"],
        productLine: json["Product_Line"],
        insuranceType: json["Insurance_Type"],
        defleetFlag: json["Defleet_Flag"],
        mbcValidityMileage: json["MBC_Validity_Mileage"],
        datumClass: json["Class"],
        newInsStartDate: json["New_Ins_Start_Date"],
        servicePackage: json["Service_Package"],
        businessUnit: json["Business_Unit"],
        pdiDone: json["PDI_Done"],
        topEndVehicleRelationshipManager:
            json["Top_End_Vehicle_Relationship_Manager"] == null
                ? null
                : Customer.fromJson(
                    json["Top_End_Vehicle_Relationship_Manager"]),
        odometerReadingDate: json["Odometer_Reading_Date"] == null
            ? null
            : DateTime.parse(json["Odometer_Reading_Date"]),
        expectedFokDate: json["Expected_FOK_Date"],
        statusForCustomer:
            statusForCustomerValues.map[json["Status_For_Customer"]],
        productRange: productRangeValues.map[json["Product_Range"]],
        kamAssignedTo: json["KAM_Assigned_to"] == null
            ? null
            : Customer.fromJson(json["KAM_Assigned_to"]),
        modifiedBy: json["Modified_By"] == null
            ? null
            : CreatedBy.fromJson(json["Modified_By"]),
        review: json["\u0024review"],
        engineType: json["Engine_Type"],
        advanceAssuranceInvoiceDate: json["Advance_Assurance_Invoice_Date"],
        productBundle: json["Product_Bundle"],
        financeType: json["Finance_Type"],
        warrantyType: warrantyTypeValues.map[json["Warranty_Type"]],
        foilExpiryDate: json["Foil_Expiry_date"],
        policyTypeId: json["Policy_Type_Id"],
        firstSaleDate: json["First_Sale_Date"] == null
            ? null
            : DateTime.parse(json["First_Sale_Date"]),
        scp4Package: json["SCP4_Package"],
        currentKm: json["Current_KM"],
        keyAccountManager: json["Key_Account_Manager"] == null
            ? null
            : Customer.fromJson(json["Key_Account_Manager"]),
        modifiedTime: json["Modified_Time"] == null
            ? null
            : DateTime.parse(json["Modified_Time"]),
        warrantyStartDate: json["Warranty_StartDate"] == null
            ? null
            : DateTime.parse(json["Warranty_StartDate"]),
        handoverDate: json["Handover_Date"] == null
            ? null
            : DateTime.parse(json["Handover_Date"]),
        hypothetication: json["Hypothetication"],
        mbInvoiceNo: json["MB_Invoice_No"],
        unsubscribedTime: json["Unsubscribed_Time"],
        soldTo: json["Sold_To"],
        warrantyOverallEndDate: json["Warranty_Overall_EndDate"] == null
            ? null
            : DateTime.parse(json["Warranty_Overall_EndDate"]),
        mbcStartDate: json["MBC_Start_Date"],
        modelYear: json["Model_Year"],
        scpSpecialCase: json["SCP_Special_Case"],
        ffiPlannedDate: json["FFI_Planned_Date"] == null
            ? null
            : DateTime.parse(json["FFI_Planned_Date"]),
        specialWarrantyStartDate: json["Special_Warranty_StartDate"],
        pucDate: json["PUC_Date"],
        advanceAssuranceCancellationReason:
            json["Advance_Assurance_Cancellation_Reason"],
        finalOkDate: json["Final_OK_Date"] == null
            ? null
            : DateTime.parse(json["Final_OK_Date"]),
        umrn: json["UMRN"],
        warrantyValidityDate: json["Warranty_ValidityDate"] == null
            ? null
            : DateTime.parse(json["Warranty_ValidityDate"]),
        secStartDate: json["SEC_Start_Date"],
        inMerge: json["\u0024in_merge"],
        modelDescription: json["Model_Description"],
        sfdcComments: json["SFDC_Comments"],
        registrationNo: json["Registration_No"],
        approvalState: approvalStateValues.map[json["\u0024approval_state"]],
        phoneNo: json["Phone_No"],
        dealer:
            json["Dealer"] == null ? null : Customer.fromJson(json["Dealer"]),
      );
}

class Approval {
  bool? delegate;
  bool? approve;
  bool? reject;
  bool? resubmit;

  Approval({
    this.delegate,
    this.approve,
    this.reject,
    this.resubmit,
  });

  factory Approval.fromJson(Map<String, dynamic> json) => Approval(
        delegate: json["delegate"],
        approve: json["approve"],
        reject: json["reject"],
        resubmit: json["resubmit"],
      );

  Map<String, dynamic> toJson() => {
        "delegate": delegate,
        "approve": approve,
        "reject": reject,
        "resubmit": resubmit,
      };
}

enum ApprovalState { APPROVED }

final approvalStateValues = EnumValues({"approved": ApprovalState.APPROVED});

enum BodyType { PASSENGER_CAR }

final bodyTypeValues = EnumValues({"Passenger Car": BodyType.PASSENGER_CAR});

class CreatedBy {
  String? name;
  String? id;
  String? email;

  CreatedBy({
    this.name,
    this.id,
    this.email,
  });

  factory CreatedBy.fromJson(Map<String, dynamic> json) => CreatedBy(
        name: json["name"],
        id: json["id"],
        email: json["email"],
      );
}

enum CurrencySymbol { RS }

final currencySymbolValues = EnumValues({"Rs.": CurrencySymbol.RS});

class Customer {
  String? name;
  String? id;

  Customer({
    this.name,
    this.id,
  });

  factory Customer.fromJson(Map<String, dynamic> json) => Customer(
        name: json["name"],
        id: json["id"],
      );
}



enum Line { CLASSIC }

final lineValues = EnumValues({"Classic": Line.CLASSIC});

enum ProductRange { MB }

final productRangeValues = EnumValues({"MB": ProductRange.MB});

enum ServiceTask { FFI }

final serviceTaskValues = EnumValues({"FFI": ServiceTask.FFI});

enum States { SAVE }

final stateValues = EnumValues({"save": States.SAVE});

enum StatusForCustomer { AVAILABLE, BOOKED, PARTIALLY_BOOKED }

final statusForCustomerValues = EnumValues({
  "Available": StatusForCustomer.AVAILABLE,
  "Booked": StatusForCustomer.BOOKED,
  "Partially Booked": StatusForCustomer.PARTIALLY_BOOKED
});

enum StatusForDealership { IN_STOCK }

final statusForDealershipValues =
    EnumValues({"In Stock": StatusForDealership.IN_STOCK});

enum Transmission { AUTOMATIC }

final transmissionValues = EnumValues({"Automatic": Transmission.AUTOMATIC});

enum Type { NORMAL }

final typeValues = EnumValues({"Normal": Type.NORMAL});

enum VehicleCategory { OTHER_VEHICLE, TOP_END_VEHICLE }

final vehicleCategoryValues = EnumValues({
  "Other Vehicle": VehicleCategory.OTHER_VEHICLE,
  "Top End Vehicle": VehicleCategory.TOP_END_VEHICLE
});



enum WarrantyType { REGULAR, NO_WARRANTY, STANDARD, STAR_CARE, EXTENDED }

final warrantyTypeValues = EnumValues({
  "Extended": WarrantyType.EXTENDED,
  "No Warranty": WarrantyType.NO_WARRANTY,
  "Regular": WarrantyType.REGULAR,
  "Standard": WarrantyType.STANDARD,
  "StarCare": WarrantyType.STAR_CARE
});

class Info {
  int? perPage;
  int? count;
  int? page;
  String? sortBy;
  String? sortOrder;
  bool? moreRecords;

  Info({
    this.perPage,
    this.count,
    this.page,
    this.sortBy,
    this.sortOrder,
    this.moreRecords,
  });

  factory Info.fromJson(Map<String, dynamic> json) => Info(
        perPage: json["per_page"],
        count: json["count"],
        page: json["page"],
        sortBy: json["sort_by"],
        sortOrder: json["sort_order"],
        moreRecords: json["more_records"],
      );
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
