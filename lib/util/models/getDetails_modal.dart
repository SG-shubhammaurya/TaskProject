// To parse this JSON data, do
//
//     final getDetails = getDetailsFromJson(jsonString);

import 'dart:convert';

GetDetails getDetailsFromJson(String str) =>
    GetDetails.fromJson(json.decode(str));

String getDetailsToJson(GetDetails data) => json.encode(data.toJson());

class GetDetails {
  GetDetails({
    required this.message,
    required this.success,
    required this.datas,
  });

  String message;
  bool success;
  List<Data> datas;

  factory GetDetails.fromJson(Map<String, dynamic> json) => GetDetails(
        message: json["message"],
        success: json["success"],
        datas: List<Data>.from(json["Datas"].map((x) => Data.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "success": success,
        "Datas": List<dynamic>.from(datas.map((x) => x.toJson())),
      };
}

class Data {
  Data({
    required this.parent,
    required this.eq,
    required this.transport,
  });

  int parent;
  List<Eq> eq;
  List<Transport> transport;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        parent: json["parent"],
        eq: List<Eq>.from(json["eq"].map((x) => Eq.fromJson(x))),
        transport: List<Transport>.from(
            json["transport"].map((x) => Transport.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "parent": parent,
        "eq": List<dynamic>.from(eq.map((x) => x.toJson())),
        "transport": List<dynamic>.from(transport.map((x) => x.toJson())),
      };
}

class Eq {
  Eq({
    required this.equipEventTypeCode,
    required this.equipEventId,
    required this.eventCreatedDatetime,
    required this.eventClassifierCode,
    required this.eventDatetime,
    required this.transportCall,
    required this.equipReference,
    required this.isoEquipCode,
    required this.emptyIndicatorCode,
    required this.eventType,
    required this.eventDescription,
    required this.locode,
    required this.locationName,
    required this.country,
    required this.timezone,
    required this.latitude,
    required this.longitude,
    required this.eventLocation,
  });

  String equipEventTypeCode;
  String equipEventId;
  DateTime eventCreatedDatetime;
  String eventClassifierCode;
  DateTime eventDatetime;
  String transportCall;
  String equipReference;
  String isoEquipCode;
  String emptyIndicatorCode;
  String eventType;
  String eventDescription;
  String locode;
  String locationName;
  String country;
  String timezone;
  String latitude;
  String longitude;
  String eventLocation;

  factory Eq.fromJson(Map<String, dynamic> json) => Eq(
        equipEventTypeCode: json["equip_event_type_code"],
        equipEventId: json["equip_event_id"],
        eventCreatedDatetime: DateTime.parse(json["event_created_datetime"]),
        eventClassifierCode: json["event_classifier_code"],
        eventDatetime: DateTime.parse(json["event_datetime"]),
        transportCall: json["transport_call"],
        equipReference: json["equip_reference"],
        isoEquipCode: json["iso_equip_code"],
        emptyIndicatorCode: json["empty_indicator_code"],
        eventType: json["event_type"],
        eventDescription: json["event_description"],
        locode: json["locode"],
        locationName: json["location_name"],
        country: json["country"],
        timezone: json["timezone"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        eventLocation: json["event_location"],
      );

  Map<String, dynamic> toJson() => {
        "equip_event_type_code": equipEventTypeCode,
        "equip_event_id": equipEventId,
        "event_created_datetime": eventCreatedDatetime.toIso8601String(),
        "event_classifier_code": eventClassifierCode,
        "event_datetime": eventDatetime.toIso8601String(),
        "transport_call": transportCall,
        "equip_reference": equipReference,
        "iso_equip_code": isoEquipCode,
        "empty_indicator_code": emptyIndicatorCode,
        "event_type": eventType,
        "event_description": eventDescription,
        "locode": locode,
        "location_name": locationName,
        "country": country,
        "timezone": timezone,
        "latitude": latitude,
        "longitude": longitude,
        "event_location": eventLocation,
      };
}

class Transport {
  Transport({
    required this.transportEventTypeCode,
    required this.transportEventId,
    required this.eventCreatedDatetime,
    required this.eventClassifierCode,
    required this.eventDatetime,
    required this.delayReason,
    required this.changeRemark,
    required this.transportCallId,
    required this.carrierServiceCode,
    required this.carrierVoyageNumber,
    required this.unLocationCode,
    required this.modeOfTransportCode,
    required this.vesselImoNumber,
    required this.vesselName,
    required this.vesselOperatorCarrierCode,
    required this.vesselOperatorCarrierCodeListProvider,
    required this.containerId,
    required this.eventType,
    required this.eventDescription,
    required this.locode,
    required this.locationName,
    required this.country,
    required this.timezone,
    required this.latitude,
    required this.longitude,
    required this.location,
  });

  String transportEventTypeCode;
  String transportEventId;
  DateTime eventCreatedDatetime;
  String eventClassifierCode;
  DateTime eventDatetime;
  bool delayReason;
  bool changeRemark;
  String transportCallId;
  bool carrierServiceCode;
  String carrierVoyageNumber;
  String unLocationCode;
  String modeOfTransportCode;
  String vesselImoNumber;
  String vesselName;
  String vesselOperatorCarrierCode;
  String vesselOperatorCarrierCodeListProvider;
  String containerId;
  String eventType;
  String eventDescription;
  String locode;
  String locationName;
  String country;
  String timezone;
  String latitude;
  String longitude;
  String location;

  factory Transport.fromJson(Map<String, dynamic> json) => Transport(
        transportEventTypeCode: json["transport_event_type_code"],
        transportEventId: json["transport_event_id"],
        eventCreatedDatetime: DateTime.parse(json["event_created_datetime"]),
        eventClassifierCode: json["event_classifier_code"],
        eventDatetime: DateTime.parse(json["event_datetime"]),
        delayReason: json["delay_reason"],
        changeRemark: json["change_remark"],
        transportCallId: json["transport_call_id"],
        carrierServiceCode: json["carrier_service_code"],
        carrierVoyageNumber: json["carrier_voyage_number"],
        unLocationCode: json["un_location_code"],
        modeOfTransportCode: json["mode_of_transport_code"],
        vesselImoNumber: json["vessel_imo_number"],
        vesselName: json["vessel_name"],
        vesselOperatorCarrierCode: json["vessel_operator_carrier_code"],
        vesselOperatorCarrierCodeListProvider:
            json["vessel_operator_carrier_code_list_provider"],
        containerId: json["container_id"],
        eventType: json["event_type"],
        eventDescription: json["event_description"],
        locode: json["locode"],
        locationName: json["location_name"],
        country: json["country"],
        timezone: json["timezone"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        location: json["location"],
      );

  Map<String, dynamic> toJson() => {
        "transport_event_type_code": transportEventTypeCode,
        "transport_event_id": transportEventId,
        "event_created_datetime": eventCreatedDatetime.toIso8601String(),
        "event_classifier_code": eventClassifierCode,
        "event_datetime": eventDatetime.toIso8601String(),
        "delay_reason": delayReason,
        "change_remark": changeRemark,
        "transport_call_id": transportCallId,
        "carrier_service_code": carrierServiceCode,
        "carrier_voyage_number": carrierVoyageNumber,
        "un_location_code": unLocationCode,
        "mode_of_transport_code": modeOfTransportCode,
        "vessel_imo_number": vesselImoNumber,
        "vessel_name": vesselName,
        "vessel_operator_carrier_code": vesselOperatorCarrierCode,
        "vessel_operator_carrier_code_list_provider":
            vesselOperatorCarrierCodeListProvider,
        "container_id": containerId,
        "event_type": eventType,
        "event_description": eventDescription,
        "locode": locode,
        "location_name": locationName,
        "country": country,
        "timezone": timezone,
        "latitude": latitude,
        "longitude": longitude,
        "location": location,
      };
}
