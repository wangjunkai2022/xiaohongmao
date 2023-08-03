.class final Lio/sentry/android/core/d1;
.super Ljava/lang/Object;
.source "PerformanceAndroidEventProcessor.java"

# interfaces
.implements Lio/sentry/z;


# instance fields
.field private a:Z

.field private final b:Lio/sentry/android/core/g;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Lio/sentry/android/core/SentryAndroidOptions;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/g;)V
    .locals 1
    .param p1    # Lio/sentry/android/core/SentryAndroidOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/android/core/g;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/sentry/android/core/d1;->a:Z

    const-string v0, "SentryAndroidOptions is required"

    .line 3
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/core/SentryAndroidOptions;

    iput-object p1, p0, Lio/sentry/android/core/d1;->c:Lio/sentry/android/core/SentryAndroidOptions;

    const-string p1, "ActivityFramesTracker is required"

    .line 4
    invoke-static {p2, p1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/core/g;

    iput-object p1, p0, Lio/sentry/android/core/d1;->b:Lio/sentry/android/core/g;

    return-void
.end method

.method private c(Ljava/util/List;)Z
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/protocol/q;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/q;

    .line 2
    invoke-virtual {v0}, Lio/sentry/protocol/q;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app.start.cold"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {v0}, Lio/sentry/protocol/q;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app.start.warm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a(Lio/sentry/h4;Lio/sentry/b0;)Lio/sentry/h4;
    .locals 0
    .param p1    # Lio/sentry/h4;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/b0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    return-object p1
.end method

.method public declared-synchronized b(Lio/sentry/protocol/u;Lio/sentry/b0;)Lio/sentry/protocol/u;
    .locals 3
    .param p1    # Lio/sentry/protocol/u;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/b0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p2, p0, Lio/sentry/android/core/d1;->c:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->isTracingEnabled()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    .line 2
    monitor-exit p0

    return-object p1

    .line 3
    :cond_0
    :try_start_1
    iget-boolean p2, p0, Lio/sentry/android/core/d1;->a:Z

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lio/sentry/protocol/u;->w0()Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p2}, Lio/sentry/android/core/d1;->c(Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 4
    invoke-static {}, Lio/sentry/android/core/i0;->d()Lio/sentry/android/core/i0;

    move-result-object p2

    invoke-virtual {p2}, Lio/sentry/android/core/i0;->a()Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 5
    new-instance v0, Lio/sentry/protocol/e;

    .line 6
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-float p2, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    sget-object v1, Lio/sentry/MeasurementUnit$Duration;->MILLISECOND:Lio/sentry/MeasurementUnit$Duration;

    invoke-virtual {v1}, Lio/sentry/MeasurementUnit$Duration;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lio/sentry/protocol/e;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lio/sentry/android/core/i0;->d()Lio/sentry/android/core/i0;

    move-result-object p2

    invoke-virtual {p2}, Lio/sentry/android/core/i0;->e()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "app_start_cold"

    goto :goto_0

    :cond_1
    const-string p2, "app_start_warm"

    .line 8
    :goto_0
    invoke-virtual {p1}, Lio/sentry/protocol/u;->u0()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    .line 9
    iput-boolean p2, p0, Lio/sentry/android/core/d1;->a:Z

    .line 10
    :cond_2
    invoke-virtual {p1}, Lio/sentry/e3;->I()Lio/sentry/protocol/n;

    move-result-object p2

    .line 11
    invoke-virtual {p1}, Lio/sentry/e3;->E()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getTrace()Lio/sentry/f5;

    move-result-object v0

    if-eqz p2, :cond_3

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v0}, Lio/sentry/f5;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ui.load"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lio/sentry/android/core/d1;->b:Lio/sentry/android/core/g;

    .line 14
    invoke-virtual {v0, p2}, Lio/sentry/android/core/g;->q(Lio/sentry/protocol/n;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 15
    invoke-virtual {p1}, Lio/sentry/protocol/u;->u0()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :cond_3
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
