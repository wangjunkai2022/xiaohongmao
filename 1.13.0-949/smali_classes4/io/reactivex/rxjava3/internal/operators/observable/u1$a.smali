.class final Lio/reactivex/rxjava3/internal/operators/observable/u1$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableJoin.java"

# interfaces
.implements Lio/reactivex/rxjava3/disposables/f;
.implements Lio/reactivex/rxjava3/internal/operators/observable/n1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/observable/u1;
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
        "Lio/reactivex/rxjava3/disposables/f;",
        "Lio/reactivex/rxjava3/internal/operators/observable/n1$b;"
    }
.end annotation


# static fields
.field private static final n:J = -0x54414b546f40e739L

.field static final o:Ljava/lang/Integer;

.field static final p:Ljava/lang/Integer;

.field static final q:Ljava/lang/Integer;

.field static final r:Ljava/lang/Integer;


# instance fields
.field final a:Lio/reactivex/rxjava3/core/n0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/n0<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/rxjava3/internal/queue/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/queue/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/rxjava3/disposables/c;

.field final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "TT",
            "Left;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "TTRight;>;"
        }
    .end annotation
.end field

.field final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final g:Lq7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/o<",
            "-TT",
            "Left;",
            "+",
            "Lio/reactivex/rxjava3/core/l0<",
            "TT",
            "LeftEnd;",
            ">;>;"
        }
    .end annotation
.end field

.field final h:Lq7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/o<",
            "-TTRight;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "TTRightEnd;>;>;"
        }
    .end annotation
.end field

.field final i:Lq7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/c<",
            "-TT",
            "Left;",
            "-TTRight;+TR;>;"
        }
    .end annotation
.end field

.field final j:Ljava/util/concurrent/atomic/AtomicInteger;

.field k:I

.field l:I

.field volatile m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->o:Ljava/lang/Integer;

    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->p:Ljava/lang/Integer;

    const/4 v0, 0x3

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->q:Ljava/lang/Integer;

    const/4 v0, 0x4

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->r:Ljava/lang/Integer;

    return-void
.end method

