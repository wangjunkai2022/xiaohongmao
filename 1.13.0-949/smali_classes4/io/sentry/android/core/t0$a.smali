.class final Lio/sentry/android/core/t0$a;
.super Ljava/lang/Object;
.source "EnvelopeFileObserver.java"

# interfaces
.implements Lio/sentry/hints/d;
.implements Lio/sentry/hints/h;
.implements Lio/sentry/hints/m;
.implements Lio/sentry/hints/f;
.implements Lio/sentry/hints/c;
.implements Lio/sentry/hints/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/t0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:Z

.field private c:Ljava/util/concurrent/CountDownLatch;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:J

.field private final e:Lio/sentry/o0;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLio/sentry/o0;)V
    .locals 0
    .param p3    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Lio/sentry/android/core/t0$a;->reset()V

    .line 3
    iput-wide p1, p0, Lio/sentry/android/core/t0$a;->d:J

    const-string p1, "ILogger is required."

    .line 4
    invoke-static {p3, p1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/o0;

    iput-object p1, p0, Lio/sentry/android/core/t0$a;->e:Lio/sentry/o0;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lio/sentry/android/core/t0$a;->a:Z

    return v0
.end method

.method public b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/android/core/t0$a;->b:Z

    .line 2
    iget-object p1, p0, Lio/sentry/android/core/t0$a;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/android/core/t0$a;->a:Z

    return-void
.end method

.method public d()Z
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/t0$a;->c:Ljava/util/concurrent/CountDownLatch;

    iget-wide v1, p0, Lio/sentry/android/core/t0$a;->d:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 3
    iget-object v1, p0, Lio/sentry/android/core/t0$a;->e:Lio/sentry/o0;

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Exception while awaiting on lock."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lio/sentry/android/core/t0$a;->b:Z

    return v0
.end method

.method public reset()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lio/sentry/android/core/t0$a;->c:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/sentry/android/core/t0$a;->a:Z

    .line 3
    iput-boolean v0, p0, Lio/sentry/android/core/t0$a;->b:Z

    return-void
.end method
