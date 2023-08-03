.class public Lg8/c;
.super Ljava/lang/Object;
.source "SystemClock.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(J)V
    .locals 0

    invoke-static {p0, p1}, Landroid/os/SystemClock;->sleep(J)V

    return-void
.end method

.method public static final b()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
