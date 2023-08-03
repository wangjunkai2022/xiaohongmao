.class Lmaster/flame/danmaku/controller/e$d;
.super Lmaster/flame/danmaku/danmaku/model/m$c;
.source "DrawTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmaster/flame/danmaku/controller/e;->z(I)V
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

.field final synthetic f:I

.field final synthetic g:Lmaster/flame/danmaku/controller/e;


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/controller/e;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmaster/flame/danmaku/controller/e$d;->g:Lmaster/flame/danmaku/controller/e;

    iput p2, p0, Lmaster/flame/danmaku/controller/e$d;->f:I

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/m$c;-><init>()V

    .line 2
    invoke-static {}, Lg8/c;->b()J

    move-result-wide p1

    iput-wide p1, p0, Lmaster/flame/danmaku/controller/e$d;->e:J

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/controller/e$d;->e(Lmaster/flame/danmaku/danmaku/model/d;)I

    move-result p1

    return p1
.end method

.method public e(Lmaster/flame/danmaku/danmaku/model/d;)I
    .locals 7

    .line 1
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->y()Z

    move-result v0

    .line 2
    invoke-static {}, Lg8/c;->b()J

    move-result-wide v1

    iget-wide v3, p0, Lmaster/flame/danmaku/controller/e$d;->e:J

    sub-long/2addr v1, v3

    iget v3, p0, Lmaster/flame/danmaku/controller/e$d;->f:I

    int-to-long v3, v3

    const/4 v5, 0x1

    cmp-long v6, v1, v3

    if-lez v6, :cond_0

    return v5

    :cond_0
    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lmaster/flame/danmaku/controller/e$d;->g:Lmaster/flame/danmaku/controller/e;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/e;->e:Lmaster/flame/danmaku/danmaku/model/m;

    invoke-interface {v0, p1}, Lmaster/flame/danmaku/danmaku/model/m;->g(Lmaster/flame/danmaku/danmaku/model/d;)Z

    .line 4
    iget-object v0, p0, Lmaster/flame/danmaku/controller/e$d;->g:Lmaster/flame/danmaku/controller/e;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/controller/e;->y(Lmaster/flame/danmaku/danmaku/model/d;)V

    const/4 p1, 0x2

    return p1

    :cond_1
    return v5
.end method
