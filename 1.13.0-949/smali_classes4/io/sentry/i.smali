.class public final Lio/sentry/i;
.super Ljava/lang/Object;
.source "CpuCollectionData.java"


# annotations
.annotation build Lm8/a$c;
.end annotation


# instance fields
.field final a:J

.field final b:D


# direct methods
.method public constructor <init>(JD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lio/sentry/i;->a:J

    .line 3
    iput-wide p3, p0, Lio/sentry/i;->b:D

    return-void
.end method


# virtual methods
.method public a()D
    .locals 2

    iget-wide v0, p0, Lio/sentry/i;->b:D

    return-wide v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lio/sentry/i;->a:J

    return-wide v0
.end method
