.class public final Lio/reactivex/rxjava3/internal/operators/flowable/g3;
.super Lio/reactivex/rxjava3/flowables/a;
.source "FlowableReplay.java"

# interfaces
.implements Lio/reactivex/rxjava3/internal/fuseable/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/flowable/g3$b;,
        Lio/reactivex/rxjava3/internal/operators/flowable/g3$h;,
        Lio/reactivex/rxjava3/internal/operators/flowable/g3$j;,
        Lio/reactivex/rxjava3/internal/operators/flowable/g3$g;,
        Lio/reactivex/rxjava3/internal/operators/flowable/g3$d;,
        Lio/reactivex/rxjava3/internal/operators/flowable/g3$k;,
        Lio/reactivex/rxjava3/internal/operators/flowable/g3$l;,
        Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;,
        Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;,
        Lio/reactivex/rxjava3/internal/operators/flowable/g3$m;,
        Lio/reactivex/rxjava3/internal/operators/flowable/g3$f;,
        Lio/reactivex/rxjava3/internal/operators/flowable/g3$c;,
        Lio/reactivex/rxjava3/internal/operators/flowable/g3$i;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/flowables/a<",
        "TT;>;",
        "Lio/reactivex/rxjava3/internal/fuseable/j<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final f:Lq7/s;


# instance fields
.field final b:Lio/reactivex/rxjava3/core/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/rxjava3/internal/operators/flowable/g3$i<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final d:Lq7/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/s<",
            "+",
            "Lio/reactivex/rxjava3/internal/operators/flowable/g3$f<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final e:Lorg/reactivestreams/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$b;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$b;-><init>()V

    sput-object v0, Lio/reactivex/rxjava3/internal/operators/flowable/g3;->f:Lq7/s;

    return-void
.end method

.method private constructor <init>(Lorg/reactivestreams/c;Lio/reactivex/rxjava3/core/m;Ljava/util/concurrent/atomic/AtomicReference;Lq7/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10,
            0x10
        }
        names = {
            "onSubscribe",
            "source",
            "current",
            "bufferFactory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/c<",
            "TT;>;",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/rxjava3/internal/operators/flowable/g3$i<",
            "TT;>;>;",
            "Lq7/s<",
            "+",
            "Lio/reactivex/rxjava3/internal/operators/flowable/g3$f<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/flowables/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3;->e:Lorg/reactivestreams/c;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3;->b:Lio/reactivex/rxjava3/core/m;

    .line 4
    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3;->d:Lq7/s;

    return-void
.end method

.method public static s9(Lio/reactivex/rxjava3/core/m;IZ)Lio/reactivex/rxjava3/flowables/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x0
        }
        names = {
            "source",
            "bufferSize",
            "eagerTruncate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;IZ)",
            "Lio/reactivex/rxjava3/flowables/a<",
            "TT;>;"
        }
    .end annotation

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 1
    invoke-static {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/g3;->w9(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/flowables/a;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$g;

    invoke-direct {v0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$g;-><init>(IZ)V

    invoke-static {p0, v0}, Lio/reactivex/rxjava3/internal/operators/flowable/g3;->v9(Lio/reactivex/rxjava3/core/m;Lq7/s;)Lio/reactivex/rxjava3/flowables/a;

    move-result-object p0

    return-object p0
.end method

.method public static t9(Lio/reactivex/rxjava3/core/m;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;IZ)Lio/reactivex/rxjava3/flowables/a;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x10,
            0x10,
            0x0
        }
        names = {
            "source",
            "maxAge",
            "unit",
            "scheduler",
            "bufferSize",
            "eagerTruncate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            "IZ)",
            "Lio/reactivex/rxjava3/flowables/a<",
            "TT;>;"
        }
    .end annotation

    new-instance v7, Lio/reactivex/rxjava3/internal/operators/flowable/g3$j;

    move-object v0, v7

    move v1, p5

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$j;-><init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)V

    invoke-static {p0, v7}, Lio/reactivex/rxjava3/internal/operators/flowable/g3;->v9(Lio/reactivex/rxjava3/core/m;Lq7/s;)Lio/reactivex/rxjava3/flowables/a;

    move-result-object p0

    return-object p0
