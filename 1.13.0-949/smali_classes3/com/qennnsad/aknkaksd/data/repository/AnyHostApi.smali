.class public interface abstract Lcom/qennnsad/aknkaksd/data/repository/AnyHostApi;
.super Ljava/lang/Object;
.source "AnyHostApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/data/repository/AnyHostApi$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008f\u0018\u00002\u00020\u0001J \u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u00050\u00042\n\u0008\u0003\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\'J(\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u00050\u00042\u0008\u0008\u0003\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0002H\'J(\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u00050\u00042\u0008\u0008\u0003\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0002H\'J6\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u00050\u00042\u0008\u0008\u0003\u0010\u0003\u001a\u00020\u00022\n\u0008\u0001\u0010\n\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u0002H\'J*\u0010\u000e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u00050\u00042\u0008\u0008\u0003\u0010\u0003\u001a\u00020\u00022\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u0002H\'J(\u0010\u0011\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u00050\u00042\u0008\u0008\u0003\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0010\u001a\u00020\u000fH\'J*\u0010\u0013\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u00050\u00042\u0008\u0008\u0003\u0010\u0003\u001a\u00020\u00022\n\u0008\u0001\u0010\u0012\u001a\u0004\u0018\u00010\u0002H\'\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/data/repository/AnyHostApi;",
        "",
        "",
        "apiHost",
        "Lio/reactivex/z;",
        "Lretrofit2/Response;",
        "getHitList",
        "id",
        "setHit",
        "removeHit",
        "oldPassword",
        "newPassword",
        "modifyPassword",
        "intro",
        "updateIntro",
        "",
        "subscribe_notify",
        "updateSubscribeNotify",
        "roomId",
        "generatePushStreaming",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# virtual methods
.method public abstract generatePushStreaming(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Path;
            encoded = true
            value = "apiHost"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "roomID"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "{apiHost}/OpenAPI/v1/CDN/getPushAddress"
    .end annotation
.end method

.method public abstract getHitList(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation

        .annotation runtime Lretrofit2/http/Path;
            encoded = true
            value = "apiHost"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "{apiHost}/OpenAPI/v1/user/getHitlist"
    .end annotation
.end method

.method public abstract modifyPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Path;
            encoded = true
            value = "apiHost"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "old_password"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "new_password"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "{apiHost}/OpenAPI/v1/user/updatePassword"
    .end annotation
.end method

.method public abstract removeHit(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Path;
            encoded = true
            value = "apiHost"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "hituid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "{apiHost}/OpenAPI/v1/user/removeHit"
    .end annotation
.end method

.method public abstract setHit(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Path;
            encoded = true
            value = "apiHost"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "hituid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "{apiHost}/OpenAPI/v1/user/setHit"
    .end annotation
.end method

.method public abstract updateIntro(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Path;
            encoded = true
            value = "apiHost"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "intro"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "{apiHost}/OpenAPI/v1/user/updateIntro"
    .end annotation
.end method

.method public abstract updateSubscribeNotify(Ljava/lang/String;I)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation

        .annotation runtime Lretrofit2/http/Path;
            encoded = true
            value = "apiHost"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "subscribe_notify"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "{apiHost}/OpenAPI/v1/user/updateSubscribeNotify"
    .end annotation
.end method
