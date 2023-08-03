.class abstract Lio/reactivex/internal/operators/parallel/i$c;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ParallelJoin.java"

# interfaces
.implements Lorg/reactivestreams/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/parallel/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lorg/reactivestreams/e;"
    }
.end annotation


# static fields
.field private static final g:J = 0x2b063c9630832783L


# instance fields
.field final a:Lorg/reactivestreams/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/d<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:[Lio/reactivex/internal/operators/parallel/i$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/parallel/i$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/internal/util/AtomicThrowable;

.field final d:Ljava/util/concurrent/atomic/AtomicLong;

.field volatile e:Z

.field final f:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lorg/reactivestreams/d;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TT;>;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    new-instance v0, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {v0}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/parallel/i$c;->c:Lio/reactivex/internal/util/AtomicThrowable;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/parallel/i$c;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/parallel/i$c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/i$c;->a:Lorg/reactivestreams/d;

    .line 6
    new-array p1, p2, [Lio/reactivex/internal/operators/parallel/i$a;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 7
    new-instance v1, Lio/reactivex/internal/operators/parallel/i$a;

    invoke-direct {v1, p0, p3}, Lio/reactivex/internal/operators/parallel/i$a;-><init>(Lio/reactivex/internal/operators/parallel/i$c;I)V

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/i$c;->b:[Lio/reactivex/internal/operators/parallel/i$a;

    .line 9
    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/i$c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/i$c;->b:[Lio/reactivex/internal/operators/parallel/i$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lio/reactivex/internal/operators/parallel/i$a;->a()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/i$c;->b:[Lio/reactivex/internal/operators/parallel/i$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    const/4 v4, 0x0

    .line 2
    iput-object v4, v3, Lio/reactivex/internal/operators/parallel/i$a;->e:Lo7/n;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method abstract c()V
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/i$c;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/parallel/i$c;->e:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/i$c;->a()V

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/i$c;->b()V

    :cond_0
    return-void
.end method

.method abstract d()V
.end method

.method abstract e(Ljava/lang/Throwable;)V
.end method

.method abstract h(Lio/reactivex/internal/operators/parallel/i$a;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/parallel/i$a<",
            "TT;>;TT;)V"
        }
    .end annotation
.end method

.method public request(J)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/i$c;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/b;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/i$c;->c()V

    :cond_0
    return-void
.end method
