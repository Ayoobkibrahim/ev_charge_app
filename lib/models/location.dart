
import 'dart:convert';

Location locationFromJson(String str) => Location.fromJson(json.decode(str));

String locationToJson(Location data) => json.encode(data.toJson());

class Location {
    int statusCode;
    bool feasibilityStatus;
    String message;
    Data data;

    Location({
        required this.statusCode,
        required this.feasibilityStatus,
        required this.message,
        required this.data,
    });

    factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      statusCode: json['statusCode'],
      feasibilityStatus: json['feasibilityStatus'],
      message: json['message'],
      data: Data.fromJson(json['data']), // Assuming Data also has a fromJson method
    );
  }

    Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "feasibilityStatus": feasibilityStatus,
        "message": message,
        "data": data.toJson(),
    };
}

class Data {
    List<Result> result;
    Pagination pagination;

    Data({
        required this.result,
        required this.pagination,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        result: List<Result>.from(json["result"].map((x) => Result.fromJson(x))),
        pagination: Pagination.fromJson(json["pagination"]),
    );

    Map<String, dynamic> toJson() => {
        "result": List<dynamic>.from(result.map((x) => x.toJson())),
        "pagination": pagination.toJson(),
    };
}

class Pagination {
    int totalRecord;
    int currentPage;
    int totalPages;
    int perPage;

    Pagination({
        required this.totalRecord,
        required this.currentPage,
        required this.totalPages,
        required this.perPage,
    });

    factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
        totalRecord: json["totalRecord"],
        currentPage: json["currentPage"],
        totalPages: json["totalPages"],
        perPage: json["perPage"],
    );

    Map<String, dynamic> toJson() => {
        "totalRecord": totalRecord,
        "currentPage": currentPage,
        "totalPages": totalPages,
        "perPage": perPage,
    };
}

class Result {
    String id;
    int locationId;
    String name;
    String parkingType;
    String email;
    int phone;
    String image;
    GeoLocation geoLocation;
    String street1;
    String street2;
    String city;
    String state;
    String country;
    String zip;
    String status;
    bool isListed;
    ConnectionDetails connectionDetails;
    OpeningHours openingHours;
    String organizationId;
    String projectId;
    List<ChargerDetail> chargerDetails;
    List<dynamic> amenities;

    Result({
        required this.id,
        required this.locationId,
        required this.name,
        required this.parkingType,
        required this.email,
        required this.phone,
        required this.image,
        required this.geoLocation,
        required this.street1,
        required this.street2,
        required this.city,
        required this.state,
        required this.country,
        required this.zip,
        required this.status,
        required this.isListed,
        required this.connectionDetails,
        required this.openingHours,
        required this.organizationId,
        required this.projectId,
        required this.chargerDetails,
        required this.amenities,
    });

    factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["_id"],
        locationId: json["locationId"],
        name: json["name"],
        parkingType: json["parkingType"],
        email: json["email"],
        phone: json["phone"],
        image: json["image"],
        geoLocation: GeoLocation.fromJson(json["geoLocation"]),
        street1: json["street1"],
        street2: json["street2"],
        city: json["city"],
        state: json["state"],
        country: json["country"],
        zip: json["zip"],
        status: json["status"],
        isListed: json["isListed"],
        connectionDetails: ConnectionDetails.fromJson(json["connectionDetails"]),
        openingHours: OpeningHours.fromJson(json["openingHours"]),
        organizationId: json["organizationId"],
        projectId: json["projectId"],
        chargerDetails: List<ChargerDetail>.from(json["chargerDetails"].map((x) => ChargerDetail.fromJson(x))),
        amenities: List<dynamic>.from(json["amenities"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "locationId": locationId,
        "name": name,
        "parkingType": parkingType,
        "email": email,
        "phone": phone,
        "image": image,
        "geoLocation": geoLocation.toJson(),
        "street1": street1,
        "street2": street2,
        "city": city,
        "state": state,
        "country": country,
        "zip": zip,
        "status": status,
        "isListed": isListed,
        "connectionDetails": connectionDetails.toJson(),
        "openingHours": openingHours.toJson(),
        "organizationId": organizationId,
        "projectId": projectId,
        "chargerDetails": List<dynamic>.from(chargerDetails.map((x) => x.toJson())),
        "amenities": List<dynamic>.from(amenities.map((x) => x)),
    };
}

class ChargerDetail {
    String id;
    String identity;
    int locationId;
    String chargerName;
    String chargePointOem;
    String chargePointDevice;
    String tarif;
    String chargePointConnectionProtocol;
    List<String> evse;
    String floorLevel;
    bool delStatus;
    String organizationId;
    String projectId;
    String stationType;
    String chargerType;
    String chargerId;
    String qrCode;
    String maintenanceStatus;
    List<dynamic> fields;
    DateTime createdAt;
    DateTime updatedAt;
    int v;
    List<EvsesDetail> evsesDetails;
    bool chargerStatus;

