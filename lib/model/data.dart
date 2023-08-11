class Data {
  bool? success;
  String? message;
  String? designation;
  String? empName;
  String? empId;
  String? zoneOrAreaname;
  List<Business>? business;
  List<ZoneOrBranch>? zoneOrBranch;

  Data(
      {this.success,
      this.message,
      this.designation,
      this.empName,
      this.empId,
      this.zoneOrAreaname,
      this.business,
      this.zoneOrBranch});

  Data.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    designation = json['designation'];
    empName = json['emp_name'];
    empId = json['emp_id'];
    zoneOrAreaname = json['ZoneOrAreaname'];
    if (json['business'] != null) {
      business = <Business>[];
      json['business'].forEach((v) {
        business!.add(new Business.fromJson(v));
      });
    }
    if (json['ZoneOrBranch'] != null) {
      zoneOrBranch = <ZoneOrBranch>[];
      json['ZoneOrBranch'].forEach((v) {
        zoneOrBranch!.add(new ZoneOrBranch.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    data['designation'] = this.designation;
    data['emp_name'] = this.empName;
    data['emp_id'] = this.empId;
    data['ZoneOrAreaname'] = this.zoneOrAreaname;
    if (this.business != null) {
      data['business'] = this.business!.map((v) => v.toJson()).toList();
    }
    if (this.zoneOrBranch != null) {
      data['ZoneOrBranch'] = this.zoneOrBranch!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Business {
  String? code;
  String? year;
  String? project;
  String? type;
  String? numberOfPolicy;
  String? totalPremiumPaidInLacs;
  String? yearCategory;

  Business(
      {this.code,
      this.year,
      this.project,
      this.type,
      this.numberOfPolicy,
      this.totalPremiumPaidInLacs,
      this.yearCategory});

  Business.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    year = json['year'];
    project = json['project'];
    type = json['type'];
    numberOfPolicy = json['number_of_policy'];
    totalPremiumPaidInLacs = json['total_premium_paid_in_lacs'];
    yearCategory = json['year_category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['year'] = this.year;
    data['project'] = this.project;
    data['type'] = this.type;
    data['number_of_policy'] = this.numberOfPolicy;
    data['total_premium_paid_in_lacs'] = this.totalPremiumPaidInLacs;
    data['year_category'] = this.yearCategory;
    return data;
  }
}

class ZoneOrBranch {
  String? zbCode;
  String? zbName;

  ZoneOrBranch({this.zbCode, this.zbName});

  ZoneOrBranch.fromJson(Map<String, dynamic> json) {
    zbCode = json['zb_code'];
    zbName = json['zb_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['zb_code'] = this.zbCode;
    data['zb_name'] = this.zbName;
    return data;
  }
}