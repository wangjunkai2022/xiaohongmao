.class public interface abstract Lcom/im/freechat/data/sources/api/ChatApi;
.super Ljava/lang/Object;
.source "ChatApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/data/sources/api/ChatApi$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J5\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u0006H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\tJE\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u00042\u000e\u0008\u0001\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00040\rH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000eJ5\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0010\u001a\u00020\u0006H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\tJ+\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0012\u001a\u00020\u0006H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0013J+\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00032\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0016\u001a\u00020\u0017H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0018J5\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u001a\u001a\u00020\u0004H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001bJ5\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u001d\u001a\u00020\u0006H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\tJE\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u00042\u000e\u0008\u0001\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00040\r2\u0008\u0008\u0001\u0010 \u001a\u00020\u0006H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010!J5\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010#\u001a\u00020\u00042\u0008\u0008\u0001\u0010$\u001a\u00020\u0004H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001bJ!\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00032\u0008\u0008\u0001\u0010&\u001a\u00020\'H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010(J+\u0010)\u001a\u0008\u0012\u0004\u0012\u00020*0\u00032\u0008\u0008\u0001\u0010+\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0004H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010,JE\u0010-\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020/0.0\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0001\u00100\u001a\u00020\u00062\u0008\u0008\u0003\u00101\u001a\u00020\u0006H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00102JG\u00103\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020*0.0\u00032\u0008\u0008\u0001\u0010+\u001a\u00020\u00062\u0008\u0008\u0001\u00100\u001a\u00020\u00062\u0008\u0008\u0003\u00101\u001a\u00020\u00062\n\u0008\u0003\u00104\u001a\u0004\u0018\u00010\u0004H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00105J;\u00106\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u00107\u001a\u00020\u00042\u000e\u0008\u0001\u00108\u001a\u0008\u0012\u0004\u0012\u00020\u00060\rH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00109JQ\u0010:\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020;0.0\u00032\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u00100\u001a\u00020\u00062\u0008\u0008\u0003\u00101\u001a\u00020\u00062\n\u0008\u0003\u0010#\u001a\u0004\u0018\u00010\u0004H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010<JI\u0010=\u001a\u0008\u0012\u0004\u0012\u00020>0\u00032\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u00042\u0008\u0008\u0001\u0010?\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u0006H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010@J!\u0010A\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010B\u001a\u00020CH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010DJ5\u0010E\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u0006H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\tJ?\u0010F\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u0006H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010GJ!\u0010H\u001a\u0008\u0012\u0004\u0012\u00020I0\u00032\u0008\u0008\u0001\u0010J\u001a\u00020KH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010LJ!\u0010M\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010N\u001a\u00020OH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010PJ5\u0010Q\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u0006H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\tJ!\u0010R\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010S\u001a\u00020TH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010UJ%\u0010V\u001a\u00020W2\u0008\u0008\u0001\u0010X\u001a\u00020\u00042\u0008\u0008\u0001\u0010Y\u001a\u00020ZH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010[\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\\"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/api/ChatApi;",
        "",
        "addChatManager",
        "Lcom/im/freechat/data/sources/api/entities/Response;",
        "",
        "userId",
        "",
        "chatId",
        "targetUserId",
        "(ILjava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "addChatMember",
        "devToken",
        "targetUserIds",
        "",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "banChatMember",
        "targetUserid",
        "clearChatHistory",
        "forEveryone",
        "(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "createChat",
        "Lcom/im/freechat/data/sources/api/entities/chat/ChatCreationResponse;",
        "createCreateChatRequest",
        "Lcom/im/freechat/data/sources/api/entities/chat/CreateChatRequest;",
        "(Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/chat/CreateChatRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "createFileUploadUrl",
        "fileName",
        "(ILjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "deleteChat",
        "isQuit",
        "deleteMessage",
        "messageIds",
        "delMsgForEveryone",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "editMessage",
        "messageId",
        "content",
        "editUserExpansion",
        "editUserExpansionRequest",
        "Lcom/im/freechat/data/sources/api/entities/chat/EditUserExpansionRequest;",
        "(Lcom/im/freechat/data/sources/api/entities/chat/EditUserExpansionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getChat",
        "Lcom/im/freechat/data/sources/api/entities/chat/ChatResponse;",
        "id",
        "(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getChatMembers",
        "Lcom/im/freechat/data/sources/api/entities/PagedListResponse;",
        "Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;",
        "page",
        "size",
        "(ILjava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getChats",
        "type",
        "(IIILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getDevToken",
        "action",
        "members",
        "(ILjava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getLastMessages",
        "Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;",
        "(Ljava/lang/String;IIILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "joinChatByInvitation",
        "Lcom/im/freechat/data/sources/api/entities/chat/JoinChatResponse;",
        "pathId",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "pinMessage",
        "pinMessageRequest",
        "Lcom/im/freechat/data/sources/api/entities/chat/PinMessageRequest;",
        "(Lcom/im/freechat/data/sources/api/entities/chat/PinMessageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "removeChatManager",
        "removeChatMember",
        "(Ljava/lang/String;ILjava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "sendMediaGroupMessage",
        "Lcom/im/freechat/data/sources/api/entities/chat/SendMediaMessageResponse;",
        "sendMediaMessageRequest",
        "Lcom/im/freechat/data/sources/api/entities/chat/SendMediaMessageRequest;",
        "(Lcom/im/freechat/data/sources/api/entities/chat/SendMediaMessageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "sendMessage",
        "sendMessageRequest",
        "Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;",
        "(Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "unbanChatMember",
        "updateChat",
        "updateChatRequest",
        "Lcom/im/freechat/data/sources/api/entities/chat/UpdateChatRequest;",
        "(Lcom/im/freechat/data/sources/api/entities/chat/UpdateChatRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "uploadFile",
        "",
        "url",
        "fileBody",
        "Lokhttp3/RequestBody;",
        "(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract addChatManager(ILjava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Field;
            value = "unique_name"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "conv_id"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Field;
            value = "to_unique_name"
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/sources/api/entities/Response<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/im/conversations/managers"
    .end annotation
