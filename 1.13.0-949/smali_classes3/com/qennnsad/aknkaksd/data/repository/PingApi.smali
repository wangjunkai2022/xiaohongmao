.class interface abstract Lcom/qennnsad/aknkaksd/data/repository/PingApi;
.super Ljava/lang/Object;
.source "PingApi.java"


# virtual methods
.method public abstract getAPI_GIT(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
    .end annotation
.end method

.method public abstract newping(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept-Encoding:identity"
        }
    .end annotation
.end method

.method public abstract ping()Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lcom/qennnsad/aknkaksd/data/bean/BaseResponse<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "index/ping"
    .end annotation
.end method
