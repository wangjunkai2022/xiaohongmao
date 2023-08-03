.class public final Lio/reactivex/rxjava3/internal/operators/observable/v2;
.super Lio/reactivex/rxjava3/observables/a;
.source "ObservableReplay.java"

# interfaces
.implements Lio/reactivex/rxjava3/internal/fuseable/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/observable/v2$e;,
        Lio/reactivex/rxjava3/internal/operators/observable/v2$j;,
        Lio/reactivex/rxjava3/internal/operators/observable/v2$k;,
        Lio/reactivex/rxjava3/internal/operators/observable/v2$h;,
        Lio/reactivex/rxjava3/internal/operators/observable/v2$c;,
        Lio/reactivex/rxjava3/internal/operators/observable/v2$n;,
        Lio/reactivex/rxjava3/internal/operators/observable/v2$l;,
        Lio/reactivex/rxjava3/internal/operators/observable/v2$m;,
        Lio/reactivex/rxjava3/internal/operators/observable/v2$a;,
        Lio/reactivex/rxjava3/internal/operators/observable/v2$f;,
        Lio/reactivex/rxjava3/internal/operators/observable/v2$o;,
        Lio/reactivex/rxjava3/internal/operators/observable/v2$g;,
        Lio/reactivex/rxjava3/internal/operators/observable/v2$d;,
        Lio/reactivex/rxjava3/internal/operators/observable/v2$i;,
        Lio/reactivex/rxjava3/internal/operators/observable/v2$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/observables/a<",
        "TT;>;",
        "Lio/reactivex/rxjava3/internal/fuseable/i<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final e:Lio/reactivex/rxjava3/internal/operators/observable/v2$b;


# instance fields
.field final a:Lio/reactivex/rxjava3/core/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/l0<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/rxjava3/internal/operators/observable/v2$i<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/rxjava3/internal/operators/observable/v2$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/operators/observable/v2$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field final d:Lio/reactivex/rxjava3/core/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/l0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/v2$n;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/operators/observable/v2$n;-><init>()V

    sput-object v0, Lio/reactivex/rxjava3/internal/operators/observable/v2;->e:Lio/reactivex/rxjava3/internal/operators/observable/v2$b;

    return-void
.end method

.method private constructor <init>(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/internal/operators/observable/v2$b;)V
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
            "Lio/reactivex/rxjava3/core/l0<",
            "TT;>;",
            "Lio/reactivex/rxjava3/core/l0<",
            "TT;>;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/rxjava3/internal/operators/observable/v2$i<",
            "TT;>;>;",
            "Lio/reactivex/rxjava3/internal/operators/observable/v2$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/observables/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/v2;->d:Lio/reactivex/rxjava3/core/l0;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/v2;->a:Lio/reactivex/rxjava3/core/l0;

    .line 4
    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/observable/v2;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/observable/v2;->c:Lio/reactivex/rxjava3/internal/operators/observable/v2$b;

    return-void
.end method

.method public static M8(Lio/reactivex/rxjava3/core/l0;IZ)Lio/reactivex/rxjava3/observables/a;
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
            "Lio/reactivex/rxjava3/core/l0<",
            "TT;>;IZ)",
            "Lio/reactivex/rxjava3/observables/a<",
            "TT;>;"
        }
    .end annotation

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 1
    invoke-static {p0}, Lio/reactivex/rxjava3/internal/operators/observable/v2;->Q8(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/observables/a;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/v2$h;

    invoke-direct {v0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/observable/v2$h;-><init>(IZ)V

    invoke-static {p0, v0}, Lio/reactivex/rxjava3/internal/operators/observable/v2;->P8(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/internal/operators/observable/v2$b;)Lio/reactivex/rxjava3/observables/a;

    move-result-object p0

    return-object p0
.end method

.method public static N8(Lio/reactivex/rxjava3/core/l0;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;IZ)Lio/reactivex/rxjava3/observables/a;
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
            "Lio/reactivex/rxjava3/core/l0<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            "IZ)",
            "Lio/reactivex/rxjava3/observables/a<",
            "TT;>;"
        }
    .end annotation

    new-instance v7, Lio/reactivex/rxjava3/internal/operators/observable/v2$k;

    move-object v0, v7

    move v1, p5

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lio/reactivex/rxjava3/internal/operators/observable/v2$k;-><init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)V

    invoke-static {p0, v7}, Lio/reactivex/rxjava3/internal/operators/observable/v2;->P8(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/internal/operators/observable/v2$b;)Lio/reactivex/rxjava3/observables/a;

    move-result-object p0

    return-object p0
