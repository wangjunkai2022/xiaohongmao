.class final Lio/reactivex/internal/operators/completable/e$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "CompletableConcatArray.java"

# interfaces
.implements Lio/reactivex/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/completable/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field private static final e:J = -0x6e8ac9652ad7cd50L


# instance fields
.field final a:Lio/reactivex/d;

.field final b:[Lio/reactivex/g;

.field c:I

.field final d:Lio/reactivex/internal/disposables/SequentialDisposable;


# direct methods
.method constructor <init>(Lio/reactivex/d;[Lio/reactivex/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/e$a;->a:Lio/reactivex/d;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/completable/e$a;->b:[Lio/reactivex/g;

    .line 4
    new-instance p1, Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-direct {p1}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/completable/e$a;->d:Lio/reactivex/internal/disposables/SequentialDisposable;

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/e$a;->d:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/e$a;->b:[Lio/reactivex/g;

    .line 4
    :cond_2
    iget-object v1, p0, Lio/reactivex/internal/operators/completable/e$a;->d:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v1}, Lio/reactivex/internal/disposables/SequentialDisposable;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 5
    :cond_3
    iget v1, p0, Lio/reactivex/internal/operators/completable/e$a;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/reactivex/internal/operators/completable/e$a;->c:I

    .line 6
    array-length v2, v0

    if-ne v1, v2, :cond_4

    .line 7
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/e$a;->a:Lio/reactivex/d;

    invoke-interface {v0}, Lio/reactivex/d;->onComplete()V

    return-void

    .line 8
    :cond_4
    aget-object v1, v0, v1

    invoke-interface {v1, p0}, Lio/reactivex/g;->d(Lio/reactivex/d;)V

    .line 9
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_2

    return-void
.end method

.method public onComplete()V
    .locals 0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/completable/e$a;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/completable/e$a;->a:Lio/reactivex/d;

    invoke-interface {v0, p1}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/c;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/completable/e$a;->d:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/disposables/c;)Z

    return-void
.end method
