.class Lio/sentry/a5$a;
.super Ljava/util/TimerTask;
.source "SentryTracer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/a5;->C()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/sentry/a5;


# direct methods
.method constructor <init>(Lio/sentry/a5;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/a5$a;->a:Lio/sentry/a5;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/a5$a;->a:Lio/sentry/a5;

    invoke-virtual {v0}, Lio/sentry/a5;->getStatus()Lio/sentry/SpanStatus;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/sentry/a5$a;->a:Lio/sentry/a5;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    :goto_0
    invoke-virtual {v1, v0}, Lio/sentry/a5;->t(Lio/sentry/SpanStatus;)V

    .line 3
    iget-object v0, p0, Lio/sentry/a5$a;->a:Lio/sentry/a5;

    invoke-static {v0}, Lio/sentry/a5;->O(Lio/sentry/a5;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
