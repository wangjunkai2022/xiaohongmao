.class public interface abstract Lcom/im/freechat/data/openapigen/api/FriendApi;
.super Ljava/lang/Object;
.source "FriendApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/data/openapigen/api/FriendApi$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J#\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007J#\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0003\u0010\t\u001a\u0004\u0018\u00010\nH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000bJ#\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0003\u0010\r\u001a\u0004\u0018\u00010\u000eH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000fJ!\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00032\u0008\u0008\u0001\u0010\u0012\u001a\u00020\u0013H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0014J\u0017\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0003H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0017J!\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00032\u0008\u0008\u0001\u0010\u0012\u001a\u00020\u0013H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0014J\u0017\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u0003H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0017J\u0017\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0003H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0017J\u0017\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0003H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0017J#\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007J#\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0003\u0010 \u001a\u0004\u0018\u00010!H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\"\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006#"
    }
    d2 = {
        "Lcom/im/freechat/data/openapigen/api/FriendApi;",
        "",
        "acceptFriendRequest",
        "Lretrofit2/Response;",
        "Lcom/im/freechat/data/openapigen/models/EditMessageText200Response;",
        "acceptFriendRequestRequest",
        "Lcom/im/freechat/data/openapigen/models/AcceptFriendRequestRequest;",
        "(Lcom/im/freechat/data/openapigen/models/AcceptFriendRequestRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "cancelFriendRequest",
        "cancelFriendRequestRequest",
        "Lcom/im/freechat/data/openapigen/models/CancelFriendRequestRequest;",
        "(Lcom/im/freechat/data/openapigen/models/CancelFriendRequestRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "deleteFriend",
        "deleteFriendRequest",
        "Lcom/im/freechat/data/openapigen/models/DeleteFriendRequest;",
        "(Lcom/im/freechat/data/openapigen/models/DeleteFriendRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getFriendRequest",
        "Lcom/im/freechat/data/openapigen/models/GetFriendRequest200Response;",
        "friendId",
        "",
        "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getFriendRequests",
        "Lcom/im/freechat/data/openapigen/models/GetSentFriendRequests200Response;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getFriendStatus",
        "Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response;",
        "getFriends",
        "Lcom/im/freechat/data/openapigen/models/GetFriends200Response;",
        "getReceivedFriendRequests",
        "getSentFriendRequests",
        "rejectFriendRequest",
        "sendFriendRequest",
        "sendFriendRequestRequest",
        "Lcom/im/freechat/data/openapigen/models/SendFriendRequestRequest;",
        "(Lcom/im/freechat/data/openapigen/models/SendFriendRequestRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.method public abstract acceptFriendRequest(Lcom/im/freechat/data/openapigen/models/AcceptFriendRequestRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/im/freechat/data/openapigen/models/AcceptFriendRequestRequest;
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
            "Lcom/im/freechat/data/openapigen/models/AcceptFriendRequestRequest;",
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
        value = "acceptFriendRequest"
    .end annotation
.end method

.method public abstract cancelFriendRequest(Lcom/im/freechat/data/openapigen/models/CancelFriendRequestRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/im/freechat/data/openapigen/models/CancelFriendRequestRequest;
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
            "Lcom/im/freechat/data/openapigen/models/CancelFriendRequestRequest;",
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
        value = "cancelFriendRequest"
    .end annotation
.end method

.method public abstract deleteFriend(Lcom/im/freechat/data/openapigen/models/DeleteFriendRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/im/freechat/data/openapigen/models/DeleteFriendRequest;
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
            "Lcom/im/freechat/data/openapigen/models/DeleteFriendRequest;",
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
        value = "deleteFriend"
    .end annotation
.end method

.method public abstract getFriendRequest(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "friend_id"
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/im/freechat/data/openapigen/models/GetFriendRequest200Response;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "getFriendRequest"
    .end annotation
.end method

.method public abstract getFriendRequests(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/im/freechat/data/openapigen/models/GetSentFriendRequests200Response;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "getFriendRequests"
    .end annotation
.end method

.method public abstract getFriendStatus(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "friend_id"
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "getFriendRequestStatus"
    .end annotation
.end method

.method public abstract getFriends(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/im/freechat/data/openapigen/models/GetFriends200Response;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "getFriends"
    .end annotation
.end method

.method public abstract getReceivedFriendRequests(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/im/freechat/data/openapigen/models/GetSentFriendRequests200Response;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "getReceivedFriendRequests"
    .end annotation
.end method

.method public abstract getSentFriendRequests(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/im/freechat/data/openapigen/models/GetSentFriendRequests200Response;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "getSentFriendRequests"
    .end annotation
.end method

.method public abstract rejectFriendRequest(Lcom/im/freechat/data/openapigen/models/AcceptFriendRequestRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/im/freechat/data/openapigen/models/AcceptFriendRequestRequest;
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
            "Lcom/im/freechat/data/openapigen/models/AcceptFriendRequestRequest;",
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
        value = "rejectFriendRequest"
    .end annotation
.end method

.method public abstract sendFriendRequest(Lcom/im/freechat/data/openapigen/models/SendFriendRequestRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/im/freechat/data/openapigen/models/SendFriendRequestRequest;
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
            "Lcom/im/freechat/data/openapigen/models/SendFriendRequestRequest;",
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
        value = "sendFriendRequest"
    .end annotation
.end method
