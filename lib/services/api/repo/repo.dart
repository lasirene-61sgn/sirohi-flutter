import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter_app/services/api/api_client/api_client.dart';
import 'package:flutter_app/services/local_storage/shared_preference.dart';

class Repo {
  Future<dynamic> logIn(Map map,) async {
    return await ApiClient().headerLessPost(
      url: 'api/customer/login',
      map:map
    );
  }
  Future<dynamic> otpRequest(String? url,Map map,) async {
    return await ApiClient().headerLessPost(
      url: url ??'api/customer/send-otp',
      map:map
    );
  }
  Future<dynamic> logOut(String token) async {
    return await ApiClient().post(
      url: 'api/customer/logout',
      map: {},
    );
  }
  Future<dynamic> buyer({String? url}) async {
    print(url);
    return await ApiClient().get(
      url ?? 'BusinessPartner/BusinessPartner/Buyers/',
    );
  }
  Future<dynamic> purchaseOrdersPost( String url ,Map<String, dynamic> map,
      {PlatformFile? profilePhoto, File? aadharPhoto}) async {
    return await ApiClient().post(
      // method: method,
      url:url,
      map: map,
      // files: {
      //   if (profilePhoto != null) 'image': profilePhoto,
      // },
    );

  }
  Future<dynamic> buyerDetails(String id) async {
    return await ApiClient().get(
      'BusinessPartner/BusinessPartner/detail/$id/',
    );
  }
  Future<dynamic> buyersPost(String url,Map<String,dynamic> map, {

  PlatformFile? bisAttachment,
  PlatformFile? gstAttachment,
  PlatformFile? msmeAttachment,
  PlatformFile? panAttachment,
  PlatformFile? tanAttachment,
  PlatformFile? aadharAttachment,
  PlatformFile? passbookAttachment,
  PlatformFile? profilePhoto,
  }) async {
    return await ApiClient().putWithFiles(
      method: "POST",
      url: url,
      map: map,
      files: {
        if (bisAttachment != null) 'bis_attachment': bisAttachment,
        if (gstAttachment != null) 'gst_attachment': gstAttachment,
        if (msmeAttachment != null) 'msme_attachment': msmeAttachment,
        if (panAttachment != null) 'pan_attachment': panAttachment,
        if (tanAttachment != null) 'tan_attachment': tanAttachment,
        if (aadharAttachment != null) 'aadhar_attach': aadharAttachment,
        if (passbookAttachment != null) 'passbook': passbookAttachment,
        if (profilePhoto != null) 'image': profilePhoto,
      }
    );
  }
  Future<dynamic> buyersEdit(String url,Map<String,dynamic> map, {
    PlatformFile? bisAttachment,
    PlatformFile? gstAttachment,
    PlatformFile? msmeAttachment,
    PlatformFile? panAttachment,
    PlatformFile? tanAttachment,
    PlatformFile? aadharAttachment,
    PlatformFile? passbookAttachment,
    PlatformFile? profilePhoto,
  }) async {
    return await ApiClient().putWithFiles(
      method: "PUT",
      url: url,
      map: map,
      files: {
        if (bisAttachment != null) 'bis_attachment': bisAttachment,
        if (gstAttachment != null) 'gst_attachment': gstAttachment,
        if (msmeAttachment != null) 'msme_attachment': msmeAttachment,
        if (panAttachment != null) 'pan_attachment': panAttachment,
        if (tanAttachment != null) 'tan_attachment': tanAttachment,
        if (aadharAttachment != null) 'aadhar_attach': aadharAttachment,
        if (passbookAttachment != null) 'passbook': passbookAttachment,
        if (profilePhoto != null) 'image': profilePhoto,
      }
    );
  }
  Future<dynamic> businessPartnerList({String? url} ) async {
    return await ApiClient().get(
      url ?? 'BusinessPartner/BusinessPartner/list/',
    );
  }
  Future<dynamic> businessPartnerListCreate(Map map) async {
    return await ApiClient().post(
      url: 'BusinessPartner/BusinessPartner/list/',
      map: map,
    );
  }
  Future<dynamic> craftMan() async {
    return await ApiClient().get(
      'BusinessPartner/BusinessPartner/Craftsmans/',
    );
  }
    Future<dynamic> craftManPost(String url,Map<String,dynamic> map, {

      PlatformFile? bisAttachment,
      PlatformFile? gstAttachment,
      PlatformFile? msmeAttachment,
      PlatformFile? panAttachment,
      PlatformFile? tanAttachment,
      PlatformFile? aadharAttachment,
      PlatformFile? passbookAttachment,
      PlatformFile? profilePhoto,
    }) async {
      return await ApiClient().putWithFiles(
        method: "POST",
          url: url,
          map: map,
          files: {
            if (bisAttachment != null) 'bis_attachment': bisAttachment,
            if (gstAttachment != null) 'gst_attachment': gstAttachment,
            if (msmeAttachment != null) 'msme_attachment': msmeAttachment,
            if (panAttachment != null) 'pan_attachment': panAttachment,
            if (tanAttachment != null) 'tan_attachment': tanAttachment,
            if (aadharAttachment != null) 'aadhar_attach': aadharAttachment,
            if (passbookAttachment != null) 'passbook': passbookAttachment,
            if (profilePhoto != null) 'image': profilePhoto,
      }
      );
    }
  Future<dynamic> craftManPostKyc(
      String method,
      String url,
      Map<String, dynamic> map, {

        PlatformFile? bisAttachment,
        PlatformFile? gstAttachment,
        PlatformFile? msmeAttachment,
        PlatformFile? panAttachment,
        PlatformFile? tanAttachment,
        PlatformFile? aadharAttachment,
        PlatformFile? passbookAttachment,
        PlatformFile? profilePhoto,
      }) async {

    return await ApiClient().putWithFilesAdvanced(
      method: method,
      url: url,
      map: map,
      files: {
        if (bisAttachment != null) 'bis_attachment': bisAttachment,
        if (gstAttachment != null) 'gst_attachment': gstAttachment,
        if (msmeAttachment != null) 'msme_attachment': msmeAttachment,
        if (panAttachment != null) 'pan_attachment': panAttachment,
        if (tanAttachment != null) 'tan_attachment': tanAttachment,
        if (aadharAttachment != null) 'aadhar_attach': aadharAttachment,
        if (passbookAttachment != null) 'passbook': passbookAttachment,
        if (profilePhoto != null) 'image': profilePhoto,
      },
    );
  }


