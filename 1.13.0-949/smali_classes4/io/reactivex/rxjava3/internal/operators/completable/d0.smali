.class public final Lio/reactivex/rxjava3/internal/operators/completable/d0;
.super Lio/reactivex/rxjava3/core/a;
.source "CompletableMergeArrayDelayError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/completable/d0$a;,
        Lio/reactivex/rxjava3/internal/operators/completable/d0$b;
    }
.end annotation


# instance fields
.field final a:[Lio/reactivex/rxjava3/core/g;


# direct methods
.method public constructor <init>([Lio/reactivex/rxjava3/core/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sources"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/d0;->a:[Lio/reactivex/rxjava3/core/g;

    return-void
.end method


# virtual methods
.method public Y0(Lio/reactivex/rxjava3/core/d;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "observer"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/disposables/c;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/c;-><init>()V

    .line 2
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/completable/d0;->a:[Lio/reactivex/rxjava3/core/g;

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 3
    new-instance v2, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-direct {v2}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;-><init>()V

    .line 4
    new-instance v3, Lio/reactivex/rxjava3/internal/operators/completable/d0$b;

    invoke-direct {v3, v2}, Lio/reactivex/rxjava3/internal/operators/completable/d0$b;-><init>(Lio/reactivex/rxjava3/internal/util/AtomicThrowable;)V

    invoke-virtual {v0, v3}, Lio/reactivex/rxjava3/disposables/c;->b(Lio/reactivex/rxjava3/disposables/f;)Z

    .line 5
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/d;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    .line 6
    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/completable/d0;->a:[Lio/reactivex/rxjava3/core/g;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 7
    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/c;->isDisposed()Z

    move-result v7

    if-eqz v7, :cond_0

    return-void

    :cond_0
    if-nez v6, :cond_1

    .line 8
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "A completable source is null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2, v6}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    .line 10
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_1

    .line 11
    :cond_1
    new-instance v7, Lio/reactivex/rxjava3/internal/operators/completable/d0$a;

    invoke-direct {v7, p1, v0, v2, v1}, Lio/reactivex/rxjava3/internal/operators/completable/d0$a;-><init>(Lio/reactivex/rxjava3/core/d;Lio/reactivex/rxjava3/disposables/c;Lio/reactivex/rxjava3/internal/util/AtomicThrowable;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v6, v7}, Lio/reactivex/rxjava3/core/g;->d(Lio/reactivex/rxjava3/core/d;)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_3

    .line 13
    invoke-virtual {v2, p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lio/reactivex/rxjava3/core/d;)V

    :cond_3
    return-void
.end method
