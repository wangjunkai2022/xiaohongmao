.class public final Lcom/im/freechat/domain/usecase/downloads/SubscribeDownloadsInteractor;
.super Lcom/im/freechat/domain/usecase/base/a;
.source "SubscribeDownloadsInteractor.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/im/freechat/domain/usecase/base/a<",
        "Lkotlin/Unit;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u000b\u001a\u00020\u0006\u0012\u0006\u0010\u0011\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001b\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0094@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0017\u0010\u000b\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\nR\u0017\u0010\u0011\u001a\u00020\u000c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/im/freechat/domain/usecase/downloads/SubscribeDownloadsInteractor;",
        "Lcom/im/freechat/domain/usecase/base/a;",
        "",
        "params",
        "e",
        "(Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcom/im/freechat/domain/c;",
        "a",
        "Lcom/im/freechat/domain/c;",
        "c",
        "()Lcom/im/freechat/domain/c;",
        "databaseRepository",
        "Lcom/im/freechat/domain/e;",
        "b",
        "Lcom/im/freechat/domain/e;",
        "d",
        "()Lcom/im/freechat/domain/e;",
        "downloadManagerRepository",
        "<init>",
        "(Lcom/im/freechat/domain/c;Lcom/im/freechat/domain/e;)V",
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

.field private final b:Lcom/im/freechat/domain/e;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/im/freechat/domain/c;Lcom/im/freechat/domain/e;)V
    .locals 1
    .param p1    # Lcom/im/freechat/domain/c;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/domain/e;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "databaseRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadManagerRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/domain/usecase/base/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/domain/usecase/downloads/SubscribeDownloadsInteractor;->a:Lcom/im/freechat/domain/c;

    .line 3
    iput-object p2, p0, Lcom/im/freechat/domain/usecase/downloads/SubscribeDownloadsInteractor;->b:Lcom/im/freechat/domain/e;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/domain/usecase/downloads/SubscribeDownloadsInteractor;->e(Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final c()Lcom/im/freechat/domain/c;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/domain/usecase/downloads/SubscribeDownloadsInteractor;->a:Lcom/im/freechat/domain/c;

    return-object v0
.end method

.method public final d()Lcom/im/freechat/domain/e;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/domain/usecase/downloads/SubscribeDownloadsInteractor;->b:Lcom/im/freechat/domain/e;

    return-object v0
.end method

.method protected e(Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p1    # Lkotlin/Unit;
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
            "Lkotlin/Unit;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/a2;->a:Lkotlinx/coroutines/a2;

    new-instance v3, Lcom/im/freechat/domain/usecase/downloads/SubscribeDownloadsInteractor$run$2;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lcom/im/freechat/domain/usecase/downloads/SubscribeDownloadsInteractor$run$2;-><init>(Lcom/im/freechat/domain/usecase/downloads/SubscribeDownloadsInteractor;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/j;->e(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/j2;

    .line 2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