    ChargerDetail({
        required this.id,
        required this.identity,
        required this.locationId,
        required this.chargerName,
        required this.chargePointOem,
        required this.chargePointDevice,
        required this.tarif,
        required this.chargePointConnectionProtocol,
        required this.evse,
        required this.floorLevel,
        required this.delStatus,
        required this.organizationId,
        required this.projectId,
        required this.stationType,
        required this.chargerType,
        required this.chargerId,
        required this.qrCode,
        required this.maintenanceStatus,
        required this.fields,
        required this.createdAt,
        required this.updatedAt,
        required this.v,
        required this.evsesDetails,
        required this.chargerStatus,
    });

    factory ChargerDetail.fromJson(Map<String, dynamic> json) => ChargerDetail(
        id: json["_id"],
        identity: json["identity"],
        locationId: json["locationId"],
        chargerName: json["chargerName"],
        chargePointOem: json["chargePointOem"],
        chargePointDevice: json["chargePointDevice"],
        tarif: json["tarif"],
        chargePointConnectionProtocol: json["chargePointConnectionProtocol"],
        evse: List<String>.from(json["evse"].map((x) => x)),
        floorLevel: json["floorLevel"],
        delStatus: json["delStatus"],
        organizationId: json["organizationId"],
        projectId: json["projectId"],
        stationType: json["stationType"],
        chargerType: json["chargerType"],
        chargerId: json["chargerId"],
        qrCode: json["qrCode"],
        maintenanceStatus: json["maintenanceStatus"],
        fields: List<dynamic>.from(json["fields"].map((x) => x)),
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
        evsesDetails: List<EvsesDetail>.from(json["evsesDetails"].map((x) => EvsesDetail.fromJson(x))),
        chargerStatus: json["chargerStatus"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "identity": identity,
        "locationId": locationId,
        "chargerName": chargerName,
        "chargePointOem": chargePointOem,
        "chargePointDevice": chargePointDevice,
        "tarif": tarif,
        "chargePointConnectionProtocol": chargePointConnectionProtocol,
        "evse": List<dynamic>.from(evse.map((x) => x)),
        "floorLevel": floorLevel,
        "delStatus": delStatus,
        "organizationId": organizationId,
        "projectId": projectId,
        "stationType": stationType,
        "chargerType": chargerType,
        "chargerId": chargerId,
        "qrCode": qrCode,
        "maintenanceStatus": maintenanceStatus,
        "fields": List<dynamic>.from(fields.map((x) => x)),
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
        "evsesDetails": List<dynamic>.from(evsesDetails.map((x) => x.toJson())),
        "chargerStatus": chargerStatus,
    };
}

class EvsesDetail {
    String id;
    String physicalReference;
    String uid;
    int maxOutputPower;
    List<String> capability;
    String status;
    int connectorId;
    List<String> connector;
    String organizationId;
    String projectId;
    DateTime createdAt;
    DateTime updatedAt;
    int v;
    String connectorStatus;
    String errorCode;
    String availability;
    List<ConnectorDetail> connectorDetails;

    EvsesDetail({
        required this.id,
        required this.physicalReference,
        required this.uid,
        required this.maxOutputPower,
        required this.capability,
        required this.status,
        required this.connectorId,
        required this.connector,
        required this.organizationId,
        required this.projectId,
        required this.createdAt,
        required this.updatedAt,
        required this.v,
        required this.connectorStatus,
        required this.errorCode,
        required this.availability,
        required this.connectorDetails,
    });

