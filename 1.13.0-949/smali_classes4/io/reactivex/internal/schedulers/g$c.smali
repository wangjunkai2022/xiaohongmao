.class final Lio/reactivex/internal/schedulers/g$c;
.super Lio/reactivex/internal/schedulers/i;
.source "IoScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private c:J


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/schedulers/i;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lio/reactivex/internal/schedulers/g$c;->c:J

    return-void
.end method


# virtual methods
.method public i()J
    .locals 2

    iget-wide v0, p0, Lio/reactivex/internal/schedulers/g$c;->c:J

    return-wide v0
.end method

.method public j(J)V
    .locals 0

    iput-wide p1, p0, Lio/reactivex/internal/schedulers/g$c;->c:J

    return-void
.end method
