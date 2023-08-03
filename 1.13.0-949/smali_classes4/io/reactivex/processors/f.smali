.class public final Lio/reactivex/processors/f;
.super Lio/reactivex/processors/c;
.source "ReplayProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/processors/f$d;,
        Lio/reactivex/processors/f$e;,
        Lio/reactivex/processors/f$f;,
        Lio/reactivex/processors/f$a;,
        Lio/reactivex/processors/f$g;,
        Lio/reactivex/processors/f$c;,
        Lio/reactivex/processors/f$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/processors/c<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final e:[Ljava/lang/Object;

.field static final f:[Lio/reactivex/processors/f$c;

.field static final g:[Lio/reactivex/processors/f$c;


# instance fields
.field final b:Lio/reactivex/processors/f$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/f$b<",
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
            "Lio/reactivex/processors/f$c<",
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
    sput-object v1, Lio/reactivex/processors/f;->e:[Ljava/lang/Object;

    new-array v1, v0, [Lio/reactivex/processors/f$c;

    .line 2
    sput-object v1, Lio/reactivex/processors/f;->f:[Lio/reactivex/processors/f$c;

    new-array v0, v0, [Lio/reactivex/processors/f$c;

    .line 3
    sput-object v0, Lio/reactivex/processors/f;->g:[Lio/reactivex/processors/f$c;

    return-void
.end method

.method constructor <init>(Lio/reactivex/processors/f$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/f$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/processors/c;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/processors/f;->b:Lio/reactivex/processors/f$b;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lio/reactivex/processors/f;->f:[Lio/reactivex/processors/f$c;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/processors/f;->d:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static T8()Lio/reactivex/processors/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/processors/f<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    new-instance v0, Lio/reactivex/processors/f;

    new-instance v1, Lio/reactivex/processors/f$g;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lio/reactivex/processors/f$g;-><init>(I)V

    invoke-direct {v0, v1}, Lio/reactivex/processors/f;-><init>(Lio/reactivex/processors/f$b;)V

    return-object v0
.end method

.method public static U8(I)Lio/reactivex/processors/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lio/reactivex/processors/f<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    new-instance v0, Lio/reactivex/processors/f;

    new-instance v1, Lio/reactivex/processors/f$g;

    invoke-direct {v1, p0}, Lio/reactivex/processors/f$g;-><init>(I)V

    invoke-direct {v0, v1}, Lio/reactivex/processors/f;-><init>(Lio/reactivex/processors/f$b;)V

    return-object v0
.end method

.method static V8()Lio/reactivex/processors/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/processors/f<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/processors/f;

    new-instance v1, Lio/reactivex/processors/f$e;

    const v2, 0x7fffffff

    invoke-direct {v1, v2}, Lio/reactivex/processors/f$e;-><init>(I)V

    invoke-direct {v0, v1}, Lio/reactivex/processors/f;-><init>(Lio/reactivex/processors/f$b;)V

    return-object v0
.end method

.method public static W8(I)Lio/reactivex/processors/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lio/reactivex/processors/f<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    new-instance v0, Lio/reactivex/processors/f;

    new-instance v1, Lio/reactivex/processors/f$e;

    invoke-direct {v1, p0}, Lio/reactivex/processors/f$e;-><init>(I)V

    invoke-direct {v0, v1}, Lio/reactivex/processors/f;-><init>(Lio/reactivex/processors/f$b;)V

    return-object v0
.end method

.method public static X8(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/processors/f;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/processors/f<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    new-instance v0, Lio/reactivex/processors/f;

    new-instance v7, Lio/reactivex/processors/f$d;

    const v2, 0x7fffffff

    move-object v1, v7

    move-wide v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lio/reactivex/processors/f$d;-><init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)V

    invoke-direct {v0, v7}, Lio/reactivex/processors/f;-><init>(Lio/reactivex/processors/f$b;)V

    return-object v0
.end method

.method public static Y8(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;I)Lio/reactivex/processors/f;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            "I)",
            "Lio/reactivex/processors/f<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    new-instance v0, Lio/reactivex/processors/f;

    new-instance v7, Lio/reactivex/processors/f$d;

    move-object v1, v7

    move v2, p4

    move-wide v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lio/reactivex/processors/f$d;-><init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)V

    invoke-direct {v0, v7}, Lio/reactivex/processors/f;-><init>(Lio/reactivex/processors/f$b;)V

    return-object v0
.end method


# virtual methods
.method public M8()Ljava/lang/Throwable;
    .locals 2
    .annotation build Lm7/f;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/processors/f;->b:Lio/reactivex/processors/f$b;

    .line 2
    invoke-interface {v0}, Lio/reactivex/processors/f$b;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Lio/reactivex/processors/f$b;->e()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public N8()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/processors/f;->b:Lio/reactivex/processors/f$b;

    .line 2
    invoke-interface {v0}, Lio/reactivex/processors/f$b;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lio/reactivex/processors/f$b;->e()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public O8()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/processors/f;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/f$c;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public P8()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/processors/f;->b:Lio/reactivex/processors/f$b;

    .line 2
    invoke-interface {v0}, Lio/reactivex/processors/f$b;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lio/reactivex/processors/f$b;->e()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method R8(Lio/reactivex/processors/f$c;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/f$c<",
            "TT;>;)Z"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/f;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/f$c;

    .line 2
    sget-object v1, Lio/reactivex/processors/f;->g:[Lio/reactivex/processors/f$c;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    .line 3
    :cond_1
    array-length v1, v0

    add-int/lit8 v3, v1, 0x1

    .line 4
    new-array v3, v3, [Lio/reactivex/processors/f$c;

    .line 5
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    aput-object p1, v3, v1

    .line 7
    iget-object v1, p0, Lio/reactivex/processors/f;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method public S8()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/processors/f;->b:Lio/reactivex/processors/f$b;

    invoke-interface {v0}, Lio/reactivex/processors/f$b;->c()V

    return-void
.end method

.method public Z8()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/processors/f;->b:Lio/reactivex/processors/f$b;

    invoke-interface {v0}, Lio/reactivex/processors/f$b;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a9()[Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lio/reactivex/processors/f;->e:[Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, v0}, Lio/reactivex/processors/f;->b9([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public b9([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/processors/f;->b:Lio/reactivex/processors/f$b;

    invoke-interface {v0, p1}, Lio/reactivex/processors/f$b;->d([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c9()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/processors/f;->b:Lio/reactivex/processors/f$b;

    invoke-interface {v0}, Lio/reactivex/processors/f$b;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method d9(Lio/reactivex/processors/f$c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/f$c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/f;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/f$c;

    .line 2
    sget-object v1, Lio/reactivex/processors/f;->g:[Lio/reactivex/processors/f$c;

    if-eq v0, v1, :cond_6

    sget-object v1, Lio/reactivex/processors/f;->f:[Lio/reactivex/processors/f$c;

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
    sget-object v1, Lio/reactivex/processors/f;->f:[Lio/reactivex/processors/f$c;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    .line 6
    new-array v5, v5, [Lio/reactivex/processors/f$c;

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
    iget-object v2, p0, Lio/reactivex/processors/f;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    :goto_3
    return-void
.end method

.method e9()I
    .locals 1

    iget-object v0, p0, Lio/reactivex/processors/f;->b:Lio/reactivex/processors/f$b;

    invoke-interface {v0}, Lio/reactivex/processors/f$b;->size()I

    move-result v0

    return v0
.end method

.method f9()I
    .locals 1

    iget-object v0, p0, Lio/reactivex/processors/f;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/f$c;

    array-length v0, v0

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

    .line 1
    new-instance v0, Lio/reactivex/processors/f$c;

    invoke-direct {v0, p1, p0}, Lio/reactivex/processors/f$c;-><init>(Lorg/reactivestreams/d;Lio/reactivex/processors/f;)V

    .line 2
    invoke-interface {p1, v0}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 3
    invoke-virtual {p0, v0}, Lio/reactivex/processors/f;->R8(Lio/reactivex/processors/f$c;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-boolean p1, v0, Lio/reactivex/processors/f$c;->e:Z

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Lio/reactivex/processors/f;->d9(Lio/reactivex/processors/f$c;)V

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lio/reactivex/processors/f;->b:Lio/reactivex/processors/f$b;

    invoke-interface {p1, v0}, Lio/reactivex/processors/f$b;->f(Lio/reactivex/processors/f$c;)V

    return-void
.end method

.method public onComplete()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lio/reactivex/processors/f;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/processors/f;->c:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/processors/f;->b:Lio/reactivex/processors/f$b;

    .line 4
    invoke-interface {v0}, Lio/reactivex/processors/f$b;->complete()V

    .line 5
    iget-object v1, p0, Lio/reactivex/processors/f;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/reactivex/processors/f;->g:[Lio/reactivex/processors/f$c;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/reactivex/processors/f$c;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 6
    invoke-interface {v0, v4}, Lio/reactivex/processors/f$b;->f(Lio/reactivex/processors/f$c;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p0, Lio/reactivex/processors/f;->c:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lio/reactivex/processors/f;->c:Z

    .line 5
    iget-object v0, p0, Lio/reactivex/processors/f;->b:Lio/reactivex/processors/f$b;

    .line 6
    invoke-interface {v0, p1}, Lio/reactivex/processors/f$b;->a(Ljava/lang/Throwable;)V

    .line 7
    iget-object p1, p0, Lio/reactivex/processors/f;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/processors/f;->g:[Lio/reactivex/processors/f$c;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/reactivex/processors/f$c;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 8
    invoke-interface {v0, v3}, Lio/reactivex/processors/f$b;->f(Lio/reactivex/processors/f$c;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p0, Lio/reactivex/processors/f;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/f;->b:Lio/reactivex/processors/f$b;

    .line 4
    invoke-interface {v0, p1}, Lio/reactivex/processors/f$b;->b(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lio/reactivex/processors/f;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/reactivex/processors/f$c;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 6
    invoke-interface {v0, v3}, Lio/reactivex/processors/f$b;->f(Lio/reactivex/processors/f$c;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/e;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/reactivex/processors/f;->c:Z

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
