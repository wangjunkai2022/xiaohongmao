.class public interface abstract Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;
.super Ljava/lang/Object;
.source "AsyncHttpServerRequest.java"

# interfaces
.implements Lcom/koushikdutta/async/DataEmitter;


# virtual methods
.method public abstract C()Ljava/util/regex/Matcher;
.end method

.method public abstract a()Lcom/koushikdutta/async/AsyncSocket;
.end method

.method public abstract d()Lcom/koushikdutta/async/http/Headers;
.end method

.method public abstract get(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getMethod()Ljava/lang/String;
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract getState()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract i0()Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;",
            ">()TT;"
        }
    .end annotation
.end method

.method public abstract m0(Ljava/util/regex/Matcher;)V
.end method

.method public abstract o()Lcom/koushikdutta/async/http/Multimap;
.end method
