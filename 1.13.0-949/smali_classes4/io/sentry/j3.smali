.class public abstract Lio/sentry/j3;
.super Ljava/lang/Object;
.source "SentryDate.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/sentry/j3;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/sentry/j3;)I
    .locals 3
    .param p1    # Lio/sentry/j3;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-virtual {p0}, Lio/sentry/j3;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1}, Lio/sentry/j3;->d()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p1

    return p1
.end method

.method public b(Lio/sentry/j3;)J
    .locals 4
    .param p1    # Lio/sentry/j3;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-virtual {p0}, Lio/sentry/j3;->d()J

    move-result-wide v0

    invoke-virtual {p1}, Lio/sentry/j3;->d()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public c(Lio/sentry/j3;)J
    .locals 2
    .param p1    # Lio/sentry/j3;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lio/sentry/j3;->a(Lio/sentry/j3;)I

    move-result v0

    if-gez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lio/sentry/j3;->d()J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lio/sentry/j3;->d()J

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

    invoke-virtual {p0, p1}, Lio/sentry/j3;->a(Lio/sentry/j3;)I

    move-result p1

    return p1
.end method

.method public abstract d()J
.end method
