.class Lmaster/flame/danmaku/controller/b$b$a;
.super Lmaster/flame/danmaku/danmaku/model/m$c;
.source "DanmakuFilters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmaster/flame/danmaku/controller/b$b;->e(Lmaster/flame/danmaku/danmaku/model/m;J)V
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
.field e:J

.field final synthetic f:J

.field final synthetic g:Lmaster/flame/danmaku/controller/b$b;


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/controller/b$b;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmaster/flame/danmaku/controller/b$b$a;->g:Lmaster/flame/danmaku/controller/b$b;

    iput-wide p2, p0, Lmaster/flame/danmaku/controller/b$b$a;->f:J

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/m$c;-><init>()V

    .line 2
    invoke-static {}, Lg8/c;->b()J

    move-result-wide p1

    iput-wide p1, p0, Lmaster/flame/danmaku/controller/b$b$a;->e:J

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/controller/b$b$a;->e(Lmaster/flame/danmaku/danmaku/model/d;)I

    move-result p1

    return p1
.end method

.method public e(Lmaster/flame/danmaku/danmaku/model/d;)I
    .locals 6

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-static {}, Lg8/c;->b()J

    move-result-wide v1

    iget-wide v3, p0, Lmaster/flame/danmaku/controller/b$b$a;->e:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lmaster/flame/danmaku/controller/b$b$a;->f:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->y()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    return p1

    :catch_0
    :cond_1
    return v0
.end method
