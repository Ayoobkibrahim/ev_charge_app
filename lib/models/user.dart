
import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
    int statusCode;
    bool feasibilityStatus;
    String message;
    Data data;

    User({
        required this.statusCode,
        required this.feasibilityStatus,
        required this.message,
        required this.data,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        statusCode: json["statusCode"],
        feasibilityStatus: json["feasibilityStatus"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "feasibilityStatus": feasibilityStatus,
        "message": message,
        "data": data.toJson(),
    };
}

class Data {
    dynamic result;
    List<UserElement> user;

    Data({
        required this.result,
        required this.user,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        result: json["result"],
        user: List<UserElement>.from(json["user"].map((x) => UserElement.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "result": result,
        "user": List<dynamic>.from(user.map((x) => x.toJson())),
    };
}

class UserElement {
    String id;
    String mobile;
    UserType userType;
    bool isVerified;
    bool delFlag;
    String status;
    List<String> refreshToken;
    String userId;
    DateTime createdAt;
    DateTime updatedAt;
    int v;
    String email;
    String firstName;
    String lastName;

    UserElement({
        required this.id,
        required this.mobile,
        required this.userType,
        required this.isVerified,
        required this.delFlag,
        required this.status,
        required this.refreshToken,
        required this.userId,
        required this.createdAt,
        required this.updatedAt,
        required this.v,
        required this.email,
        required this.firstName,
        required this.lastName,
    });

    factory UserElement.fromJson(Map<String, dynamic> json) => UserElement(
        id: json["_id"],
        mobile: json["mobile"],
        userType: UserType.fromJson(json["userType"]),
        isVerified: json["isVerified"],
        delFlag: json["delFlag"],
        status: json["status"],
        refreshToken: List<String>.from(json["refreshToken"].map((x) => x)),
        userId: json["userId"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
        email: json["email"],
        firstName: json["firstName"],
        lastName: json["lastName"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "mobile": mobile,
        "userType": userType.toJson(),
        "isVerified": isVerified,
        "delFlag": delFlag,
        "status": status,
        "refreshToken": List<dynamic>.from(refreshToken.map((x) => x)),
        "userId": userId,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
        "email": email,
        "firstName": firstName,
        "lastName": lastName,
    };
}

class UserType {
    String id;
    String typeName;
    String description;
    int startEnergy;
    int endEnergy;
    bool isDefaultType;
    bool isAutoUpgrade;
    bool delFlag;
    DateTime createdAt;
    DateTime updatedAt;
    int v;

    UserType({
        required this.id,
        required this.typeName,
        required this.description,
        required this.startEnergy,
        required this.endEnergy,
        required this.isDefaultType,
        required this.isAutoUpgrade,
        required this.delFlag,
        required this.createdAt,
        required this.updatedAt,
        required this.v,
    });

    factory UserType.fromJson(Map<String, dynamic> json) => UserType(
        id: json["_id"],
        typeName: json["typeName"],
        description: json["description"],
        startEnergy: json["startEnergy"],
        endEnergy: json["endEnergy"],
        isDefaultType: json["isDefaultType"],
        isAutoUpgrade: json["isAutoUpgrade"],
        delFlag: json["delFlag"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "typeName": typeName,
        "description": description,
        "startEnergy": startEnergy,
        "endEnergy": endEnergy,
        "isDefaultType": isDefaultType,
        "isAutoUpgrade": isAutoUpgrade,
        "delFlag": delFlag,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
    };
}

