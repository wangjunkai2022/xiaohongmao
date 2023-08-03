.class Lio/sentry/android/core/a0$a;
.super Ljava/lang/Object;
.source "AndroidTransactionProfiler.java"

# interfaces
.implements Lio/sentry/android/core/internal/util/n$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/core/a0;->q(Lio/sentry/w0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:J

.field final b:J

.field c:F

.field final synthetic d:Lio/sentry/android/core/a0;


# direct methods
.method constructor <init>(Lio/sentry/android/core/a0;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lio/sentry/android/core/a0$a;->d:Lio/sentry/android/core/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/android/core/a0$a;->a:J

    .line 3
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x2bc

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/android/core/a0$a;->b:J

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lio/sentry/android/core/a0$a;->c:F

    return-void
.end method


# virtual methods
.method public a(Landroid/view/FrameMetrics;F)V
    .locals 7
    .param p1    # Landroid/view/FrameMetrics;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iget-object v2, p0, Lio/sentry/android/core/a0$a;->d:Lio/sentry/android/core/a0;

    invoke-static {v2}, Lio/sentry/android/core/a0;->g(Lio/sentry/android/core/a0;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    :cond_0
    const/16 v2, 0x8

    .line 2
    invoke-virtual {p1, v2}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v2

    long-to-float p1, v2

    .line 3
    iget-wide v4, p0, Lio/sentry/android/core/a0$a;->a:J

    long-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v5, p2, v5

    div-float/2addr v4, v5

    cmpl-float p1, p1, v4

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/high16 v4, 0x42c80000    # 100.0f

    mul-float p2, p2, v4

    float-to-int p2, p2

    int-to-float p2, p2

    div-float/2addr p2, v4

    .line 4
    iget-wide v4, p0, Lio/sentry/android/core/a0$a;->b:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    .line 5
    iget-object p1, p0, Lio/sentry/android/core/a0$a;->d:Lio/sentry/android/core/a0;

    invoke-static {p1}, Lio/sentry/android/core/a0;->h(Lio/sentry/android/core/a0;)Ljava/util/ArrayDeque;

    move-result-object p1

    new-instance v4, Lio/sentry/profilemeasurements/b;

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Lio/sentry/profilemeasurements/b;-><init>(Ljava/lang/Long;Ljava/lang/Number;)V

    .line 7
    invoke-virtual {p1, v4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lio/sentry/android/core/a0$a;->d:Lio/sentry/android/core/a0;

    invoke-static {p1}, Lio/sentry/android/core/a0;->i(Lio/sentry/android/core/a0;)Ljava/util/ArrayDeque;

    move-result-object p1

    new-instance v4, Lio/sentry/profilemeasurements/b;

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Lio/sentry/profilemeasurements/b;-><init>(Ljava/lang/Long;Ljava/lang/Number;)V

    .line 10
    invoke-virtual {p1, v4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 11
    :cond_3
    :goto_1
    iget p1, p0, Lio/sentry/android/core/a0$a;->c:F

    cmpl-float p1, p2, p1

    if-eqz p1, :cond_4

    .line 12
    iput p2, p0, Lio/sentry/android/core/a0$a;->c:F

    .line 13
    iget-object p1, p0, Lio/sentry/android/core/a0$a;->d:Lio/sentry/android/core/a0;

    invoke-static {p1}, Lio/sentry/android/core/a0;->j(Lio/sentry/android/core/a0;)Ljava/util/ArrayDeque;

    move-result-object p1

    new-instance v2, Lio/sentry/profilemeasurements/b;

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {v2, v0, p2}, Lio/sentry/profilemeasurements/b;-><init>(Ljava/lang/Long;Ljava/lang/Number;)V

    .line 15
    invoke-virtual {p1, v2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method