    factory EvsesDetail.fromJson(Map<String, dynamic> json) => EvsesDetail(
        id: json["_id"],
        physicalReference: json["physicalReference"],
        uid: json["uid"],
        maxOutputPower: json["maxOutputPower"],
        capability: List<String>.from(json["capability"].map((x) => x)),
        status: json["status"],
        connectorId: json["connectorId"],
        connector: List<String>.from(json["connector"].map((x) => x)),
        organizationId: json["organizationId"],
        projectId: json["projectId"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
        connectorStatus: json["connectorStatus"],
        errorCode: json["errorCode"],
        availability: json["Availability"],
        connectorDetails: List<ConnectorDetail>.from(json["connectorDetails"].map((x) => ConnectorDetail.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "physicalReference": physicalReference,
        "uid": uid,
        "maxOutputPower": maxOutputPower,
        "capability": List<dynamic>.from(capability.map((x) => x)),
        "status": status,
        "connectorId": connectorId,
        "connector": List<dynamic>.from(connector.map((x) => x)),
        "organizationId": organizationId,
        "projectId": projectId,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
        "connectorStatus": connectorStatus,
        "errorCode": errorCode,
        "Availability": availability,
        "connectorDetails": List<dynamic>.from(connectorDetails.map((x) => x.toJson())),
    };
}

class ConnectorDetail {
    String id;
    String name;
    Standard standard;
    Format format;
    PowerType powerType;
    String cmsId;
    int maxVoltage;
    int maxAmperage;
    int maxElectricPower;
    String termsConditionUrl;
    String connectorImage;
    String organizationId;
    String projectId;

    ConnectorDetail({
        required this.id,
        required this.name,
        required this.standard,
        required this.format,
        required this.powerType,
        required this.cmsId,
        required this.maxVoltage,
        required this.maxAmperage,
        required this.maxElectricPower,
        required this.termsConditionUrl,
        required this.connectorImage,
        required this.organizationId,
        required this.projectId,
    });

    factory ConnectorDetail.fromJson(Map<String, dynamic> json) => ConnectorDetail(
        id: json["_id"],
        name: json["name"],
        standard: Standard.fromJson(json["standard"]),
        format: Format.fromJson(json["format"]),
        powerType: PowerType.fromJson(json["powerType"]),
        cmsId: json["cmsId"],
        maxVoltage: json["maxVoltage"],
        maxAmperage: json["maxAmperage"],
        maxElectricPower: json["maxElectricPower"],
        termsConditionUrl: json["termsConditionUrl"],
        connectorImage: json["connectorImage"],
        organizationId: json["organizationId"],
        projectId: json["projectId"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "standard": standard.toJson(),
        "format": format.toJson(),
        "powerType": powerType.toJson(),
        "cmsId": cmsId,
        "maxVoltage": maxVoltage,
        "maxAmperage": maxAmperage,
        "maxElectricPower": maxElectricPower,
        "termsConditionUrl": termsConditionUrl,
        "connectorImage": connectorImage,
        "organizationId": organizationId,
        "projectId": projectId,
    };
}

class Format {
    String formatName;

    Format({
        required this.formatName,
    });

    factory Format.fromJson(Map<String, dynamic> json) => Format(
        formatName: json["formatName"],
    );

    Map<String, dynamic> toJson() => {
        "formatName": formatName,
    };
}

class PowerType {
    String powerType;

    PowerType({
        required this.powerType,
    });

    factory PowerType.fromJson(Map<String, dynamic> json) => PowerType(
        powerType: json["powerType"],
    );

    Map<String, dynamic> toJson() => {
        "powerType": powerType,
    };
}

class Standard {
    String standardName;

    Standard({
        required this.standardName,
    });

    factory Standard.fromJson(Map<String, dynamic> json) => Standard(
        standardName: json["standardName"],
    );

    Map<String, dynamic> toJson() => {
        "standardName": standardName,
    };
}

class ConnectionDetails {
    String totalSanctionLoad;
    String accountNumber;
    bool isGreenEnergy;
    EnergySource energySource;
    String supplierType;
    String id;

    ConnectionDetails({
        required this.totalSanctionLoad,
        required this.accountNumber,
        required this.isGreenEnergy,
        required this.energySource,
        required this.supplierType,
        required this.id,
    });

    factory ConnectionDetails.fromJson(Map<String, dynamic> json) => ConnectionDetails(
        totalSanctionLoad: json["totalSanctionLoad"],
        accountNumber: json["accountNumber"],
        isGreenEnergy: json["isGreenEnergy"],
        energySource: EnergySource.fromJson(json["energySource"]),
        supplierType: json["supplierType"],
        id: json["_id"],
    );

    Map<String, dynamic> toJson() => {
        "totalSanctionLoad": totalSanctionLoad,
        "accountNumber": accountNumber,
        "isGreenEnergy": isGreenEnergy,
        "energySource": energySource.toJson(),
        "supplierType": supplierType,
        "_id": id,
    };
}

class EnergySource {
    String source;
    int percentage;

    EnergySource({
        required this.source,
        required this.percentage,
    });

    factory EnergySource.fromJson(Map<String, dynamic> json) => EnergySource(
        source: json["source"],
        percentage: json["percentage"],
    );

    Map<String, dynamic> toJson() => {
        "source": source,
        "percentage": percentage,
    };
}

class GeoLocation {
    String type;
    List<double> coordinates;

    GeoLocation({
        required this.type,
        required this.coordinates,
    });

    factory GeoLocation.fromJson(Map<String, dynamic> json) => GeoLocation(
        type: json["type"],
        coordinates: List<double>.from(json["coordinates"].map((x) => x?.toDouble())),
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "coordinates": List<dynamic>.from(coordinates.map((x) => x)),
    };
}

class OpeningHours {
    bool isTwentyFourHours;
    List<dynamic> regularHours;
    String id;

    OpeningHours({
        required this.isTwentyFourHours,
        required this.regularHours,
        required this.id,
    });

    factory OpeningHours.fromJson(Map<String, dynamic> json) => OpeningHours(
        isTwentyFourHours: json["isTwentyFourHours"],
        regularHours: List<dynamic>.from(json["regularHours"].map((x) => x)),
        id: json["_id"],
    );

    Map<String, dynamic> toJson() => {
        "isTwentyFourHours": isTwentyFourHours,
        "regularHours": List<dynamic>.from(regularHours.map((x) => x)),
        "_id": id,
    };
}
