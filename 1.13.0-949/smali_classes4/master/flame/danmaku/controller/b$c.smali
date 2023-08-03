.class public Lmaster/flame/danmaku/controller/b$c;
.super Lmaster/flame/danmaku/controller/b$a;
.source "DanmakuFilters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/controller/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmaster/flame/danmaku/controller/b$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/b$a;-><init>()V

    const-wide/16 v0, 0x14

    .line 2
    iput-wide v0, p0, Lmaster/flame/danmaku/controller/b$c;->a:J

    return-void
.end method

.method private declared-synchronized c(Lmaster/flame/danmaku/danmaku/model/d;IILmaster/flame/danmaku/danmaku/model/f;Z)Z
    .locals 2

    monitor-enter p0

    const/4 p2, 0x0

    if-eqz p4, :cond_2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->u()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lg8/c;->b()J

    move-result-wide v0

    iget-wide p3, p4, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    sub-long/2addr v0, p3

    .line 3
    iget-wide p3, p0, Lmaster/flame/danmaku/controller/b$c;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p1, v0, p3

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    .line 4
    monitor-exit p0

    return p1

    .line 5
    :cond_1
    monitor-exit p0

    return p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 6
    :cond_2
    :goto_0
    monitor-exit p0

    return p2
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/b$c;->reset()V

    return-void
.end method

.method public b(Lmaster/flame/danmaku/danmaku/model/d;IILmaster/flame/danmaku/danmaku/model/f;ZLmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Z
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lmaster/flame/danmaku/controller/b$c;->c(Lmaster/flame/danmaku/danmaku/model/d;IILmaster/flame/danmaku/danmaku/model/f;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget p3, p1, Lmaster/flame/danmaku/danmaku/model/d;->G:I

    or-int/lit8 p3, p3, 0x4

    iput p3, p1, Lmaster/flame/danmaku/danmaku/model/d;->G:I

    :cond_0
    return p2
.end method

.method public clear()V
    .locals 0

    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/b$c;->reset()V

    return-void
.end method

.method public declared-synchronized reset()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method
