.class public final Lkotlinx/coroutines/rx2/z;
.super Lkotlinx/coroutines/n0;
.source "RxScheduler.kt"

# interfaces
.implements Lkotlinx/coroutines/a1;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxScheduler.kt\nkotlinx/coroutines/rx2/SchedulerCoroutineDispatcher\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,181:1\n1#2:182\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u001e\u001a\u00020\u0019\u00a2\u0006\u0004\u0008\u001f\u0010 J\u001c\u0010\t\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u00032\n\u0010\u0007\u001a\u00060\u0005j\u0002`\u0006H\u0016J\u001e\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000cH\u0016J$\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\n2\n\u0010\u0007\u001a\u00060\u0005j\u0002`\u00062\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\u0008\u0010\u0012\u001a\u00020\u0011H\u0016J\u0013\u0010\u0016\u001a\u00020\u00152\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0096\u0002J\u0008\u0010\u0018\u001a\u00020\u0017H\u0016R\u0017\u0010\u001e\u001a\u00020\u00198\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006!"
    }
    d2 = {
        "Lkotlinx/coroutines/rx2/z;",
        "Lkotlinx/coroutines/n0;",
        "Lkotlinx/coroutines/a1;",
        "Lkotlin/coroutines/CoroutineContext;",
        "context",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "block",
        "",
        "dispatch",
        "",
        "timeMillis",
        "Lkotlinx/coroutines/q;",
        "continuation",
        "r",
        "Lkotlinx/coroutines/l1;",
        "I",
        "",
        "toString",
        "",
        "other",
        "",
        "equals",
        "",
        "hashCode",
        "Lio/reactivex/h0;",
        "a",
        "Lio/reactivex/h0;",
        "r0",
        "()Lio/reactivex/h0;",
        "scheduler",
        "<init>",
        "(Lio/reactivex/h0;)V",
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
.field private final a:Lio/reactivex/h0;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/h0;)V
    .locals 0
    .param p1    # Lio/reactivex/h0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/n0;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/rx2/z;->a:Lio/reactivex/h0;

    return-void
.end method

.method public static synthetic p0(Lkotlinx/coroutines/q;Lkotlinx/coroutines/rx2/z;)V
    .locals 0

    invoke-static {p0, p1}, Lkotlinx/coroutines/rx2/z;->t0(Lkotlinx/coroutines/q;Lkotlinx/coroutines/rx2/z;)V

    return-void
.end method

.method public static synthetic q0(Lio/reactivex/disposables/c;)V
    .locals 0

    invoke-static {p0}, Lkotlinx/coroutines/rx2/z;->s0(Lio/reactivex/disposables/c;)V

    return-void
.end method

.method private static final s0(Lio/reactivex/disposables/c;)V
    .locals 0

    invoke-interface {p0}, Lio/reactivex/disposables/c;->dispose()V

    return-void
.end method

.method private static final t0(Lkotlinx/coroutines/q;Lkotlinx/coroutines/rx2/z;)V
    .locals 1

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/q;->B(Lkotlinx/coroutines/n0;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public I(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/l1;
    .locals 1
    .param p3    # Ljava/lang/Runnable;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .line 1
    iget-object p4, p0, Lkotlinx/coroutines/rx2/z;->a:Lio/reactivex/h0;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p4, p3, p1, p2, v0}, Lio/reactivex/h0;->g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/c;

    move-result-object p1

    .line 2
    new-instance p2, Lkotlinx/coroutines/rx2/y;

    invoke-direct {p2, p1}, Lkotlinx/coroutines/rx2/y;-><init>(Lio/reactivex/disposables/c;)V

    return-object p2
.end method

.method public dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iget-object p1, p0, Lkotlinx/coroutines/rx2/z;->a:Lio/reactivex/h0;

    invoke-virtual {p1, p2}, Lio/reactivex/h0;->f(Ljava/lang/Runnable;)Lio/reactivex/disposables/c;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param

    instance-of v0, p1, Lkotlinx/coroutines/rx2/z;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/coroutines/rx2/z;

    iget-object p1, p1, Lkotlinx/coroutines/rx2/z;->a:Lio/reactivex/h0;

    iget-object v0, p0, Lkotlinx/coroutines/rx2/z;->a:Lio/reactivex/h0;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public g0(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Deprecated without replacement as an internal method never intended for public use"
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/a1$a;->a(Lkotlinx/coroutines/a1;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/rx2/z;->a:Lio/reactivex/h0;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public r(JLkotlinx/coroutines/q;)V
    .locals 3
    .param p3    # Lkotlinx/coroutines/q;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlinx/coroutines/q<",
            "-",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/rx2/z;->a:Lio/reactivex/h0;

    new-instance v1, Lkotlinx/coroutines/rx2/x;

    invoke-direct {v1, p3, p0}, Lkotlinx/coroutines/rx2/x;-><init>(Lkotlinx/coroutines/q;Lkotlinx/coroutines/rx2/z;)V

    .line 2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    invoke-virtual {v0, v1, p1, p2, v2}, Lio/reactivex/h0;->g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/c;

    move-result-object p1

    .line 4
    invoke-static {p3, p1}, Lkotlinx/coroutines/rx2/c;->p(Lkotlinx/coroutines/q;Lio/reactivex/disposables/c;)V

    return-void
.end method

.method public final r0()Lio/reactivex/h0;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/rx2/z;->a:Lio/reactivex/h0;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/rx2/z;->a:Lio/reactivex/h0;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
