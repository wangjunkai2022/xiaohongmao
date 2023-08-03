.class final Lkotlinx/coroutines/rx2/a0;
.super Lkotlinx/coroutines/channels/a0;
.source "RxChannel.kt"

# interfaces
.implements Lio/reactivex/g0;
.implements Lio/reactivex/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/channels/a0<",
        "TT;>;",
        "Lio/reactivex/g0<",
        "TT;>;",
        "Lio/reactivex/t<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0003\n\u0002\u0008\u0005\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u0008\u0012\u0004\u0012\u00028\u00000\u00032\u0008\u0012\u0004\u0012\u00028\u00000\u0004B\u0007\u00a2\u0006\u0004\u0008\u0018\u0010\u0013J\u0017\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00028\u0000H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00028\u0000H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0019"
    }
    d2 = {
        "Lkotlinx/coroutines/rx2/a0;",
        "T",
        "Lkotlinx/coroutines/channels/a0;",
        "Lio/reactivex/g0;",
        "Lio/reactivex/t;",
        "Lkotlinx/coroutines/internal/x;",
        "closed",
        "",
        "J",
        "(Lkotlinx/coroutines/internal/x;)V",
        "Lio/reactivex/disposables/c;",
        "sub",
        "onSubscribe",
        "(Lio/reactivex/disposables/c;)V",
        "t",
        "onSuccess",
        "(Ljava/lang/Object;)V",
        "onNext",
        "onComplete",
        "()V",
        "",
        "e",
        "onError",
        "(Ljava/lang/Throwable;)V",
        "<init>",
        "kotlinx-coroutines-rx2"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field private static final synthetic d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _subscription:Ljava/lang/Object;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/rx2/a0;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_subscription"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/rx2/a0;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lkotlinx/coroutines/channels/a0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 2
    iput-object v0, p0, Lkotlinx/coroutines/rx2/a0;->_subscription:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public J(Lkotlinx/coroutines/internal/x;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/internal/x;
        .annotation build Lm8/g;
        .end annotation
    .end param

    sget-object p1, Lkotlinx/coroutines/rx2/a0;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/disposables/c;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lio/reactivex/disposables/c;->dispose()V

    :goto_0
    return-void
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/c;->close(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/c;->close(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/c;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/c;)V
    .locals 0
    .param p1    # Lio/reactivex/disposables/c;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iput-object p1, p0, Lkotlinx/coroutines/rx2/a0;->_subscription:Ljava/lang/Object;

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/c;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/c;->close(Ljava/lang/Throwable;)Z

    return-void
.end method
