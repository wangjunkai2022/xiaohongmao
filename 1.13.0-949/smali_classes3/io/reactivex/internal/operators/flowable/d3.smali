.class public final Lio/reactivex/internal/operators/flowable/d3;
.super Lio/reactivex/flowables/a;
.source "FlowableReplay.java"

# interfaces
.implements Lo7/h;
.implements Lio/reactivex/internal/disposables/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/d3$c;,
        Lio/reactivex/internal/operators/flowable/d3$i;,
        Lio/reactivex/internal/operators/flowable/d3$k;,
        Lio/reactivex/internal/operators/flowable/d3$h;,
        Lio/reactivex/internal/operators/flowable/d3$b;,
        Lio/reactivex/internal/operators/flowable/d3$e;,
        Lio/reactivex/internal/operators/flowable/d3$l;,
        Lio/reactivex/internal/operators/flowable/d3$m;,
        Lio/reactivex/internal/operators/flowable/d3$a;,
        Lio/reactivex/internal/operators/flowable/d3$f;,
        Lio/reactivex/internal/operators/flowable/d3$n;,
        Lio/reactivex/internal/operators/flowable/d3$g;,
        Lio/reactivex/internal/operators/flowable/d3$d;,
        Lio/reactivex/internal/operators/flowable/d3$j;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/flowables/a<",
        "TT;>;",
        "Lo7/h<",
        "TT;>;",
        "Lio/reactivex/internal/disposables/c;"
    }
.end annotation


# static fields
.field static final f:Ljava/util/concurrent/Callable;


# instance fields
.field final b:Lio/reactivex/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/flowable/d3$j<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/internal/operators/flowable/d3$g<",
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

    new-instance v0, Lio/reactivex/internal/operators/flowable/d3$c;

    invoke-direct {v0}, Lio/reactivex/internal/operators/flowable/d3$c;-><init>()V

    sput-object v0, Lio/reactivex/internal/operators/flowable/d3;->f:Ljava/util/concurrent/Callable;

    return-void
.end method

.method private constructor <init>(Lorg/reactivestreams/c;Lio/reactivex/j;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/c<",
            "TT;>;",
            "Lio/reactivex/j<",
            "TT;>;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/flowable/d3$j<",
            "TT;>;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/internal/operators/flowable/d3$g<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/flowables/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/d3;->e:Lorg/reactivestreams/c;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/d3;->b:Lio/reactivex/j;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/d3;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/d3;->d:Ljava/util/concurrent/Callable;

    return-void
.end method

.method public static Y8(Lio/reactivex/j;I)Lio/reactivex/flowables/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/j<",
            "TT;>;I)",
            "Lio/reactivex/flowables/a<",
            "TT;>;"
        }
    .end annotation

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 1
    invoke-static {p0}, Lio/reactivex/internal/operators/flowable/d3;->c9(Lio/reactivex/j;)Lio/reactivex/flowables/a;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/flowable/d3$h;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/flowable/d3$h;-><init>(I)V

    invoke-static {p0, v0}, Lio/reactivex/internal/operators/flowable/d3;->b9(Lio/reactivex/j;Ljava/util/concurrent/Callable;)Lio/reactivex/flowables/a;

    move-result-object p0

    return-object p0
.end method

.method public static Z8(Lio/reactivex/j;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/flowables/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/j<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/flowables/a<",
            "TT;>;"
        }
    .end annotation

    const v5, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lio/reactivex/internal/operators/flowable/d3;->a9(Lio/reactivex/j;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;I)Lio/reactivex/flowables/a;

    move-result-object p0

    return-object p0
.end method

.method public static a9(Lio/reactivex/j;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;I)Lio/reactivex/flowables/a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/j<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            "I)",
            "Lio/reactivex/flowables/a<",
            "TT;>;"
        }
    .end annotation

    new-instance v6, Lio/reactivex/internal/operators/flowable/d3$k;

    move-object v0, v6

    move v1, p5

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/flowable/d3$k;-><init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)V

    invoke-static {p0, v6}, Lio/reactivex/internal/operators/flowable/d3;->b9(Lio/reactivex/j;Ljava/util/concurrent/Callable;)Lio/reactivex/flowables/a;

    move-result-object p0

    return-object p0
