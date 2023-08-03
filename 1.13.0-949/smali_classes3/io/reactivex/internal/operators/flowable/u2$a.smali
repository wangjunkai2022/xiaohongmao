.class abstract Lio/reactivex/internal/operators/flowable/u2$a;
.super Lio/reactivex/internal/subscriptions/BasicQueueSubscription;
.source "FlowableRangeLong.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/u2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/internal/subscriptions/BasicQueueSubscription<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static final e:J = -0x1f442a7d211232e5L


# instance fields
.field final b:J

.field c:J

.field volatile d:Z


# direct methods
.method constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/internal/subscriptions/BasicQueueSubscription;-><init>()V

    .line 2
    iput-wide p1, p0, Lio/reactivex/internal/operators/flowable/u2$a;->c:J

    .line 3
    iput-wide p3, p0, Lio/reactivex/internal/operators/flowable/u2$a;->b:J

    return-void
.end method


# virtual methods
.method abstract a()V
.end method

.method public final b()Ljava/lang/Long;
    .locals 5
    .annotation build Lm7/f;
    .end annotation

    .line 1
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/u2$a;->c:J

    .line 2
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/u2$a;->b:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    .line 3
    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/u2$a;->c:J

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/u2$a;->d:Z

    return-void
.end method

.method public final clear()V
    .locals 2

    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/u2$a;->b:J

    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/u2$a;->c:J

    return-void
.end method

.method abstract h(J)V
.end method

.method public final isEmpty()Z
    .locals 5

    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/u2$a;->c:J

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/u2$a;->b:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lm7/f;
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/u2$a;->b()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final request(J)V
    .locals 5

    .line 1
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p0, p1, p2}, Lio/reactivex/internal/util/b;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/u2$a;->a()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/u2$a;->h(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final requestFusion(I)I
    .locals 0

    and-int/lit8 p1, p1, 0x1

    return p1
.end method
