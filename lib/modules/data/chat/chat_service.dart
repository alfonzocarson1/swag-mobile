
import 'package:swagapp/modules/api/api.dart';
import 'package:swagapp/modules/api/api_service.dart';
import 'package:swagapp/modules/data/chat/ichat_service.dart';

class ChatService extends IChatService {

  ChatService(this.apiService);

  final APIService apiService;

  @override
  Future<String> loadChannel(String listingId) async {
    
    return await apiService.getEndpointData(
      endpoint: Endpoint.chat,
      needBearer: true,
      method: RequestMethod.post,
      dynamicParam: listingId,
      fromJson: (json)=> json['channelUrl'],
    );
  }
  
  @override
  Future<void> bringAdminToChat(String chatUrl) async {
    
    await apiService.getEndpointData(
      endpoint: Endpoint.addAdminOnChat,
      needBearer: true,
      method: RequestMethod.post,
      dynamicParam: chatUrl,
      fromJson: (json){},
    );
  }
  
  @override
  Future<String> getUserSendBirdToken() async {
    
    return await apiService.getEndpointData(
      needBearer: true,
      method: RequestMethod.get,
      endpoint: Endpoint.refreshChatAuth,
      fromJson: (json)=> json['token'],
    );
  }
}