.end method

.method public static u9(Lio/reactivex/rxjava3/core/m;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)Lio/reactivex/rxjava3/flowables/a;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "maxAge",
            "unit",
            "scheduler",
            "eagerTruncate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            "Z)",
            "Lio/reactivex/rxjava3/flowables/a<",
            "TT;>;"
        }
    .end annotation

    const v5, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lio/reactivex/rxjava3/internal/operators/flowable/g3;->t9(Lio/reactivex/rxjava3/core/m;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;IZ)Lio/reactivex/rxjava3/flowables/a;

    move-result-object p0

    return-object p0
.end method

.method static v9(Lio/reactivex/rxjava3/core/m;Lq7/s;)Lio/reactivex/rxjava3/flowables/a;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "source",
            "bufferFactory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;",
            "Lq7/s<",
            "+",
            "Lio/reactivex/rxjava3/internal/operators/flowable/g3$f<",
            "TT;>;>;)",
            "Lio/reactivex/rxjava3/flowables/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/flowable/g3$h;

    invoke-direct {v1, v0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$h;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Lq7/s;)V

    .line 3
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/flowable/g3;

    invoke-direct {v2, v1, p0, v0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/g3;-><init>(Lorg/reactivestreams/c;Lio/reactivex/rxjava3/core/m;Ljava/util/concurrent/atomic/AtomicReference;Lq7/s;)V

    invoke-static {v2}, Lio/reactivex/rxjava3/plugins/a;->T(Lio/reactivex/rxjava3/flowables/a;)Lio/reactivex/rxjava3/flowables/a;

    move-result-object p0

    return-object p0
.end method

.method public static w9(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/flowables/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/m<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/flowables/a<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lio/reactivex/rxjava3/internal/operators/flowable/g3;->f:Lq7/s;

    invoke-static {p0, v0}, Lio/reactivex/rxjava3/internal/operators/flowable/g3;->v9(Lio/reactivex/rxjava3/core/m;Lq7/s;)Lio/reactivex/rxjava3/flowables/a;

    move-result-object p0

    return-object p0
.end method

.method public static x9(Lq7/s;Lq7/o;)Lio/reactivex/rxjava3/core/m;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "connectableFactory",
            "selector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/s<",
            "+",
            "Lio/reactivex/rxjava3/flowables/a<",
            "TU;>;>;",
            "Lq7/o<",
            "-",
            "Lio/reactivex/rxjava3/core/m<",
            "TU;>;+",
            "Lorg/reactivestreams/c<",
            "TR;>;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TR;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$d;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$d;-><init>(Lq7/s;Lq7/o;)V

    return-object v0
.end method


# virtual methods
.method protected H6(Lorg/reactivestreams/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3;->e:Lorg/reactivestreams/c;

    invoke-interface {v0, p1}, Lorg/reactivestreams/c;->i(Lorg/reactivestreams/d;)V

    return-void
.end method

.method public k9(Lq7/g;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "connection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/g<",
            "-",
            "Lio/reactivex/rxjava3/disposables/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$i;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3;->d:Lq7/s;

    invoke-interface {v1}, Lq7/s;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/rxjava3/internal/operators/flowable/g3$f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/flowable/g3$i;

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2, v1, v3}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$i;-><init>(Lio/reactivex/rxjava3/internal/operators/flowable/g3$f;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 5
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 6
    :cond_2
    iget-object v1, v0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$i;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-object v1, v0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$i;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 7
    :goto_1
    :try_start_1
    invoke-interface {p1, v0}, Lq7/g;->accept(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    .line 8
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3;->b:Lio/reactivex/rxjava3/core/m;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/m;->G6(Lio/reactivex/rxjava3/core/r;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 9
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    if-eqz v1, :cond_5

    .line 10
    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$i;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 11
    :cond_5
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 12
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/util/g;->i(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :catchall_1
    move-exception p1

    .line 13
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 14
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/util/g;->i(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public r9()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$i;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public source()Lorg/reactivestreams/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/reactivestreams/c<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3;->b:Lio/reactivex/rxjava3/core/m;

    return-object v0
.end method
