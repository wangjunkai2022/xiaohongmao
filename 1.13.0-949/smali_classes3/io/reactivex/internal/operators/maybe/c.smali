.class public final Lio/reactivex/internal/operators/maybe/c;
.super Lio/reactivex/q;
.source "MaybeCache.java"

# interfaces
.implements Lio/reactivex/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/q<",
        "TT;>;",
        "Lio/reactivex/t<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final e:[Lio/reactivex/internal/operators/maybe/c$a;

.field static final f:[Lio/reactivex/internal/operators/maybe/c$a;


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/w<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/internal/operators/maybe/c$a<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field d:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/internal/operators/maybe/c$a;

    .line 1
    sput-object v1, Lio/reactivex/internal/operators/maybe/c;->e:[Lio/reactivex/internal/operators/maybe/c$a;

    new-array v0, v0, [Lio/reactivex/internal/operators/maybe/c$a;

    .line 2
    sput-object v0, Lio/reactivex/internal/operators/maybe/c;->f:[Lio/reactivex/internal/operators/maybe/c$a;

    return-void
.end method

.method public constructor <init>(Lio/reactivex/w;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/w<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/q;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/c;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lio/reactivex/internal/operators/maybe/c;->e:[Lio/reactivex/internal/operators/maybe/c$a;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method e2(Lio/reactivex/internal/operators/maybe/c$a;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/maybe/c$a<",
            "TT;>;)Z"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/maybe/c$a;

    .line 2
    sget-object v1, Lio/reactivex/internal/operators/maybe/c;->f:[Lio/reactivex/internal/operators/maybe/c$a;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    .line 3
    :cond_1
    array-length v1, v0

    add-int/lit8 v3, v1, 0x1

    .line 4
    new-array v3, v3, [Lio/reactivex/internal/operators/maybe/c$a;

    .line 5
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    aput-object p1, v3, v1

    .line 7
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method f2(Lio/reactivex/internal/operators/maybe/c$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/maybe/c$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/maybe/c$a;

    .line 2
    array-length v1, v0

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 3
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

    .line 4
    sget-object v1, Lio/reactivex/internal/operators/maybe/c;->e:[Lio/reactivex/internal/operators/maybe/c$a;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    .line 5
    new-array v5, v5, [Lio/reactivex/internal/operators/maybe/c$a;

    .line 6
    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    .line 7
    invoke-static {v0, v3, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    .line 8
    :goto_2
    iget-object v2, p0, Lio/reactivex/internal/operators/maybe/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public onComplete()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/maybe/c;->f:[Lio/reactivex/internal/operators/maybe/c$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/maybe/c$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lio/reactivex/internal/operators/maybe/c$a;->isDisposed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3
    iget-object v3, v3, Lio/reactivex/internal/operators/maybe/c$a;->a:Lio/reactivex/t;

    invoke-interface {v3}, Lio/reactivex/t;->onComplete()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/c;->d:Ljava/lang/Throwable;

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/maybe/c;->f:[Lio/reactivex/internal/operators/maybe/c$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/maybe/c$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {v3}, Lio/reactivex/internal/operators/maybe/c$a;->isDisposed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4
    iget-object v3, v3, Lio/reactivex/internal/operators/maybe/c$a;->a:Lio/reactivex/t;

    invoke-interface {v3, p1}, Lio/reactivex/t;->onError(Ljava/lang/Throwable;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/c;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/c;->c:Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/maybe/c;->f:[Lio/reactivex/internal/operators/maybe/c$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/maybe/c$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {v3}, Lio/reactivex/internal/operators/maybe/c$a;->isDisposed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4
    iget-object v3, v3, Lio/reactivex/internal/operators/maybe/c$a;->a:Lio/reactivex/t;

    invoke-interface {v3, p1}, Lio/reactivex/t;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected q1(Lio/reactivex/t;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/maybe/c$a;

    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/operators/maybe/c$a;-><init>(Lio/reactivex/t;Lio/reactivex/internal/operators/maybe/c;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/t;->onSubscribe(Lio/reactivex/disposables/c;)V

    .line 3
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/maybe/c;->e2(Lio/reactivex/internal/operators/maybe/c$a;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v0}, Lio/reactivex/internal/operators/maybe/c$a;->isDisposed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/maybe/c;->f2(Lio/reactivex/internal/operators/maybe/c$a;)V

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/c;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/w;

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p1, p0}, Lio/reactivex/w;->b(Lio/reactivex/t;)V

    :cond_1
    return-void

    .line 8
    :cond_2
    invoke-virtual {v0}, Lio/reactivex/internal/operators/maybe/c$a;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 9
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/c;->d:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 10
    invoke-interface {p1, v0}, Lio/reactivex/t;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 11
    :cond_3
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/c;->c:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 12
    invoke-interface {p1, v0}, Lio/reactivex/t;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_4
    invoke-interface {p1}, Lio/reactivex/t;->onComplete()V

    :cond_5
    :goto_0
    return-void
.end method
