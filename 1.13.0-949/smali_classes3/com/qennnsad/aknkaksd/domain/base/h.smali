.class public abstract Lcom/qennnsad/aknkaksd/domain/base/h;
.super Ljava/lang/Object;
.source "RxUseCase.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<In:",
        "Ljava/lang/Object;",
        "Out:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001d\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00052\u0006\u0010\u0004\u001a\u00028\u0000H$\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J*\u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00082\u0006\u0010\u0004\u001a\u00028\u0000H\u0086B\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\t\u0010\n\u0082\u0002\u000f\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/domain/base/h;",
        "In",
        "Out",
        "",
        "params",
        "Lio/reactivex/z;",
        "a",
        "(Ljava/lang/Object;)Lio/reactivex/z;",
        "Lkotlin/Result;",
        "b",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "<init>",
        "()V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;)Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TIn;)",
            "Lio/reactivex/z<",
            "TOut;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end method

.method public final b(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TIn;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+TOut;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p2, Lcom/qennnsad/aknkaksd/domain/base/h$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/qennnsad/aknkaksd/domain/base/h$a;

    iget v1, v0, Lcom/qennnsad/aknkaksd/domain/base/h$a;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/qennnsad/aknkaksd/domain/base/h$a;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/qennnsad/aknkaksd/domain/base/h$a;

    invoke-direct {v0, p0, p2}, Lcom/qennnsad/aknkaksd/domain/base/h$a;-><init>(Lcom/qennnsad/aknkaksd/domain/base/h;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/qennnsad/aknkaksd/domain/base/h$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/qennnsad/aknkaksd/domain/base/h$a;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    invoke-static {}, Lkotlinx/coroutines/i1;->c()Lkotlinx/coroutines/n0;

    move-result-object p2

    new-instance v2, Lcom/qennnsad/aknkaksd/domain/base/h$b;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v4}, Lcom/qennnsad/aknkaksd/domain/base/h$b;-><init>(Lcom/qennnsad/aknkaksd/domain/base/h;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    iput v3, v0, Lcom/qennnsad/aknkaksd/domain/base/h$a;->c:I

    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/j;->h(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    .line 6
    :goto_2
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
