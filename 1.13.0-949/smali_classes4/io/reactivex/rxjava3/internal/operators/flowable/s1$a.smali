.class final Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableGroupJoin.java"

# interfaces
.implements Lorg/reactivestreams/e;
.implements Lio/reactivex/rxjava3/internal/operators/flowable/s1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/flowable/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Left:Ljava/lang/Object;",
        "TRight:",
        "Ljava/lang/Object;",
        "T",
        "LeftEnd:Ljava/lang/Object;",
        "TRightEnd:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lorg/reactivestreams/e;",
        "Lio/reactivex/rxjava3/internal/operators/flowable/s1$b;"
    }
.end annotation


# static fields
.field private static final o:J = -0x54414b546f40e739L

.field static final p:Ljava/lang/Integer;

.field static final q:Ljava/lang/Integer;

.field static final r:Ljava/lang/Integer;

.field static final s:Ljava/lang/Integer;


# instance fields
.field final a:Lorg/reactivestreams/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/d<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/atomic/AtomicLong;

.field final c:Lio/reactivex/rxjava3/internal/queue/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/queue/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lio/reactivex/rxjava3/disposables/c;

.field final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/reactivex/rxjava3/processors/h<",
            "TTRight;>;>;"
        }
    .end annotation
.end field

.field final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "TTRight;>;"
        }
    .end annotation
.end field

.field final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final h:Lq7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/o<",
            "-TT",
            "Left;",
            "+",
            "Lorg/reactivestreams/c<",
            "TT",
            "LeftEnd;",
            ">;>;"
        }
    .end annotation
.end field

.field final i:Lq7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/o<",
            "-TTRight;+",
            "Lorg/reactivestreams/c<",
            "TTRightEnd;>;>;"
        }
    .end annotation
.end field

.field final j:Lq7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/c<",
            "-TT",
            "Left;",
            "-",
            "Lio/reactivex/rxjava3/core/m<",
            "TTRight;>;+TR;>;"
        }
    .end annotation
.end field

.field final k:Ljava/util/concurrent/atomic/AtomicInteger;

.field l:I

.field m:I

.field volatile n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->p:Ljava/lang/Integer;

    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->q:Ljava/lang/Integer;

    const/4 v0, 0x3

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->r:Ljava/lang/Integer;

    const/4 v0, 0x4

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->s:Ljava/lang/Integer;

    return-void
.end method

