.class public interface abstract Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;
.super Ljava/lang/Object;
.source "AsyncHttpServerResponse.java"

# interfaces
.implements Lcom/koushikdutta/async/DataSink;
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# virtual methods
.method public abstract D(Lorg/json/JSONArray;)V
.end method

.method public abstract I(Lcom/koushikdutta/async/http/AsyncHttpResponse;)V
.end method

.method public abstract L(Ljava/io/InputStream;J)V
.end method

.method public abstract Q(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract R(Lcom/koushikdutta/async/parser/AsyncParser;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/parser/AsyncParser<",
            "TT;>;TT;)V"
        }
    .end annotation
.end method

.method public abstract T(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
.end method

.method public abstract U()V
.end method

.method public abstract a()Lcom/koushikdutta/async/AsyncSocket;
.end method

.method public abstract c()I
.end method

.method public abstract c0(Lcom/koushikdutta/async/AsyncSocket;)V
.end method

.method public abstract d()Lcom/koushikdutta/async/http/Headers;
.end method

.method public abstract e()Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;
.end method

.method public abstract g(Ljava/lang/Exception;)V
.end method

.method public abstract h(I)Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;
.end method

.method public abstract j()V
.end method

.method public abstract k0()Ljava/lang/String;
.end method

.method public abstract p(Ljava/lang/String;)V
.end method

.method public abstract r(Lorg/json/JSONObject;)V
.end method

.method public abstract s0(Ljava/lang/String;Lcom/koushikdutta/async/ByteBufferList;)V
.end method

.method public abstract send(Ljava/lang/String;)V
.end method

.method public abstract t(Ljava/lang/String;[B)V
.end method

.method public abstract u(Ljava/lang/String;)V
.end method

.method public abstract u0(Ljava/lang/String;)V
.end method

.method public abstract x(Ljava/io/File;)V
.end method
