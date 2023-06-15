abstract class IChatService {

  Future<String> loadChannel(String listingId);
  Future<void> bringAdminToChat(String chatUrl);
  Future<String> getUserSendBirdToken();
}

