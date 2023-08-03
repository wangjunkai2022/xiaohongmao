.class public interface abstract Lcom/koushikdutta/async/http/WebSocket;
.super Ljava/lang/Object;
.source "WebSocket.java"

# interfaces
.implements Lcom/koushikdutta/async/AsyncSocket;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/WebSocket$PongCallback;,
        Lcom/koushikdutta/async/http/WebSocket$PingCallback;,
        Lcom/koushikdutta/async/http/WebSocket$StringCallback;
    }
.end annotation


# virtual methods
.method public abstract A(Ljava/lang/String;)V
.end method

.method public abstract H(Lcom/koushikdutta/async/http/WebSocket$StringCallback;)V
.end method

.method public abstract J([B)V
.end method

.method public abstract M()Lcom/koushikdutta/async/http/WebSocket$StringCallback;
.end method

.method public abstract V(Lcom/koushikdutta/async/http/WebSocket$PingCallback;)V
.end method

.method public abstract Y()Ljava/lang/String;
.end method

.method public abstract Z()Lcom/koushikdutta/async/http/WebSocket$PongCallback;
.end method

.method public abstract a()Lcom/koushikdutta/async/AsyncSocket;
.end method

.method public abstract n0([BII)V
.end method

.method public abstract ping(Ljava/lang/String;)V
.end method

.method public abstract q0()Z
.end method

.method public abstract send(Ljava/lang/String;)V
.end method

.method public abstract w(Lcom/koushikdutta/async/http/WebSocket$PongCallback;)V
.end method
