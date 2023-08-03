.class public final Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$GroupByObserver;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableGroupBy.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/n0;
.implements Lio/reactivex/rxjava3/disposables/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupByObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/rxjava3/core/n0<",
        "TT;>;",
        "Lio/reactivex/rxjava3/disposables/f;"
    }
.end annotation


# static fields
.field private static final i:J = -0x332f71b8460722ceL

.field static final j:Ljava/lang/Object;


# instance fields
.field final a:Lio/reactivex/rxjava3/core/n0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/n0<",
            "-",
            "Lio/reactivex/rxjava3/observables/b<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final b:Lq7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/o<",
            "-TT;+TK;>;"
        }
    .end annotation
.end field

.field final c:Lq7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/o<",
            "-TT;+TV;>;"
        }
    .end annotation
.end field

.field final d:I

.field final e:Z

.field final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$a<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field g:Lio/reactivex/rxjava3/disposables/f;

.field final h:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$GroupByObserver;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lio/reactivex/rxjava3/core/n0;Lq7/o;Lq7/o;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "actual",
            "keySelector",
            "valueSelector",
            "bufferSize",
            "delayError"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/n0<",
            "-",
            "Lio/reactivex/rxjava3/observables/b<",
            "TK;TV;>;>;",
            "Lq7/o<",
            "-TT;+TK;>;",
            "Lq7/o<",
            "-TT;+TV;>;IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$GroupByObserver;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$GroupByObserver;->a:Lio/reactivex/rxjava3/core/n0;

    .line 4
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$GroupByObserver;->b:Lq7/o;

    .line 5
    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$GroupByObserver;->c:Lq7/o;

    .line 6
    iput p4, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$GroupByObserver;->d:I

    .line 7
    iput-boolean p5, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$GroupByObserver;->e:Z

    .line 8
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$GroupByObserver;->f:Ljava/util/Map;

    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-object p1, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$GroupByObserver;->j:Ljava/lang/Object;

    .line 2
    :goto_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$GroupByObserver;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$GroupByObserver;->g:Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    :cond_1
    return-void
.end method

.method public dispose()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$GroupByObserver;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$GroupByObserver;->g:Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$GroupByObserver;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$GroupByObserver;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$GroupByObserver;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$a;

    .line 4
    invoke-virtual {v1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$a;->onComplete()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$GroupByObserver;->a:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {v0}, Lio/reactivex/rxjava3/core/n0;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$GroupByObserver;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$GroupByObserver;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$a;

    .line 4
    invoke-virtual {v1, p1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$GroupByObserver;->a:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/n0;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$GroupByObserver;->b:Lq7/o;

    invoke-interface {v0, p1}, Lq7/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v1, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$GroupByObserver;->j:Ljava/lang/Object;

    .line 3
    :goto_0
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$GroupByObserver;->f:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$a;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 4
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$GroupByObserver;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 5
    :cond_1
    iget v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$GroupByObserver;->d:I

    iget-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$GroupByObserver;->e:Z

    invoke-static {v0, v2, p0, v3}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$a;->B8(Ljava/lang/Object;ILio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$GroupByObserver;Z)Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$a;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$GroupByObserver;->f:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    const/4 v3, 0x1

    .line 8
    :cond_2
    :try_start_1
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$GroupByObserver;->c:Lq7/o;

    invoke-interface {v1, p1}, Lq7/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "The value supplied is null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    invoke-virtual {v2, p1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$a;->onNext(Ljava/lang/Object;)V

    if-eqz v3, :cond_3

    .line 10
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$GroupByObserver;->a:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {p1, v2}, Lio/reactivex/rxjava3/core/n0;->onNext(Ljava/lang/Object;)V

    .line 11
    iget-object p1, v2, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$a;->b:Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$b;

    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$b;->j()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$GroupByObserver;->cancel(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v2}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$a;->onComplete()V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 14
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 15
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$GroupByObserver;->g:Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    if-eqz v3, :cond_4

    .line 16
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$GroupByObserver;->a:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {v0, v2}, Lio/reactivex/rxjava3/core/n0;->onNext(Ljava/lang/Object;)V

    .line 17
    :cond_4
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$GroupByObserver;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception p1

    .line 18
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 19
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$GroupByObserver;->g:Lio/reactivex/rxjava3/disposables/f;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    .line 20
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$GroupByObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "d"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$GroupByObserver;->g:Lio/reactivex/rxjava3/disposables/f;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->validate(Lio/reactivex/rxjava3/disposables/f;Lio/reactivex/rxjava3/disposables/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$GroupByObserver;->g:Lio/reactivex/rxjava3/disposables/f;

    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$GroupByObserver;->a:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/n0;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    :cond_0
    return-void
.end method