.method constructor <init>(Lorg/reactivestreams/d;Lq7/o;Lq7/o;Lq7/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "actual",
            "leftEnd",
            "rightEnd",
            "resultSelector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TR;>;",
            "Lq7/o<",
            "-TT",
            "Left;",
            "+",
            "Lorg/reactivestreams/c<",
            "TT",
            "LeftEnd;",
            ">;>;",
            "Lq7/o<",
            "-TTRight;+",
            "Lorg/reactivestreams/c<",
            "TTRightEnd;>;>;",
            "Lq7/c<",
            "-TT",
            "Left;",
            "-",
            "Lio/reactivex/rxjava3/core/m<",
            "TTRight;>;+TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->a:Lorg/reactivestreams/d;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 4
    new-instance p1, Lio/reactivex/rxjava3/disposables/c;

    invoke-direct {p1}, Lio/reactivex/rxjava3/disposables/c;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->d:Lio/reactivex/rxjava3/disposables/c;

    .line 5
    new-instance p1, Lio/reactivex/rxjava3/internal/queue/b;

    invoke-static {}, Lio/reactivex/rxjava3/core/m;->V()I

    move-result v0

    invoke-direct {p1, v0}, Lio/reactivex/rxjava3/internal/queue/b;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->c:Lio/reactivex/rxjava3/internal/queue/b;

    .line 6
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->e:Ljava/util/Map;

    .line 7
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->f:Ljava/util/Map;

    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->h:Lq7/o;

    .line 10
    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->i:Lq7/o;

    .line 11
    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->j:Lq7/c;

    .line 12
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ex"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/util/g;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 3
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->i()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public b(ZLjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isLeft",
            "o"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->c:Lio/reactivex/rxjava3/internal/queue/b;

    if-eqz p1, :cond_0

    sget-object p1, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->p:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    sget-object p1, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->q:Ljava/lang/Integer;

    :goto_0
    invoke-virtual {v0, p1, p2}, Lio/reactivex/rxjava3/internal/queue/b;->offer(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->i()V

    return-void

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public c(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ex"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/util/g;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->i()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->n:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->n:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->h()V

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->c:Lio/reactivex/rxjava3/internal/queue/b;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/queue/b;->clear()V

    :cond_1
    return-void
.end method

.method public d(Lio/reactivex/rxjava3/internal/operators/flowable/s1$d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sender"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->d:Lio/reactivex/rxjava3/disposables/c;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/c;->c(Lio/reactivex/rxjava3/disposables/f;)Z

    .line 2
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 3
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->i()V

    return-void
.end method

.method public e(ZLio/reactivex/rxjava3/internal/operators/flowable/s1$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isLeft",
            "index"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->c:Lio/reactivex/rxjava3/internal/queue/b;

    if-eqz p1, :cond_0

    sget-object p1, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->r:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    sget-object p1, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->s:Ljava/lang/Integer;

    :goto_0
    invoke-virtual {v0, p1, p2}, Lio/reactivex/rxjava3/internal/queue/b;->offer(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->i()V

    return-void

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method h()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->d:Lio/reactivex/rxjava3/disposables/c;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    return-void
.end method

.method i()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->c:Lio/reactivex/rxjava3/internal/queue/b;

    .line 3
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->a:Lorg/reactivestreams/d;

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 4
    :cond_1
    :goto_0
    iget-boolean v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->n:Z

    if-eqz v4, :cond_2

    .line 5
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/queue/b;->clear()V

    return-void

    .line 6
    :cond_2
    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    if-eqz v4, :cond_3

    .line 7
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/queue/b;->clear()V

    .line 8
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->h()V

    .line 9
    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->j(Lorg/reactivestreams/d;)V

    return-void

    .line 10
    :cond_3
    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    .line 11
    :goto_1
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/queue/b;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-nez v6, :cond_5

    const/4 v7, 0x1

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    :goto_2
    if-eqz v4, :cond_7

    if-eqz v7, :cond_7

    .line 12
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/rxjava3/processors/h;

    .line 13
    invoke-virtual {v2}, Lio/reactivex/rxjava3/processors/h;->onComplete()V

    goto :goto_3

    .line 14
    :cond_6
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 15
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 16
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->d:Lio/reactivex/rxjava3/disposables/c;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 17
    invoke-interface {v1}, Lorg/reactivestreams/d;->onComplete()V

    return-void

    :cond_7
    if-eqz v7, :cond_8

    neg-int v3, v3

    .line 18
    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_1

    return-void

    .line 19
    :cond_8
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/queue/b;->poll()Ljava/lang/Object;

    move-result-object v4

    .line 20
    sget-object v7, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->p:Ljava/lang/Integer;

    if-ne v6, v7, :cond_b

    .line 21
    invoke-static {}, Lio/reactivex/rxjava3/processors/h;->m9()Lio/reactivex/rxjava3/processors/h;

    move-result-object v5

    .line 22
    iget v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->l:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->l:I

    .line 23
    iget-object v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->e:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :try_start_0
    iget-object v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->h:Lq7/o;

    invoke-interface {v7, v4}, Lq7/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "The leftEnd returned a null Publisher"

    invoke-static {v7, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v7, Lorg/reactivestreams/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    new-instance v8, Lio/reactivex/rxjava3/internal/operators/flowable/s1$c;

    invoke-direct {v8, p0, v2, v6}, Lio/reactivex/rxjava3/internal/operators/flowable/s1$c;-><init>(Lio/reactivex/rxjava3/internal/operators/flowable/s1$b;ZI)V

    .line 26
    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->d:Lio/reactivex/rxjava3/disposables/c;

    invoke-virtual {v6, v8}, Lio/reactivex/rxjava3/disposables/c;->b(Lio/reactivex/rxjava3/disposables/f;)Z

    .line 27
    invoke-interface {v7, v8}, Lorg/reactivestreams/c;->i(Lorg/reactivestreams/d;)V

    .line 28
    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Throwable;

    if-eqz v6, :cond_9

    .line 29
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/queue/b;->clear()V

    .line 30
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->h()V

    .line 31
    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->j(Lorg/reactivestreams/d;)V

    return-void

    .line 32
    :cond_9
    :try_start_1
    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->j:Lq7/c;

    invoke-interface {v6, v4, v5}, Lq7/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v6, "The resultSelector returned a null value"

    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-eqz v10, :cond_a

    .line 34
    invoke-interface {v1, v4}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    .line 35
    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v6, 0x1

    invoke-static {v4, v6, v7}, Lio/reactivex/rxjava3/internal/util/b;->e(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 36
    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->f:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 37
    invoke-virtual {v5, v6}, Lio/reactivex/rxjava3/processors/h;->onNext(Ljava/lang/Object;)V

    goto :goto_4

    .line 38
    :cond_a
    new-instance v2, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;

    const-string v3, "Could not emit value due to lack of requests"

    invoke-direct {v2, v3}, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v1, v0}, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->k(Ljava/lang/Throwable;Lorg/reactivestreams/d;Lio/reactivex/rxjava3/internal/fuseable/q;)V

    return-void

    :catchall_0
    move-exception v2

    .line 39
    invoke-virtual {p0, v2, v1, v0}, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->k(Ljava/lang/Throwable;Lorg/reactivestreams/d;Lio/reactivex/rxjava3/internal/fuseable/q;)V

    return-void

    :catchall_1
    move-exception v2

    .line 40
    invoke-virtual {p0, v2, v1, v0}, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->k(Ljava/lang/Throwable;Lorg/reactivestreams/d;Lio/reactivex/rxjava3/internal/fuseable/q;)V

    return-void

    .line 41
    :cond_b
    sget-object v7, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->q:Ljava/lang/Integer;

    if-ne v6, v7, :cond_d

    .line 42
    iget v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->m:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->m:I

    .line 43
    iget-object v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->f:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :try_start_2
    iget-object v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->i:Lq7/o;

    invoke-interface {v7, v4}, Lq7/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "The rightEnd returned a null Publisher"

    invoke-static {v7, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v7, Lorg/reactivestreams/c;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 45
    new-instance v8, Lio/reactivex/rxjava3/internal/operators/flowable/s1$c;

    invoke-direct {v8, p0, v5, v6}, Lio/reactivex/rxjava3/internal/operators/flowable/s1$c;-><init>(Lio/reactivex/rxjava3/internal/operators/flowable/s1$b;ZI)V

    .line 46
    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->d:Lio/reactivex/rxjava3/disposables/c;

    invoke-virtual {v5, v8}, Lio/reactivex/rxjava3/disposables/c;->b(Lio/reactivex/rxjava3/disposables/f;)Z

    .line 47
    invoke-interface {v7, v8}, Lorg/reactivestreams/c;->i(Lorg/reactivestreams/d;)V

    .line 48
    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_c

    .line 49
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/queue/b;->clear()V

    .line 50
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->h()V

    .line 51
    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->j(Lorg/reactivestreams/d;)V

    return-void

    .line 52
    :cond_c
    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->e:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/reactivex/rxjava3/processors/h;

    .line 53
    invoke-virtual {v6, v4}, Lio/reactivex/rxjava3/processors/h;->onNext(Ljava/lang/Object;)V

    goto :goto_5

    :catchall_2
    move-exception v2

    .line 54
    invoke-virtual {p0, v2, v1, v0}, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->k(Ljava/lang/Throwable;Lorg/reactivestreams/d;Lio/reactivex/rxjava3/internal/fuseable/q;)V

    return-void

    .line 55
    :cond_d
    sget-object v5, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->r:Ljava/lang/Integer;

    if-ne v6, v5, :cond_e

    .line 56
    check-cast v4, Lio/reactivex/rxjava3/internal/operators/flowable/s1$c;

    .line 57
    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->e:Ljava/util/Map;

    iget v6, v4, Lio/reactivex/rxjava3/internal/operators/flowable/s1$c;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/reactivex/rxjava3/processors/h;

    .line 58
    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->d:Lio/reactivex/rxjava3/disposables/c;

    invoke-virtual {v6, v4}, Lio/reactivex/rxjava3/disposables/c;->a(Lio/reactivex/rxjava3/disposables/f;)Z

    if-eqz v5, :cond_1

    .line 59
    invoke-virtual {v5}, Lio/reactivex/rxjava3/processors/h;->onComplete()V

    goto/16 :goto_0

    .line 60
    :cond_e
    check-cast v4, Lio/reactivex/rxjava3/internal/operators/flowable/s1$c;

    .line 61
    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->f:Ljava/util/Map;

    iget v6, v4, Lio/reactivex/rxjava3/internal/operators/flowable/s1$c;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->d:Lio/reactivex/rxjava3/disposables/c;

    invoke-virtual {v5, v4}, Lio/reactivex/rxjava3/disposables/c;->a(Lio/reactivex/rxjava3/disposables/f;)Z

    goto/16 :goto_0
.end method

.method j(Lorg/reactivestreams/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/rxjava3/internal/util/g;->f(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/rxjava3/processors/h;

    .line 3
    invoke-virtual {v2, v0}, Lio/reactivex/rxjava3/processors/h;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 5
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 6
    invoke-interface {p1, v0}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method k(Ljava/lang/Throwable;Lorg/reactivestreams/d;Lio/reactivex/rxjava3/internal/fuseable/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "exc",
            "a",
            "q"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lorg/reactivestreams/d<",
            "*>;",
            "Lio/reactivex/rxjava3/internal/fuseable/q<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/util/g;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 3
    invoke-interface {p3}, Lio/reactivex/rxjava3/internal/fuseable/q;->clear()V

    .line 4
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->h()V

    .line 5
    invoke-virtual {p0, p2}, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->j(Lorg/reactivestreams/d;)V

    return-void
.end method

.method public request(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s1$a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/rxjava3/internal/util/b;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_0
    return-void
.end method
