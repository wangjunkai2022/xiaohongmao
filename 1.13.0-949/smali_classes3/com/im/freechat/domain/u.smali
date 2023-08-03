.class public interface abstract Lcom/im/freechat/domain/u;
.super Ljava/lang/Object;
.source "WebSocketRepository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008f\u0018\u00002\u00020\u0001J&\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H&J\u0008\u0010\u000c\u001a\u00020\u000bH&J\u0010\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH&J\u0010\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH&J\u001f\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00082\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH&\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000e\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H&J\u000e\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0008H&\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/im/freechat/domain/u;",
        "",
        "Lcom/im/freechat/shared/entities/auth/UserInfo;",
        "selfUser",
        "",
        "deviceToken",
        "",
        "timeoutEnabled",
        "Lkotlinx/coroutines/flow/i;",
        "Lcom/im/freechat/shared/entities/SocketEvent;",
        "f",
        "",
        "c",
        "",
        "chatId",
        "a",
        "e",
        "Lcom/im/freechat/shared/entities/TypingEvent;",
        "b",
        "(Ljava/lang/Integer;)Lkotlinx/coroutines/flow/i;",
        "d",
        "listenConnectionState",
        "domain"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# virtual methods
.method public abstract a(I)V
.end method

.method public abstract b(Ljava/lang/Integer;)Lkotlinx/coroutines/flow/i;
    .param p1    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lkotlinx/coroutines/flow/i<",
            "Lcom/im/freechat/shared/entities/TypingEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract c()V
.end method

.method public abstract d()Lkotlinx/coroutines/flow/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/i<",
            "Lcom/im/freechat/shared/entities/SocketEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract e(I)V
.end method

.method public abstract f(Lcom/im/freechat/shared/entities/auth/UserInfo;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/i;
    .param p1    # Lcom/im/freechat/shared/entities/auth/UserInfo;
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
            "Lcom/im/freechat/shared/entities/auth/UserInfo;",
            "Ljava/lang/String;",
            "Z)",
            "Lkotlinx/coroutines/flow/i<",
            "Lcom/im/freechat/shared/entities/SocketEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract listenConnectionState()Lkotlinx/coroutines/flow/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/i<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end method