.end method

.method public static O8(Lio/reactivex/rxjava3/core/l0;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)Lio/reactivex/rxjava3/observables/a;
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
            "Lio/reactivex/rxjava3/core/l0<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            "Z)",
            "Lio/reactivex/rxjava3/observables/a<",
            "TT;>;"
        }
    .end annotation

    const v5, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lio/reactivex/rxjava3/internal/operators/observable/v2;->N8(Lio/reactivex/rxjava3/core/l0;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;IZ)Lio/reactivex/rxjava3/observables/a;

    move-result-object p0

    return-object p0
.end method

.method static P8(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/internal/operators/observable/v2$b;)Lio/reactivex/rxjava3/observables/a;
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
            "Lio/reactivex/rxjava3/core/l0<",
            "TT;>;",
            "Lio/reactivex/rxjava3/internal/operators/observable/v2$b<",
            "TT;>;)",
            "Lio/reactivex/rxjava3/observables/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/observable/v2$j;

    invoke-direct {v1, v0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/v2$j;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/internal/operators/observable/v2$b;)V

    .line 3
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/observable/v2;

    invoke-direct {v2, v1, p0, v0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/v2;-><init>(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/l0;Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/internal/operators/observable/v2$b;)V

    invoke-static {v2}, Lio/reactivex/rxjava3/plugins/a;->U(Lio/reactivex/rxjava3/observables/a;)Lio/reactivex/rxjava3/observables/a;

    move-result-object p0

    return-object p0
.end method

.method public static Q8(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/observables/a;
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/observables/a<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lio/reactivex/rxjava3/internal/operators/observable/v2;->e:Lio/reactivex/rxjava3/internal/operators/observable/v2$b;

    invoke-static {p0, v0}, Lio/reactivex/rxjava3/internal/operators/observable/v2;->P8(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/internal/operators/observable/v2$b;)Lio/reactivex/rxjava3/observables/a;

    move-result-object p0

    return-object p0
.end method

.method public static R8(Lq7/s;Lq7/o;)Lio/reactivex/rxjava3/core/g0;
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
            "Lio/reactivex/rxjava3/observables/a<",
            "TU;>;>;",
            "Lq7/o<",
            "-",
            "Lio/reactivex/rxjava3/core/g0<",
            "TU;>;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "TR;>;>;)",
            "Lio/reactivex/rxjava3/core/g0<",
            "TR;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/v2$e;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/v2$e;-><init>(Lq7/s;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public E8(Lq7/g;)V
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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/v2;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/internal/operators/observable/v2$i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/observable/v2$i;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    :cond_0
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/v2;->c:Lio/reactivex/rxjava3/internal/operators/observable/v2$b;

    invoke-interface {v1}, Lio/reactivex/rxjava3/internal/operators/observable/v2$b;->call()Lio/reactivex/rxjava3/internal/operators/observable/v2$g;

    move-result-object v1

    .line 4
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/observable/v2$i;

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/v2;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2, v1, v3}, Lio/reactivex/rxjava3/internal/operators/observable/v2$i;-><init>(Lio/reactivex/rxjava3/internal/operators/observable/v2$g;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 5
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/v2;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 6
    :cond_2
    iget-object v1, v0, Lio/reactivex/rxjava3/internal/operators/observable/v2$i;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-object v1, v0, Lio/reactivex/rxjava3/internal/operators/observable/v2$i;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 7
    :goto_1
    :try_start_0
    invoke-interface {p1, v0}, Lq7/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    .line 8
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/v2;->a:Lio/reactivex/rxjava3/core/l0;

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/l0;->a(Lio/reactivex/rxjava3/core/n0;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 9
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    if-eqz v1, :cond_5

    .line 10
    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/observable/v2$i;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 11
    :cond_5
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 12
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/util/g;->i(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public L8()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/v2;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/internal/operators/observable/v2$i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/observable/v2$i;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/v2;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected d6(Lio/reactivex/rxjava3/core/n0;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/n0<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/v2;->d:Lio/reactivex/rxjava3/core/l0;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/l0;->a(Lio/reactivex/rxjava3/core/n0;)V

    return-void
.end method

.method public source()Lio/reactivex/rxjava3/core/l0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/l0<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/v2;->a:Lio/reactivex/rxjava3/core/l0;

    return-object v0
.end method
