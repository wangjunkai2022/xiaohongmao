.class public final Lio/reactivex/rxjava3/subjects/f;
.super Lio/reactivex/rxjava3/subjects/i;
.source "ReplaySubject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/subjects/f$d;,
        Lio/reactivex/rxjava3/subjects/f$e;,
        Lio/reactivex/rxjava3/subjects/f$f;,
        Lio/reactivex/rxjava3/subjects/f$a;,
        Lio/reactivex/rxjava3/subjects/f$g;,
        Lio/reactivex/rxjava3/subjects/f$c;,
        Lio/reactivex/rxjava3/subjects/f$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/subjects/i<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final d:[Lio/reactivex/rxjava3/subjects/f$c;

.field static final e:[Lio/reactivex/rxjava3/subjects/f$c;

.field private static final f:[Ljava/lang/Object;


# instance fields
.field final a:Lio/reactivex/rxjava3/subjects/f$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/f$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/rxjava3/subjects/f$c<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/rxjava3/subjects/f$c;

    .line 1
    sput-object v1, Lio/reactivex/rxjava3/subjects/f;->d:[Lio/reactivex/rxjava3/subjects/f$c;

    new-array v1, v0, [Lio/reactivex/rxjava3/subjects/f$c;

    .line 2
    sput-object v1, Lio/reactivex/rxjava3/subjects/f;->e:[Lio/reactivex/rxjava3/subjects/f$c;

    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    sput-object v0, Lio/reactivex/rxjava3/subjects/f;->f:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lio/reactivex/rxjava3/subjects/f$b;)V
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
            "Lio/reactivex/rxjava3/subjects/f$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/subjects/i;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/subjects/f;->a:Lio/reactivex/rxjava3/subjects/f$b;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lio/reactivex/rxjava3/subjects/f;->d:[Lio/reactivex/rxjava3/subjects/f$c;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/rxjava3/subjects/f;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static H8()Lio/reactivex/rxjava3/subjects/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/rxjava3/subjects/f<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/subjects/f;

    new-instance v1, Lio/reactivex/rxjava3/subjects/f$g;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lio/reactivex/rxjava3/subjects/f$g;-><init>(I)V

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/subjects/f;-><init>(Lio/reactivex/rxjava3/subjects/f$b;)V

    return-object v0
.end method

.method public static I8(I)Lio/reactivex/rxjava3/subjects/f;
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
            "Lio/reactivex/rxjava3/subjects/f<",
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
    new-instance v0, Lio/reactivex/rxjava3/subjects/f;

    new-instance v1, Lio/reactivex/rxjava3/subjects/f$g;

    invoke-direct {v1, p0}, Lio/reactivex/rxjava3/subjects/f$g;-><init>(I)V

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/subjects/f;-><init>(Lio/reactivex/rxjava3/subjects/f$b;)V

    return-object v0
.end method

.method static J8()Lio/reactivex/rxjava3/subjects/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/rxjava3/subjects/f<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/subjects/f;

    new-instance v1, Lio/reactivex/rxjava3/subjects/f$e;

    const v2, 0x7fffffff

    invoke-direct {v1, v2}, Lio/reactivex/rxjava3/subjects/f$e;-><init>(I)V

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/subjects/f;-><init>(Lio/reactivex/rxjava3/subjects/f$b;)V

    return-object v0
.end method

.method public static K8(I)Lio/reactivex/rxjava3/subjects/f;
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
            "Lio/reactivex/rxjava3/subjects/f<",
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
    new-instance v0, Lio/reactivex/rxjava3/subjects/f;

    new-instance v1, Lio/reactivex/rxjava3/subjects/f$e;

    invoke-direct {v1, p0}, Lio/reactivex/rxjava3/subjects/f$e;-><init>(I)V

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/subjects/f;-><init>(Lio/reactivex/rxjava3/subjects/f$b;)V

    return-object v0
.end method

.method public static L8(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/subjects/f;
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
            "Lio/reactivex/rxjava3/subjects/f<",
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
    new-instance v0, Lio/reactivex/rxjava3/subjects/f;

    new-instance v7, Lio/reactivex/rxjava3/subjects/f$d;

    const v2, 0x7fffffff

    move-object v1, v7

    move-wide v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lio/reactivex/rxjava3/subjects/f$d;-><init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)V

    invoke-direct {v0, v7}, Lio/reactivex/rxjava3/subjects/f;-><init>(Lio/reactivex/rxjava3/subjects/f$b;)V

    return-object v0
.end method

.method public static M8(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;I)Lio/reactivex/rxjava3/subjects/f;
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
            "Lio/reactivex/rxjava3/subjects/f<",
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
    new-instance v0, Lio/reactivex/rxjava3/subjects/f;

    new-instance v7, Lio/reactivex/rxjava3/subjects/f$d;

    move-object v1, v7

    move v2, p4

    move-wide v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lio/reactivex/rxjava3/subjects/f$d;-><init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)V

    invoke-direct {v0, v7}, Lio/reactivex/rxjava3/subjects/f;-><init>(Lio/reactivex/rxjava3/subjects/f$b;)V

    return-object v0
.end method


# virtual methods
.method public A8()Ljava/lang/Throwable;
    .locals 2
    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/f;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/f;->a:Lio/reactivex/rxjava3/subjects/f$b;

    invoke-interface {v0}, Lio/reactivex/rxjava3/subjects/f$b;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public B8()Z
    .locals 1
    .annotation runtime Lp7/c;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/f;->a:Lio/reactivex/rxjava3/subjects/f$b;

    invoke-interface {v0}, Lio/reactivex/rxjava3/subjects/f$b;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public C8()Z
    .locals 1
    .annotation runtime Lp7/c;
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/f;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/subjects/f$c;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public D8()Z
    .locals 1
    .annotation runtime Lp7/c;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/f;->a:Lio/reactivex/rxjava3/subjects/f$b;

    invoke-interface {v0}, Lio/reactivex/rxjava3/subjects/f$b;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method F8(Lio/reactivex/rxjava3/subjects/f$c;)Z
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
            "Lio/reactivex/rxjava3/subjects/f$c<",
            "TT;>;)Z"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/f;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/subjects/f$c;

    .line 2
    sget-object v1, Lio/reactivex/rxjava3/subjects/f;->e:[Lio/reactivex/rxjava3/subjects/f$c;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    .line 3
    :cond_1
    array-length v1, v0

    add-int/lit8 v3, v1, 0x1

    .line 4
    new-array v3, v3, [Lio/reactivex/rxjava3/subjects/f$c;

    .line 5
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    aput-object p1, v3, v1

    .line 7
    iget-object v1, p0, Lio/reactivex/rxjava3/subjects/f;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method public G8()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/f;->a:Lio/reactivex/rxjava3/subjects/f$b;

    invoke-interface {v0}, Lio/reactivex/rxjava3/subjects/f$b;->c()V

    return-void
.end method

.method public N8()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/f;
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/f;->a:Lio/reactivex/rxjava3/subjects/f$b;

    invoke-interface {v0}, Lio/reactivex/rxjava3/subjects/f$b;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public O8()[Ljava/lang/Object;
    .locals 2
    .annotation runtime Lp7/c;
    .end annotation

    .line 1
    sget-object v0, Lio/reactivex/rxjava3/subjects/f;->f:[Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/subjects/f;->P8([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public P8([Ljava/lang/Object;)[Ljava/lang/Object;
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

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/f;->a:Lio/reactivex/rxjava3/subjects/f$b;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/subjects/f$b;->d([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public Q8()Z
    .locals 1
    .annotation runtime Lp7/c;
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/f;->a:Lio/reactivex/rxjava3/subjects/f$b;

    invoke-interface {v0}, Lio/reactivex/rxjava3/subjects/f$b;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method R8()I
    .locals 1
    .annotation runtime Lp7/c;
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/f;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/subjects/f$c;

    array-length v0, v0

    return v0
.end method

.method S8(Lio/reactivex/rxjava3/subjects/f$c;)V
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
            "Lio/reactivex/rxjava3/subjects/f$c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/f;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/subjects/f$c;

    .line 2
    sget-object v1, Lio/reactivex/rxjava3/subjects/f;->e:[Lio/reactivex/rxjava3/subjects/f$c;

    if-eq v0, v1, :cond_6

    sget-object v1, Lio/reactivex/rxjava3/subjects/f;->d:[Lio/reactivex/rxjava3/subjects/f$c;

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
    sget-object v1, Lio/reactivex/rxjava3/subjects/f;->d:[Lio/reactivex/rxjava3/subjects/f$c;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    .line 6
    new-array v5, v5, [Lio/reactivex/rxjava3/subjects/f$c;

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
    iget-object v2, p0, Lio/reactivex/rxjava3/subjects/f;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    :goto_3
    return-void
.end method

.method T8()I
    .locals 1
    .annotation runtime Lp7/c;
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/f;->a:Lio/reactivex/rxjava3/subjects/f$b;

    invoke-interface {v0}, Lio/reactivex/rxjava3/subjects/f$b;->size()I

    move-result v0

    return v0
.end method

.method U8(Ljava/lang/Object;)[Lio/reactivex/rxjava3/subjects/f$c;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terminalValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")[",
            "Lio/reactivex/rxjava3/subjects/f$c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/f;->a:Lio/reactivex/rxjava3/subjects/f$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lio/reactivex/rxjava3/subjects/f$b;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Lio/reactivex/rxjava3/subjects/f;->b:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lio/reactivex/rxjava3/subjects/f;->e:[Lio/reactivex/rxjava3/subjects/f$c;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/reactivex/rxjava3/subjects/f$c;

    return-object p1
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

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/subjects/f$c;

    invoke-direct {v0, p1, p0}, Lio/reactivex/rxjava3/subjects/f$c;-><init>(Lio/reactivex/rxjava3/core/n0;Lio/reactivex/rxjava3/subjects/f;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/n0;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    .line 3
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/subjects/f;->F8(Lio/reactivex/rxjava3/subjects/f$c;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-boolean p1, v0, Lio/reactivex/rxjava3/subjects/f$c;->d:Z

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/subjects/f;->S8(Lio/reactivex/rxjava3/subjects/f$c;)V

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lio/reactivex/rxjava3/subjects/f;->a:Lio/reactivex/rxjava3/subjects/f$b;

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/subjects/f$b;->b(Lio/reactivex/rxjava3/subjects/f$c;)V

    return-void
.end method

.method public onComplete()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/subjects/f;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/rxjava3/subjects/f;->c:Z

    .line 3
    invoke-static {}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lio/reactivex/rxjava3/subjects/f;->a:Lio/reactivex/rxjava3/subjects/f$b;

    .line 5
    invoke-interface {v1, v0}, Lio/reactivex/rxjava3/subjects/f$b;->a(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/subjects/f;->U8(Ljava/lang/Object;)[Lio/reactivex/rxjava3/subjects/f$c;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 7
    invoke-interface {v1, v4}, Lio/reactivex/rxjava3/subjects/f$b;->b(Lio/reactivex/rxjava3/subjects/f$c;)V

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
    iget-boolean v0, p0, Lio/reactivex/rxjava3/subjects/f;->c:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lio/reactivex/rxjava3/subjects/f;->c:Z

    .line 5
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/f;->a:Lio/reactivex/rxjava3/subjects/f$b;

    .line 7
    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/subjects/f$b;->a(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/subjects/f;->U8(Ljava/lang/Object;)[Lio/reactivex/rxjava3/subjects/f$c;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 9
    invoke-interface {v0, v3}, Lio/reactivex/rxjava3/subjects/f$b;->b(Lio/reactivex/rxjava3/subjects/f$c;)V

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
    iget-boolean v0, p0, Lio/reactivex/rxjava3/subjects/f;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/subjects/f;->a:Lio/reactivex/rxjava3/subjects/f$b;

    .line 4
    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/subjects/f$b;->add(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lio/reactivex/rxjava3/subjects/f;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/reactivex/rxjava3/subjects/f$c;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 6
    invoke-interface {v0, v3}, Lio/reactivex/rxjava3/subjects/f$b;->b(Lio/reactivex/rxjava3/subjects/f$c;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
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
    iget-boolean v0, p0, Lio/reactivex/rxjava3/subjects/f;->c:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/f;->dispose()V

    :cond_0
    return-void
.end method