.end method

.method static b9(Lio/reactivex/j;Ljava/util/concurrent/Callable;)Lio/reactivex/flowables/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/internal/operators/flowable/d3$g<",
            "TT;>;>;)",
            "Lio/reactivex/flowables/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    new-instance v1, Lio/reactivex/internal/operators/flowable/d3$i;

    invoke-direct {v1, v0, p1}, Lio/reactivex/internal/operators/flowable/d3$i;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Callable;)V

    .line 3
    new-instance v2, Lio/reactivex/internal/operators/flowable/d3;

    invoke-direct {v2, v1, p0, v0, p1}, Lio/reactivex/internal/operators/flowable/d3;-><init>(Lorg/reactivestreams/c;Lio/reactivex/j;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Callable;)V

    invoke-static {v2}, Lio/reactivex/plugins/a;->T(Lio/reactivex/flowables/a;)Lio/reactivex/flowables/a;

    move-result-object p0

    return-object p0
.end method

.method public static c9(Lio/reactivex/j;)Lio/reactivex/flowables/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/j<",
            "+TT;>;)",
            "Lio/reactivex/flowables/a<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lio/reactivex/internal/operators/flowable/d3;->f:Ljava/util/concurrent/Callable;

    invoke-static {p0, v0}, Lio/reactivex/internal/operators/flowable/d3;->b9(Lio/reactivex/j;Ljava/util/concurrent/Callable;)Lio/reactivex/flowables/a;

    move-result-object p0

    return-object p0
.end method

.method public static d9(Ljava/util/concurrent/Callable;Ln7/o;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/flowables/a<",
            "TU;>;>;",
            "Ln7/o<",
            "-",
            "Lio/reactivex/j<",
            "TU;>;+",
            "Lorg/reactivestreams/c<",
            "TR;>;>;)",
            "Lio/reactivex/j<",
            "TR;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/flowable/d3$e;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/d3$e;-><init>(Ljava/util/concurrent/Callable;Ln7/o;)V

    return-object v0
.end method

.method public static e9(Lio/reactivex/flowables/a;Lio/reactivex/h0;)Lio/reactivex/flowables/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/flowables/a<",
            "TT;>;",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/flowables/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/reactivex/j;->l4(Lio/reactivex/h0;)Lio/reactivex/j;

    move-result-object p1

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/d3$b;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/d3$b;-><init>(Lio/reactivex/flowables/a;Lio/reactivex/j;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->T(Lio/reactivex/flowables/a;)Lio/reactivex/flowables/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public Q8(Ln7/g;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln7/g<",
            "-",
            "Lio/reactivex/disposables/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/d3;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/flowable/d3$j;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/d3$j;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/d3;->d:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/internal/operators/flowable/d3$g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    new-instance v2, Lio/reactivex/internal/operators/flowable/d3$j;

    invoke-direct {v2, v1}, Lio/reactivex/internal/operators/flowable/d3$j;-><init>(Lio/reactivex/internal/operators/flowable/d3$g;)V

    .line 5
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/d3;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 6
    :cond_2
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/d3$j;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/d3$j;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    invoke-interface {p1, v0}, Ln7/g;->accept(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    .line 8
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/d3;->b:Lio/reactivex/j;

    invoke-virtual {p1, v0}, Lio/reactivex/j;->j6(Lio/reactivex/o;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_5

    .line 9
    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/d3$j;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 10
    :cond_5
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 11
    invoke-static {p1}, Lio/reactivex/internal/util/g;->f(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :catchall_1
    move-exception p1

    .line 12
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 13
    invoke-static {p1}, Lio/reactivex/internal/util/g;->f(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public c(Lio/reactivex/disposables/c;)V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/d3;->c:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p1, Lio/reactivex/internal/operators/flowable/d3$j;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method protected k6(Lorg/reactivestreams/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/d3;->e:Lorg/reactivestreams/c;

    invoke-interface {v0, p1}, Lorg/reactivestreams/c;->i(Lorg/reactivestreams/d;)V

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

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/d3;->b:Lio/reactivex/j;

    return-object v0
.end method
