.class public final Lcom/im/freechat/domain/usecase/messages/k;
.super Lcom/im/freechat/domain/usecase/base/FlowUseCase;
.source "SubscribeChatMessagesInteractor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/domain/usecase/messages/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/im/freechat/domain/usecase/base/FlowUseCase<",
        "Lcom/im/freechat/domain/usecase/messages/k$a;",
        "Ljava/util/List<",
        "+",
        "Lcom/im/freechat/shared/entities/message/Message;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0001:\u0001\nB\u000f\u0012\u0006\u0010\u000c\u001a\u00020\t\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\'\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u00062\u0006\u0010\u0005\u001a\u00020\u0002H\u0094@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u000c\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000b\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/im/freechat/domain/usecase/messages/k;",
        "Lcom/im/freechat/domain/usecase/base/FlowUseCase;",
        "Lcom/im/freechat/domain/usecase/messages/k$a;",
        "",
        "Lcom/im/freechat/shared/entities/message/Message;",
        "params",
        "Lkotlinx/coroutines/flow/i;",
        "e",
        "(Lcom/im/freechat/domain/usecase/messages/k$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcom/im/freechat/domain/c;",
        "a",
        "Lcom/im/freechat/domain/c;",
        "databaseRepository",
        "<init>",
        "(Lcom/im/freechat/domain/c;)V",
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
.field private final a:Lcom/im/freechat/domain/c;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/im/freechat/domain/c;)V
    .locals 1
    .param p1    # Lcom/im/freechat/domain/c;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "databaseRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/domain/usecase/base/FlowUseCase;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/domain/usecase/messages/k;->a:Lcom/im/freechat/domain/c;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/im/freechat/domain/usecase/messages/k$a;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/domain/usecase/messages/k;->e(Lcom/im/freechat/domain/usecase/messages/k$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected e(Lcom/im/freechat/domain/usecase/messages/k$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p1    # Lcom/im/freechat/domain/usecase/messages/k$a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/domain/usecase/messages/k$a;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/i<",
            "+",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/message/Message;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/domain/usecase/messages/k;->a:Lcom/im/freechat/domain/c;

    invoke-virtual {p1}, Lcom/im/freechat/domain/usecase/messages/k$a;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/im/freechat/domain/usecase/messages/k$a;->b()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3, p2}, Lcom/im/freechat/domain/c;->y(IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
