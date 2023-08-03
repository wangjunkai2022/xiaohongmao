.class Lmaster/flame/danmaku/controller/e$c;
.super Lmaster/flame/danmaku/danmaku/model/m$c;
.source "DrawTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmaster/flame/danmaku/controller/e;->e()V
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
.field final synthetic e:Lmaster/flame/danmaku/controller/e;


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/controller/e;)V
    .locals 0

    iput-object p1, p0, Lmaster/flame/danmaku/controller/e$c;->e:Lmaster/flame/danmaku/controller/e;

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/m$c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/controller/e$c;->e(Lmaster/flame/danmaku/danmaku/model/d;)I

    move-result p1

    return p1
.end method

.method public e(Lmaster/flame/danmaku/danmaku/model/d;)I
    .locals 1

    .line 1
    iget-boolean v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->z:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/controller/e$c;->e:Lmaster/flame/danmaku/controller/e;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/controller/e;->y(Lmaster/flame/danmaku/danmaku/model/d;)V

    const/4 p1, 0x2

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
