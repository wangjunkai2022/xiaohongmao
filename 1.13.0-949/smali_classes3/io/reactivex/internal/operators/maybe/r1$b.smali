.class final Lio/reactivex/internal/operators/maybe/r1$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "MaybeZipArray.java"

# interfaces
.implements Lio/reactivex/disposables/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/r1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/disposables/c;"
    }
.end annotation


# static fields
.field private static final e:J = -0x4d1e29153b0426a9L


# instance fields
.field final a:Lio/reactivex/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/t<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final b:Ln7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field

.field final c:[Lio/reactivex/internal/operators/maybe/r1$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/maybe/r1$c<",
            "TT;>;"
        }
    .end annotation
.end field

.field final d:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lio/reactivex/t;ILn7/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TR;>;I",
            "Ln7/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/r1$b;->a:Lio/reactivex/t;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/maybe/r1$b;->b:Ln7/o;

    .line 4
    new-array p1, p2, [Lio/reactivex/internal/operators/maybe/r1$c;

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    .line 5
    new-instance v0, Lio/reactivex/internal/operators/maybe/r1$c;

    invoke-direct {v0, p0, p3}, Lio/reactivex/internal/operators/maybe/r1$c;-><init>(Lio/reactivex/internal/operators/maybe/r1$b;I)V

    aput-object v0, p1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/r1$b;->c:[Lio/reactivex/internal/operators/maybe/r1$c;

    .line 7
    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/r1$b;->d:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/r1$b;->c:[Lio/reactivex/internal/operators/maybe/r1$c;

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 3
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lio/reactivex/internal/operators/maybe/r1$c;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    add-int/lit8 p1, p1, 0x1

    if-ge p1, v1, :cond_1

    .line 4
    aget-object v2, v0, p1

    invoke-virtual {v2}, Lio/reactivex/internal/operators/maybe/r1$c;->a()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method b(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/maybe/r1$b;->a(I)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/r1$b;->a:Lio/reactivex/t;

    invoke-interface {p1}, Lio/reactivex/t;->onComplete()V

    :cond_0
    return-void
.end method

.method c(Ljava/lang/Throwable;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0, p2}, Lio/reactivex/internal/operators/maybe/r1$b;->a(I)V

    .line 3
    iget-object p2, p0, Lio/reactivex/internal/operators/maybe/r1$b;->a:Lio/reactivex/t;

    invoke-interface {p2, p1}, Lio/reactivex/t;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method d(Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/r1$b;->d:[Ljava/lang/Object;

    aput-object p1, v0, p2

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    :try_start_0
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/r1$b;->b:Ln7/o;

    iget-object p2, p0, Lio/reactivex/internal/operators/maybe/r1$b;->d:[Ljava/lang/Object;

    invoke-interface {p1, p2}, Ln7/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "The zipper returned a null value"

    invoke-static {p1, p2}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p2, p0, Lio/reactivex/internal/operators/maybe/r1$b;->a:Lio/reactivex/t;

    invoke-interface {p2, p1}, Lio/reactivex/t;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 6
    iget-object p2, p0, Lio/reactivex/internal/operators/maybe/r1$b;->a:Lio/reactivex/t;

    invoke-interface {p2, p1}, Lio/reactivex/t;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public dispose()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v1

    if-lez v1, :cond_0

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/r1$b;->c:[Lio/reactivex/internal/operators/maybe/r1$c;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 3
    invoke-virtual {v3}, Lio/reactivex/internal/operators/maybe/r1$c;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
