.class Lmaster/flame/danmaku/controller/e$g;
.super Lmaster/flame/danmaku/danmaku/model/m$c;
.source "DrawTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmaster/flame/danmaku/controller/e;->q(JJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmaster/flame/danmaku/danmaku/model/m$c<",
        "Lmaster/flame/danmaku/danmaku/model/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:J

.field final synthetic f:Lmaster/flame/danmaku/controller/e;


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/controller/e;J)V
    .locals 0

    iput-object p1, p0, Lmaster/flame/danmaku/controller/e$g;->f:Lmaster/flame/danmaku/controller/e;

    iput-wide p2, p0, Lmaster/flame/danmaku/controller/e$g;->e:J

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/m$c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/controller/e$g;->e(Lmaster/flame/danmaku/danmaku/model/d;)I

    move-result p1

    return p1
.end method

.method public e(Lmaster/flame/danmaku/danmaku/model/d;)I
    .locals 6

    .line 1
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->u()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-wide v2, p0, Lmaster/flame/danmaku/controller/e$g;->e:J

    iget-wide v4, p1, Lmaster/flame/danmaku/danmaku/model/d;->b:J

    add-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Lmaster/flame/danmaku/danmaku/model/d;->H(J)V

    .line 3
    iget-wide v2, p1, Lmaster/flame/danmaku/danmaku/model/d;->b:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
