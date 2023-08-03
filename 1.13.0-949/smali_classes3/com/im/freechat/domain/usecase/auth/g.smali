.class public final Lcom/im/freechat/domain/usecase/auth/g;
.super Lcom/im/freechat/domain/usecase/base/a;
.source "LogoutUserInteractor.kt"


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
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001B\'\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0006\u0010\u0010\u001a\u00020\u000e\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u001b\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0094@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0010\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/im/freechat/domain/usecase/auth/g;",
        "Lcom/im/freechat/domain/usecase/base/a;",
        "",
        "params",
        "c",
        "(Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcom/im/freechat/domain/k;",
        "a",
        "Lcom/im/freechat/domain/k;",
        "loginRepository",
        "Lcom/im/freechat/domain/c;",
        "b",
        "Lcom/im/freechat/domain/c;",
        "databaseRepository",
        "Lcom/im/freechat/domain/u;",
        "Lcom/im/freechat/domain/u;",
        "webSocketRepository",
        "Lcom/im/freechat/domain/t;",
        "d",
        "Lcom/im/freechat/domain/t;",
        "syncRepository",
        "<init>",
        "(Lcom/im/freechat/domain/k;Lcom/im/freechat/domain/c;Lcom/im/freechat/domain/u;Lcom/im/freechat/domain/t;)V",
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
.field private final a:Lcom/im/freechat/domain/k;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lcom/im/freechat/domain/c;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Lcom/im/freechat/domain/u;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Lcom/im/freechat/domain/t;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/im/freechat/domain/k;Lcom/im/freechat/domain/c;Lcom/im/freechat/domain/u;Lcom/im/freechat/domain/t;)V
    .locals 1
    .param p1    # Lcom/im/freechat/domain/k;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/domain/c;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/im/freechat/domain/u;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lcom/im/freechat/domain/t;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "loginRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "databaseRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webSocketRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "syncRepository"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/domain/usecase/base/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/domain/usecase/auth/g;->a:Lcom/im/freechat/domain/k;

    .line 3
    iput-object p2, p0, Lcom/im/freechat/domain/usecase/auth/g;->b:Lcom/im/freechat/domain/c;

    .line 4
    iput-object p3, p0, Lcom/im/freechat/domain/usecase/auth/g;->c:Lcom/im/freechat/domain/u;

    .line 5
    iput-object p4, p0, Lcom/im/freechat/domain/usecase/auth/g;->d:Lcom/im/freechat/domain/t;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/domain/usecase/auth/g;->c(Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected c(Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
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

    instance-of p1, p2, Lcom/im/freechat/domain/usecase/auth/g$a;

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Lcom/im/freechat/domain/usecase/auth/g$a;

    iget v0, p1, Lcom/im/freechat/domain/usecase/auth/g$a;->d:I

    const/high16 v1, -0x80000000

    and-int v2, v0, v1

    if-eqz v2, :cond_0

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/im/freechat/domain/usecase/auth/g$a;->d:I

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/im/freechat/domain/usecase/auth/g$a;

    invoke-direct {p1, p0, p2}, Lcom/im/freechat/domain/usecase/auth/g$a;-><init>(Lcom/im/freechat/domain/usecase/auth/g;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, p1, Lcom/im/freechat/domain/usecase/auth/g$a;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p1, Lcom/im/freechat/domain/usecase/auth/g$a;->d:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v1, p1, Lcom/im/freechat/domain/usecase/auth/g$a;->a:Ljava/lang/Object;

    check-cast v1, Lcom/im/freechat/domain/usecase/auth/g;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/im/freechat/domain/usecase/auth/g;->d:Lcom/im/freechat/domain/t;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lcom/im/freechat/domain/t;->u(Z)V

    .line 5
    iget-object p2, p0, Lcom/im/freechat/domain/usecase/auth/g;->c:Lcom/im/freechat/domain/u;

    invoke-interface {p2}, Lcom/im/freechat/domain/u;->c()V

    .line 6
    iget-object p2, p0, Lcom/im/freechat/domain/usecase/auth/g;->a:Lcom/im/freechat/domain/k;

    iput-object p0, p1, Lcom/im/freechat/domain/usecase/auth/g$a;->a:Ljava/lang/Object;

    iput v3, p1, Lcom/im/freechat/domain/usecase/auth/g$a;->d:I

    invoke-interface {p2, p1}, Lcom/im/freechat/domain/k;->t(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_4

    return-object v0

    :cond_4
    move-object v1, p0

    .line 7
    :goto_1
    iget-object p2, v1, Lcom/im/freechat/domain/usecase/auth/g;->b:Lcom/im/freechat/domain/c;

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/im/freechat/domain/usecase/auth/g$a;->a:Ljava/lang/Object;

    iput v2, p1, Lcom/im/freechat/domain/usecase/auth/g$a;->d:I

    invoke-interface {p2, p1}, Lcom/im/freechat/domain/c;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 8
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