  Future<dynamic> products({String? url}) async {
    return await ApiClient().get(
      url ??'Products/products/list/',
    );
  }
  Future<dynamic> category(String url) async {
    return await ApiClient().get(
      url,
    );
  }
  Future<dynamic> categoryPost(String url,Map map) async {
    return await ApiClient().post(
        url: url,
        map: map
    );
  }
  Future<dynamic> designs() async {
    return await ApiClient().get(
      'Designs/Designs/productslist/',
    );
  }

  Future<dynamic> admin() async {
    return await ApiClient().get(
      'user/Admin/registration/',
    );
  }
  Future<dynamic> adminDetails(String id) async {
    return await ApiClient().get(
      'user/Admin/detail/$id/',
    );
  }
  Future<dynamic> adminsPost(String method,String url, Map<String, dynamic> map,
      {PlatformFile? profilePhoto, PlatformFile? aadharPhoto}) async {
    return await ApiClient().putWithFiles(
      method: method,
      url:url,
      map: map,
      files: {
        if (profilePhoto != null) 'profile_picture': profilePhoto,
        if (aadharPhoto != null) 'aadhar_photo': aadharPhoto,
      },
    );

  }
  Future<dynamic> workOrders(String url) async {
    return await ApiClient().get(
      url,
    );
  }
  Future<dynamic> workOrdersDetails(String id) async {
    return await ApiClient().get(
      'order/orders/detail/$id/',
    );
  }
  Future<dynamic> workOrdersPost(String url, Map<String, dynamic> map,
      {PlatformFile? profilePhoto, File? aadharPhoto,String? method,}) async {
    return await ApiClient().putWithFiles(
      method: method.toString(),
      url:url,
      map: map,
      files: {
        if (profilePhoto != null) 'product_image': profilePhoto,
      },
    );

  }
  Future<dynamic> workOrdersEdit(String url, Map<String, dynamic> map,
      {PlatformFile? profilePhoto}) async {
    return await ApiClient().putWithFiles(
      method: "PUT",
      url:url,
      map: map,
      files: {
        if (profilePhoto != null) 'product_image': profilePhoto,
      },
    );

  }

  Future<dynamic> purchaseOrders(String url) async {
    return await ApiClient().get(
      url,
    );
  }
  Future<dynamic> purchaseOrdersDetails(String id) async {
    return await ApiClient().get(
      'order/orders/detail/$id/',
    );
  }
  Future<dynamic> purchaseOrdersPUT(String url ,map,
      {PlatformFile? profilePhoto, File? aadharPhoto}) async {
    return await ApiClient().put(

      url:url,
      map: map,
      // files: {
      //   if (profilePhoto != null) 'image': profilePhoto,
      // },
    );

  }
  Future<dynamic> purchaseOrdersEdit(String url, Map<String, dynamic> map,
      {File? profilePhoto, File? aadharPhoto}) async {
    return await ApiClient().put(
      url:url,
      map: map,
      // files: {
      //   if (profilePhoto != null) 'profile_picture': profilePhoto,
      //   if (aadharPhoto != null) 'aadhar_photo': aadharPhoto,
      // },
    );

  }

