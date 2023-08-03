.class public final Lio/sentry/b1;
.super Ljava/lang/Object;
.source "JavaMemoryCollector.java"

# interfaces
.implements Lio/sentry/j0;


# annotations
.annotation build Lm8/a$c;
.end annotation


# instance fields
.field private final a:Ljava/lang/Runtime;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/b1;->a:Ljava/lang/Runtime;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/Iterable;)V
    .locals 6
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

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lio/sentry/b1;->a:Ljava/lang/Runtime;

    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    iget-object v4, p0, Lio/sentry/b1;->a:Ljava/lang/Runtime;

    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 3
    new-instance v4, Lio/sentry/r1;

    invoke-direct {v4, v0, v1, v2, v3}, Lio/sentry/r1;-><init>(JJ)V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/k2;

    .line 5
    invoke-virtual {v0, v4}, Lio/sentry/k2;->b(Lio/sentry/r1;)V

    goto :goto_0

    :cond_0
    return-void
.end method
