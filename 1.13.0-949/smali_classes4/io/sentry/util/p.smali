.class public final Lio/sentry/util/p;
.super Ljava/lang/Object;
.source "SampleRateUtils.java"


# annotations
.annotation build Lm8/a$c;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Double;)Z
    .locals 1
    .param p0    # Ljava/lang/Double;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lio/sentry/util/p;->b(Ljava/lang/Double;Z)Z

    move-result p0

    return p0
.end method

.method private static b(Ljava/lang/Double;Z)Z
    .locals 4
    .param p0    # Ljava/lang/Double;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-nez p0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Double;->isNaN()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, p0, v0

    if-gtz v2, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(Ljava/lang/Double;)Z
    .locals 1
    .param p0    # Ljava/lang/Double;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lio/sentry/util/p;->d(Ljava/lang/Double;Z)Z

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/Double;Z)Z
    .locals 4
    .param p0    # Ljava/lang/Double;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-nez p0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Double;->isNaN()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, v0, v2

    if-gtz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-lez v2, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e(Ljava/lang/Double;)Z
    .locals 1
    .param p0    # Ljava/lang/Double;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lio/sentry/util/p;->f(Ljava/lang/Double;Z)Z

    move-result p0

    return p0
.end method

.method public static f(Ljava/lang/Double;Z)Z
    .locals 0
    .param p0    # Ljava/lang/Double;
        .annotation build Lm8/h;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lio/sentry/util/p;->b(Ljava/lang/Double;Z)Z

    move-result p0

    return p0
.end method
