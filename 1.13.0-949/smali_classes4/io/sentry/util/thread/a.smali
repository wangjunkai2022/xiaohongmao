.class public final synthetic Lio/sentry/util/thread/a;
.super Ljava/lang/Object;
.source "IMainThreadChecker.java"


# direct methods
.method public static a(Lio/sentry/util/thread/b;)Z
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/sentry/util/thread/b;->d(Ljava/lang/Thread;)Z

    move-result p0

    return p0
.end method

.method public static b(Lio/sentry/util/thread/b;Lio/sentry/protocol/t;)Z
    .locals 2
    .param p1    # Lio/sentry/protocol/t;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lio/sentry/protocol/t;->i()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lio/sentry/util/thread/b;->b(J)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(Lio/sentry/util/thread/b;Ljava/lang/Thread;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lio/sentry/util/thread/b;->b(J)Z

    move-result p0

    return p0
.end method
