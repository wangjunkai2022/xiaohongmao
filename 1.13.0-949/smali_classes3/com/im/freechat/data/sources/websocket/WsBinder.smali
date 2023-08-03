.class public interface abstract Lcom/im/freechat/data/sources/websocket/WsBinder;
.super Ljava/lang/Object;
.source "WsBinder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&J&\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH&J\u0018\u0010\r\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0006H&J\u000e\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\t0\u000eH&\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/websocket/WsBinder;",
        "",
        "Lcom/im/freechat/data/openapigen/models/SocketMessage;",
        "msg",
        "",
        "sendWebSocketMessage",
        "",
        "imToken",
        "deviceToken",
        "",
        "timeoutEnabled",
        "Lkotlinx/coroutines/flow/i;",
        "startSocket",
        "onTokenUpdate",
        "Lkotlinx/coroutines/flow/t;",
        "listenConnectionState",
        "data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# virtual methods
.method public abstract listenConnectionState()Lkotlinx/coroutines/flow/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/t<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract onTokenUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
.end method

.method public abstract sendWebSocketMessage(Lcom/im/freechat/data/openapigen/models/SocketMessage;)V
    .param p1    # Lcom/im/freechat/data/openapigen/models/SocketMessage;
        .annotation build Lm8/g;
        .end annotation
    .end param
.end method

.method public abstract startSocket(Ljava/lang/String;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/i;
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lkotlinx/coroutines/flow/i<",
            "Lcom/im/freechat/data/openapigen/models/SocketMessage;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end method
