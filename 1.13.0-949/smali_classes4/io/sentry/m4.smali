.class public final Lio/sentry/m4;
.super Lio/sentry/j3;
.source "SentryLongDate.java"


# instance fields
.field private final a:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/sentry/j3;-><init>()V

    .line 2
    iput-wide p1, p0, Lio/sentry/m4;->a:J

    return-void
.end method


# virtual methods
.method public d()J
    .locals 2

    iget-wide v0, p0, Lio/sentry/m4;->a:J

    return-wide v0
.end method
