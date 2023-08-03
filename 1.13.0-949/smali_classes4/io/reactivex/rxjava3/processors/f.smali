.class public final Lio/reactivex/rxjava3/processors/f;
.super Lio/reactivex/rxjava3/processors/c;
.source "ReplayProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/processors/f$d;,
        Lio/reactivex/rxjava3/processors/f$e;,
        Lio/reactivex/rxjava3/processors/f$f;,
        Lio/reactivex/rxjava3/processors/f$a;,
        Lio/reactivex/rxjava3/processors/f$g;,
        Lio/reactivex/rxjava3/processors/f$c;,
        Lio/reactivex/rxjava3/processors/f$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/processors/c<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final e:[Ljava/lang/Object;

.field static final f:[Lio/reactivex/rxjava3/processors/f$c;

.field static final g:[Lio/reactivex/rxjava3/processors/f$c;


# instance fields
.field final b:Lio/reactivex/rxjava3/processors/f$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/processors/f$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field c:Z

.field final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/rxjava3/processors/f$c<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    sput-object v1, Lio/reactivex/rxjava3/processors/f;->e:[Ljava/lang/Object;

    new-array v1, v0, [Lio/reactivex/rxjava3/processors/f$c;

    .line 2
    sput-object v1, Lio/reactivex/rxjava3/processors/f;->f:[Lio/reactivex/rxjava3/processors/f$c;

    new-array v0, v0, [Lio/reactivex/rxjava3/processors/f$c;

    .line 3
    sput-object v0, Lio/reactivex/rxjava3/processors/f;->g:[Lio/reactivex/rxjava3/processors/f$c;

    return-void
.end method

.method constructor <init>(Lio/reactivex/rxjava3/processors/f$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/processors/f$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/processors/c;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/processors/f;->b:Lio/reactivex/rxjava3/processors/f$b;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lio/reactivex/rxjava3/processors/f;->f:[Lio/reactivex/rxjava3/processors/f$c;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/rxjava3/processors/f;->d:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static n9()Lio/reactivex/rxjava3/processors/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/rxjava3/processors/f<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/processors/f;

    new-instance v1, Lio/reactivex/rxjava3/processors/f$g;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lio/reactivex/rxjava3/processors/f$g;-><init>(I)V

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/processors/f;-><init>(Lio/reactivex/rxjava3/processors/f$b;)V

    return-object v0
.end method

.method public static o9(I)Lio/reactivex/rxjava3/processors/f;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacityHint"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lio/reactivex/rxjava3/processors/f<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    const-string v0, "capacityHint"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/processors/f;

    new-instance v1, Lio/reactivex/rxjava3/processors/f$g;

    invoke-direct {v1, p0}, Lio/reactivex/rxjava3/processors/f$g;-><init>(I)V

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/processors/f;-><init>(Lio/reactivex/rxjava3/processors/f$b;)V

    return-object v0
.end method

.method static p9()Lio/reactivex/rxjava3/processors/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/rxjava3/processors/f<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/processors/f;

    new-instance v1, Lio/reactivex/rxjava3/processors/f$e;

    const v2, 0x7fffffff

    invoke-direct {v1, v2}, Lio/reactivex/rxjava3/processors/f$e;-><init>(I)V

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/processors/f;-><init>(Lio/reactivex/rxjava3/processors/f$b;)V

    return-object v0
.end method

.method public static q9(I)Lio/reactivex/rxjava3/processors/f;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lio/reactivex/rxjava3/processors/f<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    const-string v0, "maxSize"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/processors/f;

    new-instance v1, Lio/reactivex/rxjava3/processors/f$e;

    invoke-direct {v1, p0}, Lio/reactivex/rxjava3/processors/f$e;-><init>(I)V

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/processors/f;-><init>(Lio/reactivex/rxjava3/processors/f$b;)V

    return-object v0
.end method

.method public static r9(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/processors/f;
    .locals 8
    .param p2    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/rxjava3/core/o0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "maxAge",
            "unit",
            "scheduler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            ")",
            "Lio/reactivex/rxjava3/processors/f<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    const-string v0, "maxAge"

    .line 1
    invoke-static {p0, p1, v0}, Lio/reactivex/rxjava3/internal/functions/b;->c(JLjava/lang/String;)J

    const-string v0, "unit is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 3
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/rxjava3/processors/f;

    new-instance v7, Lio/reactivex/rxjava3/processors/f$d;

    const v2, 0x7fffffff

    move-object v1, v7

    move-wide v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lio/reactivex/rxjava3/processors/f$d;-><init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)V

    invoke-direct {v0, v7}, Lio/reactivex/rxjava3/processors/f;-><init>(Lio/reactivex/rxjava3/processors/f$b;)V

    return-object v0
.end method

.method public static s9(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;I)Lio/reactivex/rxjava3/processors/f;
    .locals 8
    .param p2    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/rxjava3/core/o0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "maxAge",
            "unit",
            "scheduler",
            "maxSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            "I)",
            "Lio/reactivex/rxjava3/processors/f<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    const-string v0, "maxSize"

    .line 1
    invoke-static {p4, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    const-string v0, "maxAge"

    .line 2
    invoke-static {p0, p1, v0}, Lio/reactivex/rxjava3/internal/functions/b;->c(JLjava/lang/String;)J

    const-string v0, "unit is null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 4
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lio/reactivex/rxjava3/processors/f;

    new-instance v7, Lio/reactivex/rxjava3/processors/f$d;

    move-object v1, v7

    move v2, p4

    move-wide v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lio/reactivex/rxjava3/processors/f$d;-><init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)V

    invoke-direct {v0, v7}, Lio/reactivex/rxjava3/processors/f;-><init>(Lio/reactivex/rxjava3/processors/f$b;)V

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

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/processors/f$c;

    invoke-direct {v0, p1, p0}, Lio/reactivex/rxjava3/processors/f$c;-><init>(Lorg/reactivestreams/d;Lio/reactivex/rxjava3/processors/f;)V

    .line 2
    invoke-interface {p1, v0}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 3
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/processors/f;->l9(Lio/reactivex/rxjava3/processors/f$c;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-boolean p1, v0, Lio/reactivex/rxjava3/processors/f$c;->e:Z

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/processors/f;->x9(Lio/reactivex/rxjava3/processors/f$c;)V

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lio/reactivex/rxjava3/processors/f;->b:Lio/reactivex/rxjava3/processors/f$b;

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/processors/f$b;->f(Lio/reactivex/rxjava3/processors/f$c;)V

    return-void
.end method

.method public g9()Ljava/lang/Throwable;
    .locals 2
    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/f;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/processors/f;->b:Lio/reactivex/rxjava3/processors/f$b;

    .line 2
    invoke-interface {v0}, Lio/reactivex/rxjava3/processors/f$b;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Lio/reactivex/rxjava3/processors/f$b;->e()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public h9()Z
    .locals 2
    .annotation runtime Lp7/c;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/processors/f;->b:Lio/reactivex/rxjava3/processors/f$b;

    .line 2
    invoke-interface {v0}, Lio/reactivex/rxjava3/processors/f$b;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lio/reactivex/rxjava3/processors/f$b;->e()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i9()Z
    .locals 1
    .annotation runtime Lp7/c;
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/processors/f;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/processors/f$c;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j9()Z
    .locals 2
    .annotation runtime Lp7/c;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/processors/f;->b:Lio/reactivex/rxjava3/processors/f$b;

    .line 2
    invoke-interface {v0}, Lio/reactivex/rxjava3/processors/f$b;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lio/reactivex/rxjava3/processors/f$b;->e()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method l9(Lio/reactivex/rxjava3/processors/f$c;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/processors/f$c<",
            "TT;>;)Z"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/processors/f;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/processors/f$c;

    .line 2
    sget-object v1, Lio/reactivex/rxjava3/processors/f;->g:[Lio/reactivex/rxjava3/processors/f$c;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    .line 3
    :cond_1
    array-length v1, v0

    add-int/lit8 v3, v1, 0x1

    .line 4
    new-array v3, v3, [Lio/reactivex/rxjava3/processors/f$c;

    .line 5
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    aput-object p1, v3, v1

    .line 7
    iget-object v1, p0, Lio/reactivex/rxjava3/processors/f;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method public m9()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/processors/f;->b:Lio/reactivex/rxjava3/processors/f$b;

    invoke-interface {v0}, Lio/reactivex/rxjava3/processors/f$b;->c()V

    return-void
.end method

.method public onComplete()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/f;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/rxjava3/processors/f;->c:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/processors/f;->b:Lio/reactivex/rxjava3/processors/f$b;

    .line 4
    invoke-interface {v0}, Lio/reactivex/rxjava3/processors/f$b;->complete()V

    .line 5
    iget-object v1, p0, Lio/reactivex/rxjava3/processors/f;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/reactivex/rxjava3/processors/f;->g:[Lio/reactivex/rxjava3/processors/f$c;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/reactivex/rxjava3/processors/f$c;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 6
    invoke-interface {v0, v4}, Lio/reactivex/rxjava3/processors/f$b;->f(Lio/reactivex/rxjava3/processors/f$c;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    const-string v0, "onError called with a null Throwable."

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/util/g;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/f;->c:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lio/reactivex/rxjava3/processors/f;->c:Z

    .line 5
    iget-object v0, p0, Lio/reactivex/rxjava3/processors/f;->b:Lio/reactivex/rxjava3/processors/f$b;

    .line 6
    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/processors/f$b;->a(Ljava/lang/Throwable;)V

    .line 7
    iget-object p1, p0, Lio/reactivex/rxjava3/processors/f;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/rxjava3/processors/f;->g:[Lio/reactivex/rxjava3/processors/f$c;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/reactivex/rxjava3/processors/f$c;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 8
    invoke-interface {v0, v3}, Lio/reactivex/rxjava3/processors/f$b;->f(Lio/reactivex/rxjava3/processors/f$c;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
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

    const-string v0, "onNext called with a null value."

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/util/g;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/f;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/processors/f;->b:Lio/reactivex/rxjava3/processors/f$b;

    .line 4
    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/processors/f$b;->b(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lio/reactivex/rxjava3/processors/f;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/reactivex/rxjava3/processors/f$c;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 6
    invoke-interface {v0, v3}, Lio/reactivex/rxjava3/processors/f$b;->f(Lio/reactivex/rxjava3/processors/f$c;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/f;->c:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lorg/reactivestreams/e;->cancel()V

    return-void

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    .line 3
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/e;->request(J)V

    return-void
.end method

.method public t9()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/processors/f;->b:Lio/reactivex/rxjava3/processors/f$b;

    invoke-interface {v0}, Lio/reactivex/rxjava3/processors/f$b;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public u9()[Ljava/lang/Object;
    .locals 2
    .annotation runtime Lp7/c;
    .end annotation

    .line 1
    sget-object v0, Lio/reactivex/rxjava3/processors/f;->e:[Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/processors/f;->v9([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public v9([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/processors/f;->b:Lio/reactivex/rxjava3/processors/f$b;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/processors/f$b;->d([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public w9()Z
    .locals 1
    .annotation runtime Lp7/c;
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/processors/f;->b:Lio/reactivex/rxjava3/processors/f$b;

    invoke-interface {v0}, Lio/reactivex/rxjava3/processors/f$b;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method x9(Lio/reactivex/rxjava3/processors/f$c;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/processors/f$c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/processors/f;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/processors/f$c;

    .line 2
    sget-object v1, Lio/reactivex/rxjava3/processors/f;->g:[Lio/reactivex/rxjava3/processors/f$c;

    if-eq v0, v1, :cond_6

    sget-object v1, Lio/reactivex/rxjava3/processors/f;->f:[Lio/reactivex/rxjava3/processors/f$c;

    if-ne v0, v1, :cond_1

    goto :goto_3

    .line 3
    :cond_1
    array-length v1, v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 4
    aget-object v5, v0, v4

    if-ne v5, p1, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-gez v2, :cond_4

    return-void

    :cond_4
    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    .line 5
    sget-object v1, Lio/reactivex/rxjava3/processors/f;->f:[Lio/reactivex/rxjava3/processors/f$c;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    .line 6
    new-array v5, v5, [Lio/reactivex/rxjava3/processors/f$c;

    .line 7
    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    .line 8
    invoke-static {v0, v3, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    .line 9
    :goto_2
    iget-object v2, p0, Lio/reactivex/rxjava3/processors/f;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    :goto_3
    return-void
.end method

.method y9()I
    .locals 1
    .annotation runtime Lp7/c;
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/processors/f;->b:Lio/reactivex/rxjava3/processors/f$b;

    invoke-interface {v0}, Lio/reactivex/rxjava3/processors/f$b;->size()I

    move-result v0

    return v0
.end method

.method z9()I
    .locals 1
    .annotation runtime Lp7/c;
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/processors/f;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/processors/f$c;

    array-length v0, v0

    return v0
.end method
