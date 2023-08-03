.class public interface abstract Lcom/im/freechat/data/openapigen/api/MessageApi;
.super Ljava/lang/Object;
.source "MessageApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/data/openapigen/api/MessageApi$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ae\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J#\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007J#\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0003\u0010\t\u001a\u0004\u0018\u00010\nH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000bJ#\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0003\u0010\r\u001a\u0004\u0018\u00010\u000eH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000fJ#\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0003\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0013J#\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00032\n\u0008\u0003\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0018J!\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00032\u0008\u0008\u0001\u0010\u001b\u001a\u00020\u001cH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001dJ?\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u00032\u0008\u0008\u0001\u0010 \u001a\u00020\u001c2\u0008\u0008\u0001\u0010!\u001a\u00020\u001c2\u0008\u0008\u0001\u0010\"\u001a\u00020#2\u0008\u0008\u0001\u0010$\u001a\u00020#H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010%JC\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u00032\u0008\u0008\u0001\u0010\"\u001a\u00020#2\u0008\u0008\u0001\u0010$\u001a\u00020#2\n\u0008\u0003\u0010 \u001a\u0004\u0018\u00010#2\n\u0008\u0003\u0010\'\u001a\u0004\u0018\u00010#H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010(J#\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0003\u0010*\u001a\u0004\u0018\u00010+H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010,J#\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0003\u0010*\u001a\u0004\u0018\u00010+H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010,J#\u0010.\u001a\u0008\u0012\u0004\u0012\u00020/0\u00032\n\u0008\u0003\u00100\u001a\u0004\u0018\u000101H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00102J#\u00103\u001a\u0008\u0012\u0004\u0012\u00020/0\u00032\n\u0008\u0003\u00104\u001a\u0004\u0018\u000105H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00106J#\u00107\u001a\u0008\u0012\u0004\u0012\u00020/0\u00032\n\u0008\u0003\u00108\u001a\u0004\u0018\u000109H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010:J#\u0010;\u001a\u0008\u0012\u0004\u0012\u00020/0\u00032\n\u0008\u0003\u0010<\u001a\u0004\u0018\u00010=H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010>J#\u0010?\u001a\u0008\u0012\u0004\u0012\u00020/0\u00032\n\u0008\u0003\u0010@\u001a\u0004\u0018\u00010AH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010BJ#\u0010C\u001a\u0008\u0012\u0004\u0012\u00020/0\u00032\n\u0008\u0003\u0010D\u001a\u0004\u0018\u00010EH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010FJ#\u0010G\u001a\u0008\u0012\u0004\u0012\u00020/0\u00032\n\u0008\u0003\u0010H\u001a\u0004\u0018\u00010IH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010JJ#\u0010K\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0003\u0010L\u001a\u0004\u0018\u00010MH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010N\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006O"
    }
    d2 = {
        "Lcom/im/freechat/data/openapigen/api/MessageApi;",
        "",
        "deleteMessages",
        "Lretrofit2/Response;",
        "Lcom/im/freechat/data/openapigen/models/EditMessageText200Response;",
        "deleteMessagesRequest",
        "Lcom/im/freechat/data/openapigen/models/DeleteMessagesRequest;",
        "(Lcom/im/freechat/data/openapigen/models/DeleteMessagesRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "editMessageCaption",
        "editMessageCaptionRequest",
        "Lcom/im/freechat/data/openapigen/models/EditMessageCaptionRequest;",
        "(Lcom/im/freechat/data/openapigen/models/EditMessageCaptionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "editMessageMediaGroup",
        "editMessageMediaGroupRequest",
        "Lcom/im/freechat/data/openapigen/models/EditMessageMediaGroupRequest;",
        "(Lcom/im/freechat/data/openapigen/models/EditMessageMediaGroupRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "editMessageText",
        "editMessageTextRequest",
        "Lcom/im/freechat/data/openapigen/models/EditMessageTextRequest;",
        "(Lcom/im/freechat/data/openapigen/models/EditMessageTextRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "forwardMessage",
        "Lcom/im/freechat/data/openapigen/models/ForwardMessage200Response;",
        "forwardMessageRequest",
        "Lcom/im/freechat/data/openapigen/models/ForwardMessageRequest;",
        "(Lcom/im/freechat/data/openapigen/models/ForwardMessageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getMessage",
        "Lcom/im/freechat/data/openapigen/models/GetMessage200Response;",
        "messageId",
        "",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getMessageUpdates",
        "Lcom/im/freechat/data/openapigen/models/GetMessageUpdates200Response;",
        "lastMessageId",
        "lastUpdatedAt",
        "page",
        "",
        "limit",
        "(JJIILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getMessages",
        "chatId",
        "(IILjava/lang/Integer;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "pinMessage",
        "pinMessageRequest",
        "Lcom/im/freechat/data/openapigen/models/PinMessageRequest;",
        "(Lcom/im/freechat/data/openapigen/models/PinMessageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "readMessage",
        "sendAnimation",
        "Lcom/im/freechat/data/openapigen/models/SendText200Response;",
        "sendAnimationRequest",
        "Lcom/im/freechat/data/openapigen/models/SendAnimationRequest;",
        "(Lcom/im/freechat/data/openapigen/models/SendAnimationRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "sendDocument",
        "sendDocumentRequest",
        "Lcom/im/freechat/data/openapigen/models/SendDocumentRequest;",
        "(Lcom/im/freechat/data/openapigen/models/SendDocumentRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "sendMediaGroup",
        "sendMediaGroupRequest",
        "Lcom/im/freechat/data/openapigen/models/SendMediaGroupRequest;",
        "(Lcom/im/freechat/data/openapigen/models/SendMediaGroupRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "sendPhoto",
        "sendPhotoRequest",
        "Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;",
        "(Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "sendSticker",
        "sendStickerRequest",
        "Lcom/im/freechat/data/openapigen/models/SendStickerRequest;",
        "(Lcom/im/freechat/data/openapigen/models/SendStickerRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "sendText",
        "sendTextRequest",
        "Lcom/im/freechat/data/openapigen/models/SendTextRequest;",
        "(Lcom/im/freechat/data/openapigen/models/SendTextRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "sendVideo",
        "sendVideoRequest",
        "Lcom/im/freechat/data/openapigen/models/SendVideoRequest;",
        "(Lcom/im/freechat/data/openapigen/models/SendVideoRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "unpinMessage",
        "unpinMessageRequest",
        "Lcom/im/freechat/data/openapigen/models/UnpinMessageRequest;",
        "(Lcom/im/freechat/data/openapigen/models/UnpinMessageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.method public abstract deleteMessages(Lcom/im/freechat/data/openapigen/models/DeleteMessagesRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/im/freechat/data/openapigen/models/DeleteMessagesRequest;
        .annotation build Lm8/h;
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
            "Lcom/im/freechat/data/openapigen/models/DeleteMessagesRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/im/freechat/data/openapigen/models/EditMessageText200Response;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "deleteMessages"
    .end annotation
.end method

.method public abstract editMessageCaption(Lcom/im/freechat/data/openapigen/models/EditMessageCaptionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/im/freechat/data/openapigen/models/EditMessageCaptionRequest;
        .annotation build Lm8/h;
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
            "Lcom/im/freechat/data/openapigen/models/EditMessageCaptionRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/im/freechat/data/openapigen/models/EditMessageText200Response;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "editMessageCaption"
    .end annotation
.end method

.method public abstract editMessageMediaGroup(Lcom/im/freechat/data/openapigen/models/EditMessageMediaGroupRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/im/freechat/data/openapigen/models/EditMessageMediaGroupRequest;
        .annotation build Lm8/h;
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
            "Lcom/im/freechat/data/openapigen/models/EditMessageMediaGroupRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/im/freechat/data/openapigen/models/EditMessageText200Response;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "editMessageMediaGroup"
    .end annotation
.end method

.method public abstract editMessageText(Lcom/im/freechat/data/openapigen/models/EditMessageTextRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/im/freechat/data/openapigen/models/EditMessageTextRequest;
        .annotation build Lm8/h;
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
            "Lcom/im/freechat/data/openapigen/models/EditMessageTextRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/im/freechat/data/openapigen/models/EditMessageText200Response;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "editMessageText"
    .end annotation
.end method

.method public abstract forwardMessage(Lcom/im/freechat/data/openapigen/models/ForwardMessageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/im/freechat/data/openapigen/models/ForwardMessageRequest;
        .annotation build Lm8/h;
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
            "Lcom/im/freechat/data/openapigen/models/ForwardMessageRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/im/freechat/data/openapigen/models/ForwardMessage200Response;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "forwardMessage"
    .end annotation
.end method

.method public abstract getMessage(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Query;
            value = "message_id"
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/im/freechat/data/openapigen/models/GetMessage200Response;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "getMessage"
    .end annotation
.end method

.method public abstract getMessageUpdates(JJIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Query;
            value = "last_message_id"
        .end annotation
    .end param
    .param p3    # J
        .annotation runtime Lretrofit2/http/Query;
            value = "last_updated_at"
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p6    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "limit"
        .end annotation
    .end param
    .param p7    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJII",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/im/freechat/data/openapigen/models/GetMessageUpdates200Response;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "getMessageUpdates"
    .end annotation
.end method

.method public abstract getMessages(IILjava/lang/Integer;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "limit"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "last_message_id"
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "chat_id"
        .end annotation
    .end param
    .param p5    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/im/freechat/data/openapigen/models/GetMessageUpdates200Response;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "getMessages"
    .end annotation
.end method

.method public abstract pinMessage(Lcom/im/freechat/data/openapigen/models/PinMessageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/im/freechat/data/openapigen/models/PinMessageRequest;
        .annotation build Lm8/h;
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
            "Lcom/im/freechat/data/openapigen/models/PinMessageRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/im/freechat/data/openapigen/models/EditMessageText200Response;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "pinMessage"
    .end annotation
.end method

.method public abstract readMessage(Lcom/im/freechat/data/openapigen/models/PinMessageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/im/freechat/data/openapigen/models/PinMessageRequest;
        .annotation build Lm8/h;
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
            "Lcom/im/freechat/data/openapigen/models/PinMessageRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/im/freechat/data/openapigen/models/EditMessageText200Response;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "readMessage"
    .end annotation
.end method

.method public abstract sendAnimation(Lcom/im/freechat/data/openapigen/models/SendAnimationRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/im/freechat/data/openapigen/models/SendAnimationRequest;
        .annotation build Lm8/h;
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
            "Lcom/im/freechat/data/openapigen/models/SendAnimationRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/im/freechat/data/openapigen/models/SendText200Response;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "sendAnimation"
    .end annotation
.end method

.method public abstract sendDocument(Lcom/im/freechat/data/openapigen/models/SendDocumentRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/im/freechat/data/openapigen/models/SendDocumentRequest;
        .annotation build Lm8/h;
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
            "Lcom/im/freechat/data/openapigen/models/SendDocumentRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/im/freechat/data/openapigen/models/SendText200Response;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "sendDocument"
    .end annotation
.end method

.method public abstract sendMediaGroup(Lcom/im/freechat/data/openapigen/models/SendMediaGroupRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/im/freechat/data/openapigen/models/SendMediaGroupRequest;
        .annotation build Lm8/h;
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
            "Lcom/im/freechat/data/openapigen/models/SendMediaGroupRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/im/freechat/data/openapigen/models/SendText200Response;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "sendMediaGroup"
    .end annotation
.end method

.method public abstract sendPhoto(Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;
        .annotation build Lm8/h;
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
            "Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/im/freechat/data/openapigen/models/SendText200Response;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "sendPhoto"
    .end annotation
.end method

.method public abstract sendSticker(Lcom/im/freechat/data/openapigen/models/SendStickerRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/im/freechat/data/openapigen/models/SendStickerRequest;
        .annotation build Lm8/h;
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
            "Lcom/im/freechat/data/openapigen/models/SendStickerRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/im/freechat/data/openapigen/models/SendText200Response;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "sendSticker"
    .end annotation
.end method

.method public abstract sendText(Lcom/im/freechat/data/openapigen/models/SendTextRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/im/freechat/data/openapigen/models/SendTextRequest;
        .annotation build Lm8/h;
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
            "Lcom/im/freechat/data/openapigen/models/SendTextRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/im/freechat/data/openapigen/models/SendText200Response;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "sendText"
    .end annotation
.end method

.method public abstract sendVideo(Lcom/im/freechat/data/openapigen/models/SendVideoRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/im/freechat/data/openapigen/models/SendVideoRequest;
        .annotation build Lm8/h;
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
            "Lcom/im/freechat/data/openapigen/models/SendVideoRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/im/freechat/data/openapigen/models/SendText200Response;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "sendVideo"
    .end annotation
.end method

.method public abstract unpinMessage(Lcom/im/freechat/data/openapigen/models/UnpinMessageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/im/freechat/data/openapigen/models/UnpinMessageRequest;
        .annotation build Lm8/h;
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
            "Lcom/im/freechat/data/openapigen/models/UnpinMessageRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/im/freechat/data/openapigen/models/EditMessageText200Response;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "unpinMessage"
    .end annotation
.end method