.method constructor <init>(Lio/reactivex/rxjava3/core/n0;Lq7/o;Lq7/o;Lq7/c;)V
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
            "Lio/reactivex/rxjava3/core/n0<",
            "-TR;>;",
            "Lq7/o<",
            "-TT",
            "Left;",
            "+",
            "Lio/reactivex/rxjava3/core/l0<",
            "TT",
            "LeftEnd;",
            ">;>;",
            "Lq7/o<",
            "-TTRight;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "TTRightEnd;>;>;",
            "Lq7/c<",
            "-TT",
            "Left;",
            "-TTRight;+TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->a:Lio/reactivex/rxjava3/core/n0;

    .line 3
    new-instance p1, Lio/reactivex/rxjava3/disposables/c;

    invoke-direct {p1}, Lio/reactivex/rxjava3/disposables/c;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->c:Lio/reactivex/rxjava3/disposables/c;

    .line 4
    new-instance p1, Lio/reactivex/rxjava3/internal/queue/b;

    invoke-static {}, Lio/reactivex/rxjava3/core/g0;->R()I

    move-result v0

    invoke-direct {p1, v0}, Lio/reactivex/rxjava3/internal/queue/b;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->b:Lio/reactivex/rxjava3/internal/queue/b;

    .line 5
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->d:Ljava/util/Map;

    .line 6
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->e:Ljava/util/Map;

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->g:Lq7/o;

    .line 9
    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->h:Lq7/o;

    .line 10
    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->i:Lq7/c;

    .line 11
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/util/g;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 3
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->i()V

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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->b:Lio/reactivex/rxjava3/internal/queue/b;

    if-eqz p1, :cond_0

    sget-object p1, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->o:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    sget-object p1, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->p:Ljava/lang/Integer;

    :goto_0
    invoke-virtual {v0, p1, p2}, Lio/reactivex/rxjava3/internal/queue/b;->offer(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->i()V

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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/util/g;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->i()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public d(Lio/reactivex/rxjava3/internal/operators/observable/n1$d;)V
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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->c:Lio/reactivex/rxjava3/disposables/c;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/c;->c(Lio/reactivex/rxjava3/disposables/f;)Z

    .line 2
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 3
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->i()V

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->m:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->h()V

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->b:Lio/reactivex/rxjava3/internal/queue/b;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/queue/b;->clear()V

    :cond_0
    return-void
.end method

.method public e(ZLio/reactivex/rxjava3/internal/operators/observable/n1$c;)V
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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->b:Lio/reactivex/rxjava3/internal/queue/b;

    if-eqz p1, :cond_0

    sget-object p1, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->q:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    sget-object p1, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->r:Ljava/lang/Integer;

    :goto_0
    invoke-virtual {v0, p1, p2}, Lio/reactivex/rxjava3/internal/queue/b;->offer(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->i()V

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

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->c:Lio/reactivex/rxjava3/disposables/c;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    return-void
.end method

.method i()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->b:Lio/reactivex/rxjava3/internal/queue/b;

    .line 3
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->a:Lio/reactivex/rxjava3/core/n0;

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 4
    :cond_1
    :goto_0
    iget-boolean v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->m:Z

    if-eqz v4, :cond_2

    .line 5
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/queue/b;->clear()V

    return-void

    .line 6
    :cond_2
    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    if-eqz v4, :cond_3

    .line 7
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/queue/b;->clear()V

    .line 8
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->h()V

    .line 9
    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->j(Lio/reactivex/rxjava3/core/n0;)V

    return-void

    .line 10
    :cond_3
    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

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
    if-eqz v4, :cond_6

    if-eqz v7, :cond_6

    .line 12
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 13
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 14
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->c:Lio/reactivex/rxjava3/disposables/c;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 15
    invoke-interface {v1}, Lio/reactivex/rxjava3/core/n0;->onComplete()V

    return-void

    :cond_6
    if-eqz v7, :cond_7

    neg-int v3, v3

    .line 16
    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_1

    return-void

    .line 17
    :cond_7
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/queue/b;->poll()Ljava/lang/Object;

    move-result-object v4

    .line 18
    sget-object v7, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->o:Ljava/lang/Integer;

    const-string v8, "The resultSelector returned a null value"

    if-ne v6, v7, :cond_9

    .line 19
    iget v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->k:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->k:I

    .line 20
    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->d:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :try_start_0
    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->g:Lq7/o;

    invoke-interface {v6, v4}, Lq7/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "The leftEnd returned a null ObservableSource"

    invoke-static {v6, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v6, Lio/reactivex/rxjava3/core/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    new-instance v7, Lio/reactivex/rxjava3/internal/operators/observable/n1$c;

    invoke-direct {v7, p0, v2, v5}, Lio/reactivex/rxjava3/internal/operators/observable/n1$c;-><init>(Lio/reactivex/rxjava3/internal/operators/observable/n1$b;ZI)V

    .line 23
    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->c:Lio/reactivex/rxjava3/disposables/c;

    invoke-virtual {v5, v7}, Lio/reactivex/rxjava3/disposables/c;->b(Lio/reactivex/rxjava3/disposables/f;)Z

    .line 24
    invoke-interface {v6, v7}, Lio/reactivex/rxjava3/core/l0;->a(Lio/reactivex/rxjava3/core/n0;)V

    .line 25
    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_8

    .line 26
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/queue/b;->clear()V

    .line 27
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->h()V

    .line 28
    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->j(Lio/reactivex/rxjava3/core/n0;)V

    return-void

    .line 29
    :cond_8
    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->e:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 30
    :try_start_1
    iget-object v7, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->i:Lq7/c;

    invoke-interface {v7, v4, v6}, Lq7/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    invoke-interface {v1, v6}, Lio/reactivex/rxjava3/core/n0;->onNext(Ljava/lang/Object;)V

    goto :goto_3

    :catchall_0
    move-exception v2

    .line 32
    invoke-virtual {p0, v2, v1, v0}, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->k(Ljava/lang/Throwable;Lio/reactivex/rxjava3/core/n0;Lio/reactivex/rxjava3/internal/queue/b;)V

    return-void

    :catchall_1
    move-exception v2

    .line 33
    invoke-virtual {p0, v2, v1, v0}, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->k(Ljava/lang/Throwable;Lio/reactivex/rxjava3/core/n0;Lio/reactivex/rxjava3/internal/queue/b;)V

    return-void

    .line 34
    :cond_9
    sget-object v7, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->p:Ljava/lang/Integer;

    if-ne v6, v7, :cond_b

    .line 35
    iget v6, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->l:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->l:I

    .line 36
    iget-object v7, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->e:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :try_start_2
    iget-object v7, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->h:Lq7/o;

    invoke-interface {v7, v4}, Lq7/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v9, "The rightEnd returned a null ObservableSource"

    invoke-static {v7, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v7, Lio/reactivex/rxjava3/core/l0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 38
    new-instance v9, Lio/reactivex/rxjava3/internal/operators/observable/n1$c;

    invoke-direct {v9, p0, v5, v6}, Lio/reactivex/rxjava3/internal/operators/observable/n1$c;-><init>(Lio/reactivex/rxjava3/internal/operators/observable/n1$b;ZI)V

    .line 39
    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->c:Lio/reactivex/rxjava3/disposables/c;

    invoke-virtual {v5, v9}, Lio/reactivex/rxjava3/disposables/c;->b(Lio/reactivex/rxjava3/disposables/f;)Z

    .line 40
    invoke-interface {v7, v9}, Lio/reactivex/rxjava3/core/l0;->a(Lio/reactivex/rxjava3/core/n0;)V

    .line 41
    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_a

    .line 42
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/queue/b;->clear()V

    .line 43
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->h()V

    .line 44
    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->j(Lio/reactivex/rxjava3/core/n0;)V

    return-void

    .line 45
    :cond_a
    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->d:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 46
    :try_start_3
    iget-object v7, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->i:Lq7/c;

    invoke-interface {v7, v6, v4}, Lq7/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 47
    invoke-interface {v1, v6}, Lio/reactivex/rxjava3/core/n0;->onNext(Ljava/lang/Object;)V

    goto :goto_4

    :catchall_2
    move-exception v2

    .line 48
    invoke-virtual {p0, v2, v1, v0}, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->k(Ljava/lang/Throwable;Lio/reactivex/rxjava3/core/n0;Lio/reactivex/rxjava3/internal/queue/b;)V

    return-void

    :catchall_3
    move-exception v2

    .line 49
    invoke-virtual {p0, v2, v1, v0}, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->k(Ljava/lang/Throwable;Lio/reactivex/rxjava3/core/n0;Lio/reactivex/rxjava3/internal/queue/b;)V

    return-void

    .line 50
    :cond_b
    sget-object v5, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->q:Ljava/lang/Integer;

    if-ne v6, v5, :cond_c

    .line 51
    check-cast v4, Lio/reactivex/rxjava3/internal/operators/observable/n1$c;

    .line 52
    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->d:Ljava/util/Map;

    iget v6, v4, Lio/reactivex/rxjava3/internal/operators/observable/n1$c;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->c:Lio/reactivex/rxjava3/disposables/c;

    invoke-virtual {v5, v4}, Lio/reactivex/rxjava3/disposables/c;->a(Lio/reactivex/rxjava3/disposables/f;)Z

    goto/16 :goto_0

    .line 54
    :cond_c
    check-cast v4, Lio/reactivex/rxjava3/internal/operators/observable/n1$c;

    .line 55
    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->e:Ljava/util/Map;

    iget v6, v4, Lio/reactivex/rxjava3/internal/operators/observable/n1$c;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->c:Lio/reactivex/rxjava3/disposables/c;

    invoke-virtual {v5, v4}, Lio/reactivex/rxjava3/disposables/c;->a(Lio/reactivex/rxjava3/disposables/f;)Z

    goto/16 :goto_0
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->m:Z

    return v0
.end method

.method j(Lio/reactivex/rxjava3/core/n0;)V
    .locals 2
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
            "Lio/reactivex/rxjava3/core/n0<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/rxjava3/internal/util/g;->f(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 3
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 4
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/n0;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method k(Ljava/lang/Throwable;Lio/reactivex/rxjava3/core/n0;Lio/reactivex/rxjava3/internal/queue/b;)V
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
            "Lio/reactivex/rxjava3/core/n0<",
            "*>;",
            "Lio/reactivex/rxjava3/internal/queue/b<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/util/g;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 3
    invoke-virtual {p3}, Lio/reactivex/rxjava3/internal/queue/b;->clear()V

    .line 4
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->h()V

    .line 5
    invoke-virtual {p0, p2}, Lio/reactivex/rxjava3/internal/operators/observable/u1$a;->j(Lio/reactivex/rxjava3/core/n0;)V

    return-void
.end method
