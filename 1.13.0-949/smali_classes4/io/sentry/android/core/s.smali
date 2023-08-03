.class public Lio/sentry/android/core/s;
.super Ljava/lang/Object;
.source "AndroidMemoryCollector.java"

# interfaces
.implements Lio/sentry/j0;


# annotations
.annotation build Lm8/a$c;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/Iterable;)V
    .locals 9
    .param p1    # Ljava/lang/Iterable;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lio/sentry/k2;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 3
    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v5

    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 4
    new-instance v7, Lio/sentry/r1;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/sentry/r1;-><init>(JJJ)V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/k2;

    .line 6
    invoke-virtual {v0, v7}, Lio/sentry/k2;->b(Lio/sentry/r1;)V

    goto :goto_0

    :cond_0
    return-void
.end method
