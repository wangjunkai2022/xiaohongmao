.class public final Lkotlinx/coroutines/rx2/c$d;
.super Ljava/lang/Object;
.source "RxAwait.kt"

# interfaces
.implements Lio/reactivex/g0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/rx2/c;->j(Lio/reactivex/e0;Lkotlinx/coroutines/rx2/b;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/rx2/c$d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/g0<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0003\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00028\u0000H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0008\u0010\t\u001a\u00020\u0004H\u0016J\u0010\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0016R\u0016\u0010\u000f\u001a\u00020\u00028\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u0018\u0010\u0012\u001a\u0004\u0018\u00018\u00008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0016\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0017"
    }
    d2 = {
        "kotlinx/coroutines/rx2/c$d",
        "Lio/reactivex/g0;",
        "Lio/reactivex/disposables/c;",
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
        "a",
        "Lio/reactivex/disposables/c;",
        "subscription",
        "b",
        "Ljava/lang/Object;",
        "value",
        "",
        "c",
        "Z",
        "seenValue",
        "kotlinx-coroutines-rx2"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field private a:Lio/reactivex/disposables/c;

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

.field final synthetic d:Lkotlinx/coroutines/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/q<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic e:Lkotlinx/coroutines/rx2/b;

.field final synthetic f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/coroutines/q;Lkotlinx/coroutines/rx2/b;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/q<",
            "-TT;>;",
            "Lkotlinx/coroutines/rx2/b;",
            "TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/rx2/c$d;->d:Lkotlinx/coroutines/q;

    iput-object p2, p0, Lkotlinx/coroutines/rx2/c$d;->e:Lkotlinx/coroutines/rx2/b;

    iput-object p3, p0, Lkotlinx/coroutines/rx2/c$d;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lkotlinx/coroutines/rx2/c$d;->c:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/rx2/c$d;->d:Lkotlinx/coroutines/q;

    invoke-interface {v0}, Lkotlinx/coroutines/q;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlinx/coroutines/rx2/c$d;->d:Lkotlinx/coroutines/q;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v1, p0, Lkotlinx/coroutines/rx2/c$d;->b:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/rx2/c$d;->e:Lkotlinx/coroutines/rx2/b;

    sget-object v1, Lkotlinx/coroutines/rx2/b;->c:Lkotlinx/coroutines/rx2/b;

    if-ne v0, v1, :cond_2

    .line 4
    iget-object v0, p0, Lkotlinx/coroutines/rx2/c$d;->d:Lkotlinx/coroutines/q;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v1, p0, Lkotlinx/coroutines/rx2/c$d;->f:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lkotlinx/coroutines/rx2/c$d;->d:Lkotlinx/coroutines/q;

    invoke-interface {v0}, Lkotlinx/coroutines/q;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lkotlinx/coroutines/rx2/c$d;->d:Lkotlinx/coroutines/q;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v1, Ljava/util/NoSuchElementException;

    iget-object v2, p0, Lkotlinx/coroutines/rx2/c$d;->e:Lkotlinx/coroutines/rx2/b;

    const-string v3, "No value received via onNext for "

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iget-object v0, p0, Lkotlinx/coroutines/rx2/c$d;->d:Lkotlinx/coroutines/q;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/rx2/c$d;->e:Lkotlinx/coroutines/rx2/b;

    sget-object v1, Lkotlinx/coroutines/rx2/c$d$a;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    const-string v2, "subscription"

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    const/4 v4, 0x4

    if-eq v0, v4, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/rx2/c$d;->e:Lkotlinx/coroutines/rx2/b;

    sget-object v4, Lkotlinx/coroutines/rx2/b;->e:Lkotlinx/coroutines/rx2/b;

    if-ne v0, v4, :cond_3

    iget-boolean v0, p0, Lkotlinx/coroutines/rx2/c$d;->c:Z

    if-eqz v0, :cond_3

    .line 3
    iget-object p1, p0, Lkotlinx/coroutines/rx2/c$d;->d:Lkotlinx/coroutines/q;

    invoke-interface {p1}, Lkotlinx/coroutines/q;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lkotlinx/coroutines/rx2/c$d;->d:Lkotlinx/coroutines/q;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v3, p0, Lkotlinx/coroutines/rx2/c$d;->e:Lkotlinx/coroutines/rx2/b;

    const-string v4, "More than one onNext value for "

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 5
    :cond_1
    iget-object p1, p0, Lkotlinx/coroutines/rx2/c$d;->a:Lio/reactivex/disposables/c;

    if-nez p1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Lio/reactivex/disposables/c;->dispose()V

    goto :goto_2

    .line 6
    :cond_3
    iput-object p1, p0, Lkotlinx/coroutines/rx2/c$d;->b:Ljava/lang/Object;

    .line 7
    iput-boolean v3, p0, Lkotlinx/coroutines/rx2/c$d;->c:Z

    goto :goto_2

    .line 8
    :cond_4
    iget-boolean v0, p0, Lkotlinx/coroutines/rx2/c$d;->c:Z

    if-nez v0, :cond_6

    .line 9
    iput-boolean v3, p0, Lkotlinx/coroutines/rx2/c$d;->c:Z

    .line 10
    iget-object v0, p0, Lkotlinx/coroutines/rx2/c$d;->d:Lkotlinx/coroutines/q;

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lkotlinx/coroutines/rx2/c$d;->a:Lio/reactivex/disposables/c;

    if-nez p1, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v1, p1

    :goto_1
    invoke-interface {v1}, Lio/reactivex/disposables/c;->dispose()V

    :cond_6
    :goto_2
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/c;)V
    .locals 2
    .param p1    # Lio/reactivex/disposables/c;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/rx2/c$d;->a:Lio/reactivex/disposables/c;

    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/rx2/c$d;->d:Lkotlinx/coroutines/q;

    new-instance v1, Lkotlinx/coroutines/rx2/c$d$b;

    invoke-direct {v1, p1}, Lkotlinx/coroutines/rx2/c$d$b;-><init>(Lio/reactivex/disposables/c;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/q;->k(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
