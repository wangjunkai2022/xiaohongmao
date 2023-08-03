.class Lmaster/flame/danmaku/controller/e$e;
.super Lmaster/flame/danmaku/danmaku/model/m$c;
.source "DrawTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmaster/flame/danmaku/controller/e;->g(J)Lmaster/flame/danmaku/danmaku/model/m;
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
.field final synthetic e:Lmaster/flame/danmaku/danmaku/model/m;

.field final synthetic f:Lmaster/flame/danmaku/controller/e;


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/controller/e;Lmaster/flame/danmaku/danmaku/model/m;)V
    .locals 0

    iput-object p1, p0, Lmaster/flame/danmaku/controller/e$e;->f:Lmaster/flame/danmaku/controller/e;

    iput-object p2, p0, Lmaster/flame/danmaku/controller/e$e;->e:Lmaster/flame/danmaku/danmaku/model/m;

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/m$c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/controller/e$e;->e(Lmaster/flame/danmaku/danmaku/model/d;)I

    move-result p1

    return p1
.end method

.method public e(Lmaster/flame/danmaku/danmaku/model/d;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->u()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/controller/e$e;->e:Lmaster/flame/danmaku/danmaku/model/m;

    invoke-interface {v0, p1}, Lmaster/flame/danmaku/danmaku/model/m;->i(Lmaster/flame/danmaku/danmaku/model/d;)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
