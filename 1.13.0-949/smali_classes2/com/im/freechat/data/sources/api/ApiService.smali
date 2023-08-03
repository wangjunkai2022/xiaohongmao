.class public interface abstract Lcom/im/freechat/data/sources/api/ApiService;
.super Ljava/lang/Object;
.source "ApiService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/data/sources/api/ApiService$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J;\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u00042\u000e\u0008\u0001\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0008H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\tJ1\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\u00032\u0008\u0008\u0001\u0010\r\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u000e\u001a\u00020\u000fH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0010J1\u0010\u0011\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u000b0\u00032\u0008\u0008\u0001\u0010\r\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0013\u001a\u00020\u0014H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0015JG\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0008\u0001\u0010\u0017\u001a\u0004\u0018\u00010\u00042\n\u0008\u0001\u0010\u0018\u001a\u0004\u0018\u00010\u00042\n\u0008\u0003\u0010\u0019\u001a\u0004\u0018\u00010\u0004H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001aJ+\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\r\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u001c\u001a\u00020\u001dH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001eJ!\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010 \u001a\u00020!H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\"J7\u0010#\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u000b0\u00032\u0008\u0008\u0001\u0010\r\u001a\u00020\u00042\u000e\u0008\u0001\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u000f0%H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010&J+\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00032\u0008\u0008\u0001\u0010\r\u001a\u00020\u00042\u0008\u0008\u0001\u0010(\u001a\u00020\u0004H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010)J1\u0010*\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120%0\u00032\u0008\u0008\u0001\u0010\r\u001a\u00020\u00042\u0008\u0008\u0001\u0010+\u001a\u00020,H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010-J!\u0010.\u001a\u0008\u0012\u0004\u0012\u00020/0\u00032\u0008\u0008\u0001\u00100\u001a\u000201H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00102J7\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00032\u0008\u0008\u0001\u0010\r\u001a\u00020\u00042\u0008\u0008\u0001\u00104\u001a\u0002052\n\u0008\u0001\u00106\u001a\u0004\u0018\u00010\u0004H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00107\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u00068"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/api/ApiService;",
        "",
        "devToolToken",
        "Lcom/im/freechat/data/sources/api/entities/Response;",
        "",
        "userId",
        "action",
        "members",
        "",
        "(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getBannerList",
        "Lcom/im/freechat/data/sources/api/entities/PagedListResponse;",
        "Lcom/im/freechat/data/sources/api/entities/banner/BannerResponse;",
        "token",
        "page",
        "",
        "(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getContactList",
        "Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;",
        "getContactListBody",
        "Lcom/im/freechat/data/sources/api/entities/contact/GetContactListBody;",
        "(Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/contact/GetContactListBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "loginWithExternalToken",
        "deviceId",
        "bearer",
        "device",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "relationOperation",
        "relationOperationBody",
        "Lcom/im/freechat/data/sources/api/entities/contact/RelationOperationBody;",
        "(Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/contact/RelationOperationBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "requestSMS",
        "requestSmsBody",
        "Lcom/im/freechat/data/sources/api/entities/auth/RequestSmsBody;",
        "(Lcom/im/freechat/data/sources/api/entities/auth/RequestSmsBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "searchContactByIds",
        "userIds",
        "",
        "(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "searchContactByNickname",
        "nickname",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "searchContactByPhone",
        "searchContactByPhoneBody",
        "Lcom/im/freechat/data/sources/api/entities/contact/SearchContactByPhoneBody;",
        "(Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/contact/SearchContactByPhoneBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "signInBySms",
        "Lcom/im/freechat/data/sources/api/entities/auth/UserResponse;",
        "signinBySmsBody",
        "Lcom/im/freechat/data/sources/api/entities/auth/SigninBySmsBody;",
        "(Lcom/im/freechat/data/sources/api/entities/auth/SigninBySmsBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "updateUserInfo",
        "file",
        "Lokhttp3/MultipartBody$Part;",
        "nick",
        "(Ljava/lang/String;Lokhttp3/MultipartBody$Part;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.method public abstract devToolToken(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation

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
    .param p3    # [Ljava/lang/String;
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
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
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

    .annotation runtime Lretrofit2/http/GET;
        value = "/devtool/token"
    .end annotation
.end method

.method public abstract getBannerList(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Header;
            value = "token"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
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
            "Lcom/im/freechat/data/sources/api/entities/PagedListResponse<",
            "Lcom/im/freechat/data/sources/api/entities/banner/BannerResponse;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/management/banners"
    .end annotation
.end method

.method public abstract getContactList(Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/contact/GetContactListBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Header;
            value = "token"
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/data/sources/api/entities/contact/GetContactListBody;
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
            "Lcom/im/freechat/data/sources/api/entities/contact/GetContactListBody;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/sources/api/entities/Response<",
            "Lcom/im/freechat/data/sources/api/entities/PagedListResponse<",
            "Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/relation/followlist"
    .end annotation
.end method

.method public abstract loginWithExternalToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "unique_name"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "device_id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation

        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "device"
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

    .annotation runtime Lretrofit2/http/GET;
        value = "/im/token"
    .end annotation
.end method

.method public abstract relationOperation(Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/contact/RelationOperationBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Header;
            value = "token"
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/data/sources/api/entities/contact/RelationOperationBody;
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
            "Lcom/im/freechat/data/sources/api/entities/contact/RelationOperationBody;",
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
        value = "/relation/operation"
    .end annotation
.end method

.method public abstract requestSMS(Lcom/im/freechat/data/sources/api/entities/auth/RequestSmsBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/im/freechat/data/sources/api/entities/auth/RequestSmsBody;
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
            "Lcom/im/freechat/data/sources/api/entities/auth/RequestSmsBody;",
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
        value = "/sms/send"
    .end annotation
.end method

.method public abstract searchContactByIds(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Header;
            value = "token"
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "unique_names[]"
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
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/sources/api/entities/Response<",
            "Lcom/im/freechat/data/sources/api/entities/PagedListResponse<",
            "Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/accessuser/searchbyuniquename"
    .end annotation
.end method

.method public abstract searchContactByNickname(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Header;
            value = "token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "nickname"
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
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/sources/api/entities/Response<",
            "Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/accessuser/searchbynickname"
    .end annotation
.end method

.method public abstract searchContactByPhone(Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/contact/SearchContactByPhoneBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Header;
            value = "token"
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/data/sources/api/entities/contact/SearchContactByPhoneBody;
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
            "Lcom/im/freechat/data/sources/api/entities/contact/SearchContactByPhoneBody;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/sources/api/entities/Response<",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/relation/contactlist"
    .end annotation
.end method

.method public abstract signInBySms(Lcom/im/freechat/data/sources/api/entities/auth/SigninBySmsBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/im/freechat/data/sources/api/entities/auth/SigninBySmsBody;
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
            "Lcom/im/freechat/data/sources/api/entities/auth/SigninBySmsBody;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/sources/api/entities/Response<",
            "Lcom/im/freechat/data/sources/api/entities/auth/UserResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/accessuser/signinbysms"
    .end annotation
.end method

.method public abstract updateUserInfo(Ljava/lang/String;Lokhttp3/MultipartBody$Part;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Header;
            value = "token"
        .end annotation
    .end param
    .param p2    # Lokhttp3/MultipartBody$Part;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Part;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "nickname"
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lokhttp3/MultipartBody$Part;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/sources/api/entities/Response<",
            "Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/Multipart;
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "/accessuser/updateuserinfo"
    .end annotation
.end method