.end method

.method public abstract addChatMember(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Field;
            value = "unique_name"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "conv_id"
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "to_unique_name[]"
        .end annotation
    .end param
    .param p5    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/sources/api/entities/Response<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/im/conversations/member"
    .end annotation
.end method

.method public abstract banChatMember(ILjava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Field;
            value = "unique_name"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "conv_id"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Field;
            value = "to_unique_name"
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/sources/api/entities/Response<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/im/conversations/ban"
    .end annotation
.end method

.method public abstract clearChatHistory(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "conv_id"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Field;
            value = "del_msg_for_everyone"
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/sources/api/entities/Response<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "/im/conversations/clear"
    .end annotation
.end method

.method public abstract createChat(Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/chat/CreateChatRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/data/sources/api/entities/chat/CreateChatRequest;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/im/freechat/data/sources/api/entities/chat/CreateChatRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/sources/api/entities/Response<",
            "Lcom/im/freechat/data/sources/api/entities/chat/ChatCreationResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/im/conversations"
    .end annotation
.end method

.method public abstract createFileUploadUrl(ILjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Field;
            value = "unique_name"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "conv_id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "file_name"
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/sources/api/entities/Response<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/im/createPresignedURL"
    .end annotation
.end method

.method public abstract deleteChat(ILjava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Field;
            value = "unique_name"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "conv_id"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Field;
            value = "is_quit"
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/sources/api/entities/Response<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/HTTP;
        hasBody = true
        method = "DELETE"
        path = "/im/conversations"
    .end annotation
.end method

.method public abstract deleteMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "unique_name"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "conv_id"
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "msg_ids[]"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "del_msg_for_everyone"
        .end annotation
    .end param
    .param p5    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/sources/api/entities/Response<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/DELETE;
        value = "/im/conversations/msg"
    .end annotation
.end method

.method public abstract editMessage(ILjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Field;
            value = "unique_name"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "msg_id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "content"
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/sources/api/entities/Response<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "/im/msg/modify"
    .end annotation
.end method

.method public abstract editUserExpansion(Lcom/im/freechat/data/sources/api/entities/chat/EditUserExpansionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/im/freechat/data/sources/api/entities/chat/EditUserExpansionRequest;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/data/sources/api/entities/chat/EditUserExpansionRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/sources/api/entities/Response<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "/User/edit"
    .end annotation
.end method

.method public abstract getChat(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "unique_name"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "conv_id"
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/sources/api/entities/Response<",
            "Lcom/im/freechat/data/sources/api/entities/chat/ChatResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/im/conversations"
    .end annotation
.end method

.method public abstract getChatMembers(ILjava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "unique_name"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "conv_id"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "size"
        .end annotation
    .end param
    .param p5    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/sources/api/entities/Response<",
            "Lcom/im/freechat/data/sources/api/entities/PagedListResponse<",
            "Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/im/conversions/userlist"
    .end annotation
.end method

.method public abstract getChats(IIILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "unique_name"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "size"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "conv_type"
        .end annotation
    .end param
    .param p5    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/sources/api/entities/Response<",
            "Lcom/im/freechat/data/sources/api/entities/PagedListResponse<",
            "Lcom/im/freechat/data/sources/api/entities/chat/ChatResponse;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/im/conversations/convlist"
    .end annotation
.end method

.method public abstract getDevToken(ILjava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "aud"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "act"
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "members[]"
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/sources/api/entities/Response<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/devtool/token"
    .end annotation
.end method

.method public abstract getLastMessages(Ljava/lang/String;IIILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "conv_id"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "unique_name"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "size"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "msg_id"
        .end annotation
    .end param
    .param p6    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/sources/api/entities/Response<",
            "Lcom/im/freechat/data/sources/api/entities/PagedListResponse<",
            "Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/im/conversations/msglist"
    .end annotation
.end method

.method public abstract joinChatByInvitation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "conv_id"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit2/http/Field;
            value = "unique_name"
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Lretrofit2/http/Field;
            value = "to_unique_name"
        .end annotation
    .end param
    .param p6    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/sources/api/entities/Response<",
            "Lcom/im/freechat/data/sources/api/entities/chat/JoinChatResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/im/conversations/{id}/join"
    .end annotation
.end method

.method public abstract pinMessage(Lcom/im/freechat/data/sources/api/entities/chat/PinMessageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/im/freechat/data/sources/api/entities/chat/PinMessageRequest;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/data/sources/api/entities/chat/PinMessageRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/sources/api/entities/Response<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "/im/conversations/pinned"
    .end annotation
.end method

.method public abstract removeChatManager(ILjava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Field;
            value = "unique_name"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "conv_id"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Field;
            value = "to_unique_name"
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/sources/api/entities/Response<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/HTTP;
        hasBody = true
        method = "DELETE"
        path = "/im/conversations/managers"
    .end annotation
.end method

.method public abstract removeChatMember(Ljava/lang/String;ILjava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Field;
            value = "unique_name"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "conv_id"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit2/http/Field;
            value = "to_unique_name"
        .end annotation
    .end param
    .param p5    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/sources/api/entities/Response<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/HTTP;
        hasBody = true
        method = "DELETE"
        path = "/im/conversations/member"
    .end annotation
.end method

.method public abstract sendMediaGroupMessage(Lcom/im/freechat/data/sources/api/entities/chat/SendMediaMessageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/im/freechat/data/sources/api/entities/chat/SendMediaMessageRequest;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/data/sources/api/entities/chat/SendMediaMessageRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/sources/api/entities/Response<",
            "Lcom/im/freechat/data/sources/api/entities/chat/SendMediaMessageResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/im/conversations/msg_multi"
    .end annotation
.end method

.method public abstract sendMessage(Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/sources/api/entities/Response<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/im/conversations/msg"
    .end annotation
.end method

.method public abstract unbanChatMember(ILjava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Field;
            value = "unique_name"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "conv_id"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Field;
            value = "to_unique_name"
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/sources/api/entities/Response<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/HTTP;
        hasBody = true
        method = "DELETE"
        path = "/im/conversations/ban"
    .end annotation
.end method

.method public abstract updateChat(Lcom/im/freechat/data/sources/api/entities/chat/UpdateChatRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/im/freechat/data/sources/api/entities/chat/UpdateChatRequest;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/data/sources/api/entities/chat/UpdateChatRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/sources/api/entities/Response<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "/im/conversations"
    .end annotation
.end method

.method public abstract uploadFile(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .param p2    # Lokhttp3/RequestBody;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lokhttp3/RequestBody;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: image/*; charset=utf-8"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
    .end annotation
.end method
