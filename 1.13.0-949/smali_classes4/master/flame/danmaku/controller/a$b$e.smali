.class Lmaster/flame/danmaku/controller/a$b$e;
.super Lmaster/flame/danmaku/danmaku/model/m$c;
.source "CacheManagingDrawTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmaster/flame/danmaku/controller/a$b;->q(IZ)V
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
.field final synthetic e:I

.field final synthetic f:Z

.field final synthetic g:Lmaster/flame/danmaku/controller/a$b;


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/controller/a$b;IZ)V
    .locals 0

    iput-object p1, p0, Lmaster/flame/danmaku/controller/a$b$e;->g:Lmaster/flame/danmaku/controller/a$b;

    iput p2, p0, Lmaster/flame/danmaku/controller/a$b$e;->e:I

    iput-boolean p3, p0, Lmaster/flame/danmaku/controller/a$b$e;->f:Z

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/m$c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/controller/a$b$e;->e(Lmaster/flame/danmaku/danmaku/model/d;)I

    move-result p1

    return p1
.end method

.method public e(Lmaster/flame/danmaku/danmaku/model/d;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b$e;->g:Lmaster/flame/danmaku/controller/a$b;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/a$b;->g(Lmaster/flame/danmaku/controller/a$b;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b$e;->g:Lmaster/flame/danmaku/controller/a$b;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/a$b;->d(Lmaster/flame/danmaku/controller/a$b;)I

    move-result v0

    iget v2, p0, Lmaster/flame/danmaku/controller/a$b$e;->e:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lmaster/flame/danmaku/controller/a$b$e;->g:Lmaster/flame/danmaku/controller/a$b;

    invoke-static {v2}, Lmaster/flame/danmaku/controller/a$b;->e(Lmaster/flame/danmaku/controller/a$b;)I

    move-result v2

    if-le v0, v2, :cond_4

    .line 3
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->y()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-boolean p1, p0, Lmaster/flame/danmaku/controller/a$b$e;->f:Z

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v2

    .line 5
    :cond_3
    :goto_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b$e;->g:Lmaster/flame/danmaku/controller/a$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p1, v1}, Lmaster/flame/danmaku/controller/a$b;->t(ZLmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/d;)V

    const/4 p1, 0x2

    return p1

    :cond_4
    return v1
.end method
