.class final Lio/reactivex/rxjava3/internal/schedulers/b$b;
.super Ljava/lang/Object;
.source "ComputationScheduler.java"

# interfaces
.implements Lio/reactivex/rxjava3/internal/schedulers/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/schedulers/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field final a:I

.field final b:[Lio/reactivex/rxjava3/internal/schedulers/b$c;

.field c:J


# direct methods
.method constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "maxThreads",
            "threadFactory"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lio/reactivex/rxjava3/internal/schedulers/b$b;->a:I

    .line 3
    new-array v0, p1, [Lio/reactivex/rxjava3/internal/schedulers/b$c;

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/b$b;->b:[Lio/reactivex/rxjava3/internal/schedulers/b$c;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 4
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/schedulers/b$b;->b:[Lio/reactivex/rxjava3/internal/schedulers/b$c;

    new-instance v2, Lio/reactivex/rxjava3/internal/schedulers/b$c;

    invoke-direct {v2, p2}, Lio/reactivex/rxjava3/internal/schedulers/b$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(ILio/reactivex/rxjava3/internal/schedulers/k$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "number",
            "callback"
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/reactivex/rxjava3/internal/schedulers/b$b;->a:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :goto_0
    if-ge v1, p1, :cond_3

    .line 2
    sget-object v0, Lio/reactivex/rxjava3/internal/schedulers/b;->i:Lio/reactivex/rxjava3/internal/schedulers/b$c;

    invoke-interface {p2, v1, v0}, Lio/reactivex/rxjava3/internal/schedulers/k$a;->a(ILio/reactivex/rxjava3/core/o0$c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/schedulers/b$b;->c:J

    long-to-int v3, v2

    rem-int/2addr v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_2

    .line 4
    new-instance v4, Lio/reactivex/rxjava3/internal/schedulers/b$a;

    iget-object v5, p0, Lio/reactivex/rxjava3/internal/schedulers/b$b;->b:[Lio/reactivex/rxjava3/internal/schedulers/b$c;

    aget-object v5, v5, v3

    invoke-direct {v4, v5}, Lio/reactivex/rxjava3/internal/schedulers/b$a;-><init>(Lio/reactivex/rxjava3/internal/schedulers/b$c;)V

    invoke-interface {p2, v2, v4}, Lio/reactivex/rxjava3/internal/schedulers/k$a;->a(ILio/reactivex/rxjava3/core/o0$c;)V

    add-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_1

    const/4 v3, 0x0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    int-to-long p1, v3

    .line 5
    iput-wide p1, p0, Lio/reactivex/rxjava3/internal/schedulers/b$b;->c:J

    :cond_3
    return-void
.end method

.method public b()Lio/reactivex/rxjava3/internal/schedulers/b$c;
    .locals 6

    .line 1
    iget v0, p0, Lio/reactivex/rxjava3/internal/schedulers/b$b;->a:I

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/reactivex/rxjava3/internal/schedulers/b;->i:Lio/reactivex/rxjava3/internal/schedulers/b$c;

    return-object v0

    .line 3
    :cond_0
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/schedulers/b$b;->b:[Lio/reactivex/rxjava3/internal/schedulers/b$c;

    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/schedulers/b$b;->c:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lio/reactivex/rxjava3/internal/schedulers/b$b;->c:J

    int-to-long v4, v0

    rem-long/2addr v2, v4

    long-to-int v0, v2

    aget-object v0, v1, v0

    return-object v0
.end method

.method public c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/b$b;->b:[Lio/reactivex/rxjava3/internal/schedulers/b$c;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lio/reactivex/rxjava3/internal/schedulers/i;->dispose()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
