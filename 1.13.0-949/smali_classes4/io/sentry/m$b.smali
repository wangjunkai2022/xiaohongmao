.class Lio/sentry/m$b;
.super Ljava/util/TimerTask;
.source "DefaultTransactionPerformanceCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/m;->b(Lio/sentry/w0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/sentry/m;


# direct methods
.method constructor <init>(Lio/sentry/m;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/m$b;->a:Lio/sentry/m;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/m$b;->a:Lio/sentry/m;

    invoke-static {v0}, Lio/sentry/m;->e(Lio/sentry/m;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/sentry/m$b;->a:Lio/sentry/m;

    invoke-static {v1}, Lio/sentry/m;->d(Lio/sentry/m;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/j0;

    .line 3
    iget-object v3, p0, Lio/sentry/m$b;->a:Lio/sentry/m;

    invoke-static {v3}, Lio/sentry/m;->f(Lio/sentry/m;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/sentry/j0;->b(Ljava/lang/Iterable;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lio/sentry/m$b;->a:Lio/sentry/m;

    invoke-static {v1}, Lio/sentry/m;->f(Lio/sentry/m;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/k2;

    .line 5
    invoke-virtual {v2}, Lio/sentry/k2;->c()V

    goto :goto_1

    .line 6
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
