.class public final Lio/reactivex/internal/operators/single/a;
.super Lio/reactivex/i0;
.source "SingleAmb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/i0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:[Lio/reactivex/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/o0<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/o0<",
            "+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lio/reactivex/o0;Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/reactivex/o0<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/o0<",
            "+TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/i0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/single/a;->a:[Lio/reactivex/o0;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/single/a;->b:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method protected b1(Lio/reactivex/l0;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/l0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/single/a;->a:[Lio/reactivex/o0;

    const-string v1, "One of the sources is null"

    const/4 v2, 0x0

    if-nez v0, :cond_2

    const/16 v0, 0x8

    new-array v0, v0, [Lio/reactivex/o0;

    .line 2
    :try_start_0
    iget-object v3, p0, Lio/reactivex/internal/operators/single/a;->b:Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/reactivex/o0;

    if-nez v5, :cond_0

    .line 3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/l0;)V

    return-void

    .line 4
    :cond_0
    array-length v6, v0

    if-ne v4, v6, :cond_1

    shr-int/lit8 v6, v4, 0x2

    add-int/2addr v6, v4

    .line 5
    new-array v6, v6, [Lio/reactivex/o0;

    .line 6
    invoke-static {v0, v2, v6, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v6

    :cond_1
    add-int/lit8 v6, v4, 0x1

    .line 7
    aput-object v5, v0, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 8
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 9
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/l0;)V

    return-void

    .line 10
    :cond_2
    array-length v4, v0

    .line 11
    :cond_3
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 12
    new-instance v5, Lio/reactivex/disposables/b;

    invoke-direct {v5}, Lio/reactivex/disposables/b;-><init>()V

    .line 13
    invoke-interface {p1, v5}, Lio/reactivex/l0;->onSubscribe(Lio/reactivex/disposables/c;)V

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_7

    .line 14
    aget-object v7, v0, v6

    .line 15
    invoke-virtual {v5}, Lio/reactivex/disposables/b;->isDisposed()Z

    move-result v8

    if-eqz v8, :cond_4

    return-void

    :cond_4
    if-nez v7, :cond_6

    .line 16
    invoke-virtual {v5}, Lio/reactivex/disposables/b;->dispose()V

    .line 17
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 18
    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 19
    invoke-interface {p1, v0}, Lio/reactivex/l0;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 20
    :cond_5
    invoke-static {v0}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_2
    return-void

    .line 21
    :cond_6
    new-instance v8, Lio/reactivex/internal/operators/single/a$a;

    invoke-direct {v8, p1, v5, v3}, Lio/reactivex/internal/operators/single/a$a;-><init>(Lio/reactivex/l0;Lio/reactivex/disposables/b;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-interface {v7, v8}, Lio/reactivex/o0;->d(Lio/reactivex/l0;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method
