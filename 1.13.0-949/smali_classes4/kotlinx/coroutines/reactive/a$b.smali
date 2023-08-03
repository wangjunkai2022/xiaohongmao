.class public final Lkotlinx/coroutines/reactive/a$b;
.super Ljava/lang/Object;
.source "Await.kt"

# interfaces
.implements Lorg/reactivestreams/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/reactive/a;->i(Lorg/reactivestreams/c;Lkotlinx/coroutines/reactive/i;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/reactive/a$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/reactivestreams/d<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0003\n\u0002\u0008\r*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0017\u0010\u000b\u001a\u00020\u00082\u0006\u0010\n\u001a\u00028\u0000H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0008\u0010\r\u001a\u00020\u0008H\u0016J\u0010\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u000eH\u0016R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0011R\u0018\u0010\u0015\u001a\u0004\u0018\u00018\u00008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0018\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u001a\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u0017\u00a8\u0006\u001b"
    }
    d2 = {
        "kotlinx/coroutines/reactive/a$b",
        "Lorg/reactivestreams/d;",
        "",
        "signalName",
        "",
        "a",
        "Lorg/reactivestreams/e;",
        "sub",
        "",
        "onSubscribe",
        "t",
        "onNext",
        "(Ljava/lang/Object;)V",
        "onComplete",
        "",
        "e",
        "onError",
        "Lorg/reactivestreams/e;",
        "subscription",
        "b",
        "Ljava/lang/Object;",
        "value",
        "c",
        "Z",
        "seenValue",
        "d",
        "inTerminalState",
        "kotlinx-coroutines-reactive"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field private a:Lorg/reactivestreams/e;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private c:Z

.field private d:Z

.field final synthetic e:Lkotlinx/coroutines/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/q<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic f:Lkotlinx/coroutines/reactive/i;

.field final synthetic g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/coroutines/q;Lkotlinx/coroutines/reactive/i;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/q<",
            "-TT;>;",
            "Lkotlinx/coroutines/reactive/i;",
            "TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/reactive/a$b;->e:Lkotlinx/coroutines/q;

    iput-object p2, p0, Lkotlinx/coroutines/reactive/a$b;->f:Lkotlinx/coroutines/reactive/i;

    iput-object p3, p0, Lkotlinx/coroutines/reactive/a$b;->g:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkotlinx/coroutines/reactive/a$b;->d:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/reactive/a$b;->e:Lkotlinx/coroutines/q;

    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlinx/coroutines/reactive/a;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lkotlinx/coroutines/reactive/a$b;->d:Z

    return p1
.end method


# virtual methods
.method public onComplete()V
    .locals 4

    const-string v0, "onComplete"

    .line 1
    invoke-direct {p0, v0}, Lkotlinx/coroutines/reactive/a$b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lkotlinx/coroutines/reactive/a$b;->c:Z

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lkotlinx/coroutines/reactive/a$b;->f:Lkotlinx/coroutines/reactive/i;

    sget-object v1, Lkotlinx/coroutines/reactive/i;->c:Lkotlinx/coroutines/reactive/i;

    if-eq v0, v1, :cond_1

    sget-object v1, Lkotlinx/coroutines/reactive/i;->b:Lkotlinx/coroutines/reactive/i;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lkotlinx/coroutines/reactive/a$b;->e:Lkotlinx/coroutines/q;

    invoke-interface {v0}, Lkotlinx/coroutines/q;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lkotlinx/coroutines/reactive/a$b;->e:Lkotlinx/coroutines/q;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v1, p0, Lkotlinx/coroutines/reactive/a$b;->b:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 5
    :cond_2
    iget-object v0, p0, Lkotlinx/coroutines/reactive/a$b;->f:Lkotlinx/coroutines/reactive/i;

    sget-object v1, Lkotlinx/coroutines/reactive/i;->c:Lkotlinx/coroutines/reactive/i;

    if-eq v0, v1, :cond_4

    sget-object v1, Lkotlinx/coroutines/reactive/i;->f:Lkotlinx/coroutines/reactive/i;

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    iget-object v0, p0, Lkotlinx/coroutines/reactive/a$b;->e:Lkotlinx/coroutines/q;

    invoke-interface {v0}, Lkotlinx/coroutines/q;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7
    iget-object v0, p0, Lkotlinx/coroutines/reactive/a$b;->e:Lkotlinx/coroutines/q;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v1, Ljava/util/NoSuchElementException;

    iget-object v2, p0, Lkotlinx/coroutines/reactive/a$b;->f:Lkotlinx/coroutines/reactive/i;

    const-string v3, "No value received via onNext for "

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    .line 8
    :cond_4
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/reactive/a$b;->e:Lkotlinx/coroutines/q;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v1, p0, Lkotlinx/coroutines/reactive/a$b;->g:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "onError"

    .line 1
    invoke-direct {p0, v0}, Lkotlinx/coroutines/reactive/a$b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/reactive/a$b;->e:Lkotlinx/coroutines/q;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/reactive/a$b;->a:Lorg/reactivestreams/e;

    iget-object v1, p0, Lkotlinx/coroutines/reactive/a$b;->e:Lkotlinx/coroutines/q;

    if-nez v0, :cond_0

    .line 2
    invoke-interface {v1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\'onNext\' was called before \'onSubscribe\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {p1, v0}, Lkotlinx/coroutines/p0;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    return-void

    .line 5
    :cond_0
    iget-boolean v2, p0, Lkotlinx/coroutines/reactive/a$b;->d:Z

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    const-string v0, "onNext"

    invoke-static {p1, v0}, Lkotlinx/coroutines/reactive/a;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1
    iget-object v1, p0, Lkotlinx/coroutines/reactive/a$b;->f:Lkotlinx/coroutines/reactive/i;

    sget-object v2, Lkotlinx/coroutines/reactive/a$b$a;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_5

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    const/4 v3, 0x5

    if-eq v1, v3, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    iget-object v1, p0, Lkotlinx/coroutines/reactive/a$b;->f:Lkotlinx/coroutines/reactive/i;

    sget-object v3, Lkotlinx/coroutines/reactive/i;->e:Lkotlinx/coroutines/reactive/i;

    if-eq v1, v3, :cond_3

    sget-object v3, Lkotlinx/coroutines/reactive/i;->f:Lkotlinx/coroutines/reactive/i;

    if-ne v1, v3, :cond_4

    :cond_3
    iget-boolean v1, p0, Lkotlinx/coroutines/reactive/a$b;->c:Z

    if-eqz v1, :cond_4

    .line 9
    invoke-interface {v0}, Lorg/reactivestreams/e;->cancel()V

    .line 10
    iget-object p1, p0, Lkotlinx/coroutines/reactive/a$b;->e:Lkotlinx/coroutines/q;

    invoke-interface {p1}, Lkotlinx/coroutines/q;->a()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 11
    iget-object p1, p0, Lkotlinx/coroutines/reactive/a$b;->e:Lkotlinx/coroutines/q;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lkotlinx/coroutines/reactive/a$b;->f:Lkotlinx/coroutines/reactive/i;

    const-string v2, "More than one onNext value for "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_4
    iput-object p1, p0, Lkotlinx/coroutines/reactive/a$b;->b:Ljava/lang/Object;

    .line 13
    iput-boolean v2, p0, Lkotlinx/coroutines/reactive/a$b;->c:Z

    goto :goto_0

    .line 14
    :cond_5
    iget-boolean v1, p0, Lkotlinx/coroutines/reactive/a$b;->c:Z

    if-eqz v1, :cond_6

    .line 15
    iget-object p1, p0, Lkotlinx/coroutines/reactive/a$b;->e:Lkotlinx/coroutines/q;

    invoke-interface {p1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    iget-object v0, p0, Lkotlinx/coroutines/reactive/a$b;->f:Lkotlinx/coroutines/reactive/i;

    invoke-static {p1, v0}, Lkotlinx/coroutines/reactive/a;->c(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/reactive/i;)V

    return-void

    .line 16
    :cond_6
    iput-boolean v2, p0, Lkotlinx/coroutines/reactive/a$b;->c:Z

    .line 17
    invoke-interface {v0}, Lorg/reactivestreams/e;->cancel()V

    .line 18
    iget-object v0, p0, Lkotlinx/coroutines/reactive/a$b;->e:Lkotlinx/coroutines/q;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/e;)V
    .locals 2
    .param p1    # Lorg/reactivestreams/e;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/reactive/a$b;->a:Lorg/reactivestreams/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lorg/reactivestreams/e;->cancel()V

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, Lkotlinx/coroutines/reactive/a$b;->a:Lorg/reactivestreams/e;

    .line 4
    iget-object v0, p0, Lkotlinx/coroutines/reactive/a$b;->e:Lkotlinx/coroutines/q;

    new-instance v1, Lkotlinx/coroutines/reactive/a$b$b;

    invoke-direct {v1, p1}, Lkotlinx/coroutines/reactive/a$b$b;-><init>(Lorg/reactivestreams/e;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/q;->k(Lkotlin/jvm/functions/Function1;)V

    .line 5
    iget-object v0, p0, Lkotlinx/coroutines/reactive/a$b;->f:Lkotlinx/coroutines/reactive/i;

    sget-object v1, Lkotlinx/coroutines/reactive/i;->b:Lkotlinx/coroutines/reactive/i;

    if-eq v0, v1, :cond_2

    sget-object v1, Lkotlinx/coroutines/reactive/i;->c:Lkotlinx/coroutines/reactive/i;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_1

    :cond_2
    :goto_0
    const-wide/16 v0, 0x1

    :goto_1
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/e;->request(J)V

    return-void
.end method