  Future<dynamic> keyUserList() async {
    return await ApiClient().get(
      'user/keyuser/list/',
    );
  }  Future<dynamic> keyUserDetails(String id) async {
    return await ApiClient().get(
      'user/Admin/detail/$id/',
    );
  }
  Future<dynamic> keyUserPost(String method, String url, Map<String, dynamic> map,
      {PlatformFile? profilePhoto, PlatformFile? aadharPhoto}) async {
    return await ApiClient().putWithFiles(
      method: method,
      url:url,
      map: map,
      files: {
        if (profilePhoto != null) 'profile_picture': profilePhoto,
        if (aadharPhoto != null) 'aadhar_photo': aadharPhoto,
      },
    );

  }
  Future<dynamic> craftsmanList() async {
    return await ApiClient().get(
      'user/Craftsman/registration/',
    );
  }  Future<dynamic> craftsmanDetails(String id) async {
    return await ApiClient().get(
      'user/Admin/detail/$id/',
    );
  }
  Future<dynamic> craftsmanPost(String method,String url, Map<String, dynamic> map,
      {PlatformFile? profilePhoto, PlatformFile? aadharPhoto}) async {
    return await ApiClient().putWithFiles(
      method: method,
      url:url,
      map: map,
      files: {
        if (profilePhoto != null) 'profile_picture': profilePhoto,
        if (aadharPhoto != null) 'aadhar_photo': aadharPhoto,
      },
    );

  }
  Future<dynamic> userList() async {
    final role =  SharedPreferencesHelper().getString('role');

    return await ApiClient().get(
       "user/User/registration/",
    );
  }  Future<dynamic> userDetails(String id) async {
    return await ApiClient().get(
      'user/Admin/detail/$id/',
    );
  }
  Future<dynamic> userPost(String method,String url, Map<String, dynamic> map,
      {PlatformFile? profilePhoto, PlatformFile? aadharPhoto}) async {
    return await ApiClient().putWithFiles(
      method: method,
      url:url,
      map: map,
      files: {
        if (profilePhoto != null) 'profile_picture': profilePhoto,
        if (aadharPhoto != null) 'aadhar_photo': aadharPhoto,
      },
    );

  }
  Future<dynamic> productsPost(
      String method,
      String url,
      Map<String, dynamic> map, {
        List<PlatformFile>? file,
      }) async {
    return await ApiClient().putWithFiles(
      method: method,
      url: url,
      map: map,
      files: {'product_image':file}, // Single file
    );
  }
  Future<dynamic> productsDetail(String id) async {
    return await ApiClient().get(
      'Products/products/details/$id/',
    );
  }
  Future<dynamic> purchaseOrderDetail(String id) async {
    return await ApiClient().get(
      'PurchaseOrder/PurchaseOrder/details/$id/',
    );
  }
  Future<dynamic> workOrderDetail(String id) async {
    return await ApiClient().get(
      'order/orders/update/$id/',
    );
  }
  Future<dynamic> designsPost(
      // String method,
      String url,
      Map map, ) async {
    return await ApiClient().post(
      // method: method,
      url: url,
      map: map,
      // files: {'image':file}, // Single file
    );
  }
  Future<dynamic> myCataloguePost(String url ,Map<String,dynamic> map,{ List<PlatformFile>? profilePhoto, List<PlatformFile>? aadharPhoto}) async {
    return await ApiClient().postWithFiles(
      url:url,
      map: map,
      files: {
        if (profilePhoto != null) 'add_image': profilePhoto,
        if (aadharPhoto != null) 'add_video': aadharPhoto,
      },
    );
  }

  Future<dynamic> myCatalogueEdit(String url, Map<String, dynamic> map,
      { List<PlatformFile>? profilePhoto, List<PlatformFile>? aadharPhoto}) async {
    return await ApiClient().putWithFiles(
      method: "PUT",
      url:url,
      map: map,
      files: {
        if (profilePhoto != null) 'add_image': profilePhoto,
        if (aadharPhoto != null) 'add_video': aadharPhoto,
      },
    );

  }
  Future<dynamic> myCatalogue() async {
    return await ApiClient().get(
      'Catalogue/Catalogue/lists/',
    );
  }
  Future<dynamic> dashBoard() async {
    return await ApiClient().get(
      'user/dashboard/count/',
    );
  }
  Future<dynamic> catalogueDetail(String id) async {
    return await ApiClient().get(
      'Catalogue/Catalogue/details/$id/',
    );
  }
}
