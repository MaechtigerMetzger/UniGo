import '../model/chat.dart';
import '../unigo_service.dart';

extension ServiceChatExtension on UniGoService {
  /* Chat */

  Future<List<Chat>> getChatList() async {
    return wrapper<List<Chat>, Chat>(
      method: methodGetList,
      id: -1,
      data: Chat.empty(),
      initRTVal: [],
      resourcePath: "chat",
      objectFromJson: chatFromJson,
      listFromJson: chatListFromJson,
      objectToJson: chatToJson,
    );
  }

  Future<Chat> getChatById({required int id}) async {
    return wrapper<Chat, Chat>(
      method: methodGetObjectById,
      id: id,
      data: Chat.empty(),
      initRTVal: Chat.empty(),
      resourcePath: "chat",
      objectFromJson: chatFromJson,
      listFromJson: chatListFromJson,
      objectToJson: chatToJson,
    );
  }

  Future<bool> updateChatById({required int id, required Chat data}) async {
    return wrapper<bool, Chat>(
      method: methodUpdateObjectById,
      id: id,
      data: data,
      initRTVal: false,
      resourcePath: "chat",
      objectFromJson: chatFromJson,
      listFromJson: chatListFromJson,
      objectToJson: chatToJson,
    );
  }

  Future<bool> createChatById({required int id, required Chat data}) async {
    return wrapper<bool, Chat>(
      method: methodCreateObjectById,
      id: id,
      data: data,
      initRTVal: false,
      resourcePath: "chat",
      objectFromJson: chatFromJson,
      listFromJson: chatListFromJson,
      objectToJson: chatToJson,
    );
  }

  Future<bool> deleteChatById({required int id}) async {
    return wrapper<bool, Chat>(
      method: methodDeleteObjectById,
      id: id,
      data: Chat.empty(),
      initRTVal: false,
      resourcePath: "chat",
      objectFromJson: chatFromJson,
      listFromJson: chatListFromJson,
      objectToJson: chatToJson,
    );
  }
}
