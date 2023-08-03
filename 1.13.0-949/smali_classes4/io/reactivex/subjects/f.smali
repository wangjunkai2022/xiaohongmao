.class public final Lio/reactivex/subjects/f;
.super Lio/reactivex/subjects/i;
.source "ReplaySubject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/subjects/f$d;,
        Lio/reactivex/subjects/f$e;,
        Lio/reactivex/subjects/f$f;,
        Lio/reactivex/subjects/f$a;,
        Lio/reactivex/subjects/f$g;,
        Lio/reactivex/subjects/f$c;,
        Lio/reactivex/subjects/f$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/subjects/i<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final d:[Lio/reactivex/subjects/f$c;

.field static final e:[Lio/reactivex/subjects/f$c;

.field private static final f:[Ljava/lang/Object;


# instance fields
.field final a:Lio/reactivex/subjects/f$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/f$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/subjects/f$c<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/subjects/f$c;

    .line 1
    sput-object v1, Lio/reactivex/subjects/f;->d:[Lio/reactivex/subjects/f$c;

    new-array v1, v0, [Lio/reactivex/subjects/f$c;

    .line 2
    sput-object v1, Lio/reactivex/subjects/f;->e:[Lio/reactivex/subjects/f$c;

    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    sput-object v0, Lio/reactivex/subjects/f;->f:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lio/reactivex/subjects/f$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/f$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/subjects/i;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/subjects/f;->a:Lio/reactivex/subjects/f$b;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lio/reactivex/subjects/f;->d:[Lio/reactivex/subjects/f$c;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/subjects/f;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static j()Lio/reactivex/subjects/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/subjects/f<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    new-instance v0, Lio/reactivex/subjects/f;

    new-instance v1, Lio/reactivex/subjects/f$g;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lio/reactivex/subjects/f$g;-><init>(I)V

    invoke-direct {v0, v1}, Lio/reactivex/subjects/f;-><init>(Lio/reactivex/subjects/f$b;)V

    return-object v0
.end method

.method public static k(I)Lio/reactivex/subjects/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lio/reactivex/subjects/f<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    new-instance v0, Lio/reactivex/subjects/f;

    new-instance v1, Lio/reactivex/subjects/f$g;

    invoke-direct {v1, p0}, Lio/reactivex/subjects/f$g;-><init>(I)V

    invoke-direct {v0, v1}, Lio/reactivex/subjects/f;-><init>(Lio/reactivex/subjects/f$b;)V

    return-object v0
.end method

.method static l()Lio/reactivex/subjects/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/subjects/f<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/subjects/f;

    new-instance v1, Lio/reactivex/subjects/f$e;

    const v2, 0x7fffffff

    invoke-direct {v1, v2}, Lio/reactivex/subjects/f$e;-><init>(I)V

    invoke-direct {v0, v1}, Lio/reactivex/subjects/f;-><init>(Lio/reactivex/subjects/f$b;)V

    return-object v0
.end method

.method public static m(I)Lio/reactivex/subjects/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lio/reactivex/subjects/f<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    new-instance v0, Lio/reactivex/subjects/f;

    new-instance v1, Lio/reactivex/subjects/f$e;

    invoke-direct {v1, p0}, Lio/reactivex/subjects/f$e;-><init>(I)V

    invoke-direct {v0, v1}, Lio/reactivex/subjects/f;-><init>(Lio/reactivex/subjects/f$b;)V

    return-object v0
.end method

.method public static n(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/subjects/f;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/subjects/f<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    new-instance v0, Lio/reactivex/subjects/f;

    new-instance v7, Lio/reactivex/subjects/f$d;

    const v2, 0x7fffffff

    move-object v1, v7

    move-wide v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lio/reactivex/subjects/f$d;-><init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)V

    invoke-direct {v0, v7}, Lio/reactivex/subjects/f;-><init>(Lio/reactivex/subjects/f$b;)V

    return-object v0
.end method

.method public static o(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;I)Lio/reactivex/subjects/f;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            "I)",
            "Lio/reactivex/subjects/f<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    new-instance v0, Lio/reactivex/subjects/f;

    new-instance v7, Lio/reactivex/subjects/f$d;

    move-object v1, v7

    move v2, p4

    move-wide v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lio/reactivex/subjects/f$d;-><init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)V

    invoke-direct {v0, v7}, Lio/reactivex/subjects/f;-><init>(Lio/reactivex/subjects/f$b;)V

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/Throwable;
    .locals 2
    .annotation build Lm7/f;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/subjects/f;->a:Lio/reactivex/subjects/f$b;

    invoke-interface {v0}, Lio/reactivex/subjects/f$b;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/subjects/f;->a:Lio/reactivex/subjects/f$b;

    invoke-interface {v0}, Lio/reactivex/subjects/f$b;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/subjects/f;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/f$c;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/subjects/f;->a:Lio/reactivex/subjects/f$b;

    invoke-interface {v0}, Lio/reactivex/subjects/f$b;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method h(Lio/reactivex/subjects/f$c;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/f$c<",
            "TT;>;)Z"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lio/reactivex/subjects/f;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/f$c;

    .line 2
    sget-object v1, Lio/reactivex/subjects/f;->e:[Lio/reactivex/subjects/f$c;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    .line 3
    :cond_1
    array-length v1, v0

    add-int/lit8 v3, v1, 0x1

    .line 4
    new-array v3, v3, [Lio/reactivex/subjects/f$c;

    .line 5
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    aput-object p1, v3, v1

    .line 7
    iget-object v1, p0, Lio/reactivex/subjects/f;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/subjects/f;->a:Lio/reactivex/subjects/f$b;

    invoke-interface {v0}, Lio/reactivex/subjects/f$b;->c()V

    return-void
.end method

.method public onComplete()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lio/reactivex/subjects/f;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/subjects/f;->c:Z

    .line 3
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lio/reactivex/subjects/f;->a:Lio/reactivex/subjects/f$b;

    .line 5
    invoke-interface {v1, v0}, Lio/reactivex/subjects/f$b;->a(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/f;->w(Ljava/lang/Object;)[Lio/reactivex/subjects/f$c;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 7
    invoke-interface {v1, v4}, Lio/reactivex/subjects/f$b;->b(Lio/reactivex/subjects/f$c;)V

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
    iget-boolean v0, p0, Lio/reactivex/subjects/f;->c:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lio/reactivex/subjects/f;->c:Z

    .line 5
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lio/reactivex/subjects/f;->a:Lio/reactivex/subjects/f$b;

    .line 7
    invoke-interface {v0, p1}, Lio/reactivex/subjects/f$b;->a(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0, p1}, Lio/reactivex/subjects/f;->w(Ljava/lang/Object;)[Lio/reactivex/subjects/f$c;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 9
    invoke-interface {v0, v3}, Lio/reactivex/subjects/f$b;->b(Lio/reactivex/subjects/f$c;)V

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
    iget-boolean v0, p0, Lio/reactivex/subjects/f;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/subjects/f;->a:Lio/reactivex/subjects/f$b;

    .line 4
    invoke-interface {v0, p1}, Lio/reactivex/subjects/f$b;->add(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lio/reactivex/subjects/f;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/reactivex/subjects/f$c;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 6
    invoke-interface {v0, v3}, Lio/reactivex/subjects/f$b;->b(Lio/reactivex/subjects/f$c;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/c;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/subjects/f;->c:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lio/reactivex/disposables/c;->dispose()V

    :cond_0
    return-void
.end method

.method public p()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lm7/f;
    .end annotation

    iget-object v0, p0, Lio/reactivex/subjects/f;->a:Lio/reactivex/subjects/f$b;

    invoke-interface {v0}, Lio/reactivex/subjects/f$b;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public q()[Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lio/reactivex/subjects/f;->f:[Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/f;->r([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public r([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/subjects/f;->a:Lio/reactivex/subjects/f$b;

    invoke-interface {v0, p1}, Lio/reactivex/subjects/f$b;->d([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public s()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/subjects/f;->a:Lio/reactivex/subjects/f$b;

    invoke-interface {v0}, Lio/reactivex/subjects/f$b;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected subscribeActual(Lio/reactivex/g0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/subjects/f$c;

    invoke-direct {v0, p1, p0}, Lio/reactivex/subjects/f$c;-><init>(Lio/reactivex/g0;Lio/reactivex/subjects/f;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/g0;->onSubscribe(Lio/reactivex/disposables/c;)V

    .line 3
    iget-boolean p1, v0, Lio/reactivex/subjects/f$c;->d:Z

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/f;->h(Lio/reactivex/subjects/f$c;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-boolean p1, v0, Lio/reactivex/subjects/f$c;->d:Z

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/f;->u(Lio/reactivex/subjects/f$c;)V

    return-void

    .line 7
    :cond_0
    iget-object p1, p0, Lio/reactivex/subjects/f;->a:Lio/reactivex/subjects/f$b;

    invoke-interface {p1, v0}, Lio/reactivex/subjects/f$b;->b(Lio/reactivex/subjects/f$c;)V

    :cond_1
    return-void
.end method

.method t()I
    .locals 1

    iget-object v0, p0, Lio/reactivex/subjects/f;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/f$c;

    array-length v0, v0

    return v0
.end method

.method u(Lio/reactivex/subjects/f$c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/f$c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lio/reactivex/subjects/f;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/f$c;

    .line 2
    sget-object v1, Lio/reactivex/subjects/f;->e:[Lio/reactivex/subjects/f$c;

    if-eq v0, v1, :cond_6

    sget-object v1, Lio/reactivex/subjects/f;->d:[Lio/reactivex/subjects/f$c;

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
    sget-object v1, Lio/reactivex/subjects/f;->d:[Lio/reactivex/subjects/f$c;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    .line 6
    new-array v5, v5, [Lio/reactivex/subjects/f$c;

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
    iget-object v2, p0, Lio/reactivex/subjects/f;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    :goto_3
    return-void
.end method

.method v()I
    .locals 1

    iget-object v0, p0, Lio/reactivex/subjects/f;->a:Lio/reactivex/subjects/f$b;

    invoke-interface {v0}, Lio/reactivex/subjects/f$b;->size()I

    move-result v0

    return v0
.end method

.method w(Ljava/lang/Object;)[Lio/reactivex/subjects/f$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")[",
            "Lio/reactivex/subjects/f$c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/subjects/f;->a:Lio/reactivex/subjects/f$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lio/reactivex/subjects/f$b;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lio/reactivex/subjects/f;->b:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lio/reactivex/subjects/f;->e:[Lio/reactivex/subjects/f$c;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/reactivex/subjects/f$c;

    return-object p1

    .line 3
    :cond_0
    sget-object p1, Lio/reactivex/subjects/f;->e:[Lio/reactivex/subjects/f$c;

    return-object p1
.end method
