.class public Lmaster/flame/danmaku/danmaku/model/f;
.super Ljava/lang/Object;
.source "DanmakuTimer.java"


# instance fields
.field public a:J

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/f;->c(J)J

    return-void
.end method


# virtual methods
.method public a(J)J
    .locals 2

    iget-wide v0, p0, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/f;->c(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lmaster/flame/danmaku/danmaku/model/f;->b:J

    return-wide v0
.end method

.method public c(J)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    sub-long v0, p1, v0

    iput-wide v0, p0, Lmaster/flame/danmaku/danmaku/model/f;->b:J

    .line 2
    iput-wide p1, p0, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    return-wide v0
.end method
