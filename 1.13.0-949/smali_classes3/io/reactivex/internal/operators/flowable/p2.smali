.class public final Lio/reactivex/internal/operators/flowable/p2;
.super Lio/reactivex/flowables/a;
.source "FlowablePublish.java"

# interfaces
.implements Lo7/h;
.implements Lio/reactivex/internal/operators/flowable/r2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/p2$a;,
        Lio/reactivex/internal/operators/flowable/p2$b;,
        Lio/reactivex/internal/operators/flowable/p2$c;
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
        "Lio/reactivex/internal/operators/flowable/r2<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final f:J = -0x8000000000000000L


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
            "Lio/reactivex/internal/operators/flowable/p2$c<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final d:I

.field final e:Lorg/reactivestreams/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/reactivestreams/c;Lio/reactivex/j;Ljava/util/concurrent/atomic/AtomicReference;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/c<",
            "TT;>;",
            "Lio/reactivex/j<",
            "TT;>;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/flowable/p2$c<",
            "TT;>;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/flowables/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/p2;->e:Lorg/reactivestreams/c;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/p2;->b:Lio/reactivex/j;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/p2;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    iput p4, p0, Lio/reactivex/internal/operators/flowable/p2;->d:I

    return-void
.end method

.method public static Y8(Lio/reactivex/j;I)Lio/reactivex/flowables/a;
    .locals 3
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

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    new-instance v1, Lio/reactivex/internal/operators/flowable/p2$a;

    invoke-direct {v1, v0, p1}, Lio/reactivex/internal/operators/flowable/p2$a;-><init>(Ljava/util/concurrent/atomic/AtomicReference;I)V

    .line 3
    new-instance v2, Lio/reactivex/internal/operators/flowable/p2;

    invoke-direct {v2, v1, p0, v0, p1}, Lio/reactivex/internal/operators/flowable/p2;-><init>(Lorg/reactivestreams/c;Lio/reactivex/j;Ljava/util/concurrent/atomic/AtomicReference;I)V

    invoke-static {v2}, Lio/reactivex/plugins/a;->T(Lio/reactivex/flowables/a;)Lio/reactivex/flowables/a;

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
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/p2;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/flowable/p2$c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/p2$c;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    :cond_0
    new-instance v1, Lio/reactivex/internal/operators/flowable/p2$c;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/p2;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iget v3, p0, Lio/reactivex/internal/operators/flowable/p2;->d:I

    invoke-direct {v1, v2, v3}, Lio/reactivex/internal/operators/flowable/p2$c;-><init>(Ljava/util/concurrent/atomic/AtomicReference;I)V

    .line 4
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/p2;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 5
    :cond_2
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/p2$c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/p2$c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 6
    :goto_1
    :try_start_0
    invoke-interface {p1, v0}, Ln7/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_4

    .line 7
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/p2;->b:Lio/reactivex/j;

    invoke-virtual {p1, v0}, Lio/reactivex/j;->j6(Lio/reactivex/o;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 8
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 9
    invoke-static {p1}, Lio/reactivex/internal/util/g;->f(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public a()Lorg/reactivestreams/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/reactivestreams/c<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/p2;->b:Lio/reactivex/j;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lio/reactivex/internal/operators/flowable/p2;->d:I

    return v0
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

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/p2;->e:Lorg/reactivestreams/c;

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

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/p2;->b:Lio/reactivex/j;

    return-object v0
.end method
