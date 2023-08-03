.class public final Lio/sentry/n4;
.super Lio/sentry/j3;
.source "SentryNanotimeDate.java"


# instance fields
.field private final a:Ljava/util/Date;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-static {}, Lio/sentry/k;->c()Ljava/util/Date;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lio/sentry/n4;-><init>(Ljava/util/Date;J)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;J)V
    .locals 0
    .param p1    # Ljava/util/Date;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Lio/sentry/j3;-><init>()V

    .line 3
    iput-object p1, p0, Lio/sentry/n4;->a:Ljava/util/Date;

    .line 4
    iput-wide p2, p0, Lio/sentry/n4;->b:J

    return-void
.end method

.method private e(Lio/sentry/n4;Lio/sentry/n4;)J
    .locals 4
    .param p1    # Lio/sentry/n4;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/n4;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iget-wide v0, p2, Lio/sentry/n4;->b:J

    iget-wide v2, p1, Lio/sentry/n4;->b:J

    sub-long/2addr v0, v2

    .line 2
    invoke-virtual {p1}, Lio/sentry/n4;->d()J

    move-result-wide p1

    add-long/2addr p1, v0

    return-wide p1
.end method


# virtual methods
.method public a(Lio/sentry/j3;)I
    .locals 5
    .param p1    # Lio/sentry/j3;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lio/sentry/n4;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lio/sentry/n4;

    .line 3
    iget-object v0, p0, Lio/sentry/n4;->a:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 4
    iget-object v2, p1, Lio/sentry/n4;->a:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 5
    iget-wide v0, p0, Lio/sentry/n4;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p1, Lio/sentry/n4;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p1

    return p1

    .line 6
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p1

    return p1

    .line 7
    :cond_1
    invoke-super {p0, p1}, Lio/sentry/j3;->a(Lio/sentry/j3;)I

    move-result p1

    return p1
.end method

.method public b(Lio/sentry/j3;)J
    .locals 4
    .param p1    # Lio/sentry/j3;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lio/sentry/n4;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/sentry/n4;

    .line 3
    iget-wide v0, p0, Lio/sentry/n4;->b:J

    iget-wide v2, p1, Lio/sentry/n4;->b:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lio/sentry/j3;->b(Lio/sentry/j3;)J

    move-result-wide v0

    return-wide v0
.end method

.method public c(Lio/sentry/j3;)J
    .locals 2
    .param p1    # Lio/sentry/j3;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    .line 1
    instance-of v0, p1, Lio/sentry/n4;

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p1

    check-cast v0, Lio/sentry/n4;

    .line 3
    invoke-virtual {p0, p1}, Lio/sentry/n4;->a(Lio/sentry/j3;)I

    move-result p1

    if-gez p1, :cond_0

    .line 4
    invoke-direct {p0, p0, v0}, Lio/sentry/n4;->e(Lio/sentry/n4;Lio/sentry/n4;)J

    move-result-wide v0

    return-wide v0

    .line 5
    :cond_0
    invoke-direct {p0, v0, p0}, Lio/sentry/n4;->e(Lio/sentry/n4;Lio/sentry/n4;)J

    move-result-wide v0

    return-wide v0

    .line 6
    :cond_1
    invoke-super {p0, p1}, Lio/sentry/j3;->c(Lio/sentry/j3;)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param

    check-cast p1, Lio/sentry/j3;

    invoke-virtual {p0, p1}, Lio/sentry/n4;->a(Lio/sentry/j3;)I

    move-result p1

    return p1
.end method

.method public d()J
    .locals 2

    iget-object v0, p0, Lio/sentry/n4;->a:Ljava/util/Date;

    invoke-static {v0}, Lio/sentry/k;->a(Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method
