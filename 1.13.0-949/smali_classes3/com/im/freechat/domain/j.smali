.class public final Lcom/im/freechat/domain/j;
.super Ljava/lang/Object;
.source "InAppMessageManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002J\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0011\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/im/freechat/domain/j;",
        "",
        "Lkotlinx/coroutines/flow/i;",
        "Lcom/im/freechat/shared/entities/message/MessageWithChat;",
        "f",
        "Lcom/im/freechat/shared/entities/SocketEvent;",
        "e",
        "Lcom/im/freechat/domain/usecase/messages/m;",
        "a",
        "Lcom/im/freechat/domain/usecase/messages/m;",
        "subscribeNewMessagesInteractor",
        "Lcom/im/freechat/domain/usecase/messages/l;",
        "b",
        "Lcom/im/freechat/domain/usecase/messages/l;",
        "subscribeMessageUpdatesInteractor",
        "Lkotlinx/coroutines/flow/s;",
        "c",
        "Lkotlinx/coroutines/flow/s;",
        "newMessagesFlow",
        "d",
        "messageUpdatesFlow",
        "<init>",
        "(Lcom/im/freechat/domain/usecase/messages/m;Lcom/im/freechat/domain/usecase/messages/l;)V",
        "domain"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:Lcom/im/freechat/domain/usecase/messages/m;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lcom/im/freechat/domain/usecase/messages/l;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Lkotlinx/coroutines/flow/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/s<",
            "Lcom/im/freechat/shared/entities/message/MessageWithChat;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Lkotlinx/coroutines/flow/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/s<",
            "Lcom/im/freechat/shared/entities/SocketEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/im/freechat/domain/usecase/messages/m;Lcom/im/freechat/domain/usecase/messages/l;)V
    .locals 6
    .param p1    # Lcom/im/freechat/domain/usecase/messages/m;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/domain/usecase/messages/l;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "subscribeNewMessagesInteractor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subscribeMessageUpdatesInteractor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/domain/j;->a:Lcom/im/freechat/domain/usecase/messages/m;

    .line 3
    iput-object p2, p0, Lcom/im/freechat/domain/j;->b:Lcom/im/freechat/domain/usecase/messages/l;

    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 v0, 0x7

    .line 4
    invoke-static {p1, p1, p2, v0, p2}, Lkotlinx/coroutines/flow/z;->b(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/s;

    move-result-object v1

    iput-object v1, p0, Lcom/im/freechat/domain/j;->c:Lkotlinx/coroutines/flow/s;

    .line 5
    invoke-static {p1, p1, p2, v0, p2}, Lkotlinx/coroutines/flow/z;->b(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/s;

    move-result-object p1

    iput-object p1, p0, Lcom/im/freechat/domain/j;->d:Lkotlinx/coroutines/flow/s;

    .line 6
    sget-object p1, Lkotlinx/coroutines/a2;->a:Lkotlinx/coroutines/a2;

    new-instance v3, Lcom/im/freechat/domain/j$a;

    invoke-direct {v3, p0, p2}, Lcom/im/freechat/domain/j$a;-><init>(Lcom/im/freechat/domain/j;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/j;->e(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/j2;

    .line 7
    new-instance v3, Lcom/im/freechat/domain/j$b;

    invoke-direct {v3, p0, p2}, Lcom/im/freechat/domain/j$b;-><init>(Lcom/im/freechat/domain/j;Lkotlin/coroutines/Continuation;)V

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/j;->e(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/j2;

    return-void
.end method

.method public static final synthetic a(Lcom/im/freechat/domain/j;)Lkotlinx/coroutines/flow/s;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/domain/j;->d:Lkotlinx/coroutines/flow/s;

    return-object p0
.end method

.method public static final synthetic b(Lcom/im/freechat/domain/j;)Lkotlinx/coroutines/flow/s;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/domain/j;->c:Lkotlinx/coroutines/flow/s;

    return-object p0
.end method

.method public static final synthetic c(Lcom/im/freechat/domain/j;)Lcom/im/freechat/domain/usecase/messages/l;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/domain/j;->b:Lcom/im/freechat/domain/usecase/messages/l;

    return-object p0
.end method

.method public static final synthetic d(Lcom/im/freechat/domain/j;)Lcom/im/freechat/domain/usecase/messages/m;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/domain/j;->a:Lcom/im/freechat/domain/usecase/messages/m;

    return-object p0
.end method


# virtual methods
.method public final e()Lkotlinx/coroutines/flow/i;
    .locals 1
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

    iget-object v0, p0, Lcom/im/freechat/domain/j;->d:Lkotlinx/coroutines/flow/s;

    return-object v0
.end method

.method public final f()Lkotlinx/coroutines/flow/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/i<",
            "Lcom/im/freechat/shared/entities/message/MessageWithChat;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/domain/j;->c:Lkotlinx/coroutines/flow/s;

    return-object v0
.end method
