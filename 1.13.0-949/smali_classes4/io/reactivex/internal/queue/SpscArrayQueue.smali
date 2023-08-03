.class public final Lio/reactivex/internal/queue/SpscArrayQueue;
.super Ljava/util/concurrent/atomic/AtomicReferenceArray;
.source "SpscArrayQueue.java"

# interfaces
.implements Lo7/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
        "TE;>;",
        "Lo7/n<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final f:J = -0x11fe70baff9afb41L

.field private static final g:Ljava/lang/Integer;


# instance fields
.field final a:I

.field final b:Ljava/util/concurrent/atomic/AtomicLong;

.field c:J

.field final d:Ljava/util/concurrent/atomic/AtomicLong;

.field final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "jctools.spsc.max.lookahead.step"

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/queue/SpscArrayQueue;->g:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-static {p1}, Lio/reactivex/internal/util/m;->b(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->a:I

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 5
    div-int/lit8 p1, p1, 0x4

    sget-object v0, Lio/reactivex/internal/queue/SpscArrayQueue;->g:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->e:I

    return-void
.end method


# virtual methods
.method a(J)I
    .locals 0

    long-to-int p2, p1

    iget p1, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->a:I

    and-int/2addr p1, p2

    return p1
.end method

.method b(JI)I
    .locals 0

    long-to-int p2, p1

    and-int p1, p2, p3

    return p1
.end method

.method public clear()V
    .locals 1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lio/reactivex/internal/queue/SpscArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/reactivex/internal/queue/SpscArrayQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return-void
.end method

.method h(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method i(J)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    return-void
.end method

.method public isEmpty()Z
    .locals 5

    iget-object v0, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iget-object v2, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method j(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    return-void
.end method

.method k(J)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    return-void
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const-string v0, "Null is not a valid element"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->a:I

    .line 3
    iget-object v1, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    .line 4
    invoke-virtual {p0, v1, v2, v0}, Lio/reactivex/internal/queue/SpscArrayQueue;->b(JI)I

    move-result v3

    .line 5
    iget-wide v4, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->c:J

    cmp-long v6, v1, v4

    if-ltz v6, :cond_1

    .line 6
    iget v4, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->e:I

    int-to-long v4, v4

    add-long/2addr v4, v1

    .line 7
    invoke-virtual {p0, v4, v5, v0}, Lio/reactivex/internal/queue/SpscArrayQueue;->b(JI)I

    move-result v0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/queue/SpscArrayQueue;->h(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 8
    iput-wide v4, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->c:J

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0, v3}, Lio/reactivex/internal/queue/SpscArrayQueue;->h(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 10
    :cond_1
    :goto_0
    invoke-virtual {p0, v3, p1}, Lio/reactivex/internal/queue/SpscArrayQueue;->j(ILjava/lang/Object;)V

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 11
    invoke-virtual {p0, v1, v2}, Lio/reactivex/internal/queue/SpscArrayQueue;->k(J)V

    const/4 p1, 0x1

    return p1
.end method

.method public offer(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)Z"
        }
    .end annotation

    .line 12
    invoke-virtual {p0, p1}, Lio/reactivex/internal/queue/SpscArrayQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lio/reactivex/internal/queue/SpscArrayQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public poll()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation build Lm7/f;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/queue/SpscArrayQueue;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 2
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/queue/SpscArrayQueue;->a(J)I

    move-result v2

    .line 3
    invoke-virtual {p0, v2}, Lio/reactivex/internal/queue/SpscArrayQueue;->h(I)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    :cond_0
    const-wide/16 v5, 0x1

    add-long/2addr v0, v5

    .line 4
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/queue/SpscArrayQueue;->i(J)V

    .line 5
    invoke-virtual {p0, v2, v4}, Lio/reactivex/internal/queue/SpscArrayQueue;->j(ILjava/lang/Object;)V

    return-object v3
.end method
