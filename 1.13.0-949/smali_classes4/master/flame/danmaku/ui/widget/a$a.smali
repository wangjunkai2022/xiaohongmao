.class Lmaster/flame/danmaku/ui/widget/a$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DanmakuTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/ui/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmaster/flame/danmaku/ui/widget/a;


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/ui/widget/a;)V
    .locals 0

    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/a$a;->a:Lmaster/flame/danmaku/ui/widget/a;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lmaster/flame/danmaku/ui/widget/a$a;->a:Lmaster/flame/danmaku/ui/widget/a;

    invoke-static {p1}, Lmaster/flame/danmaku/ui/widget/a;->a(Lmaster/flame/danmaku/ui/widget/a;)Lmaster/flame/danmaku/controller/f;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lmaster/flame/danmaku/ui/widget/a$a;->a:Lmaster/flame/danmaku/ui/widget/a;

    invoke-static {p1}, Lmaster/flame/danmaku/ui/widget/a;->a(Lmaster/flame/danmaku/ui/widget/a;)Lmaster/flame/danmaku/controller/f;

    move-result-object p1

    invoke-interface {p1}, Lmaster/flame/danmaku/controller/f;->getOnDanmakuClickListener()Lmaster/flame/danmaku/controller/f$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lmaster/flame/danmaku/ui/widget/a$a;->a:Lmaster/flame/danmaku/ui/widget/a;

    invoke-static {p1}, Lmaster/flame/danmaku/ui/widget/a;->a(Lmaster/flame/danmaku/ui/widget/a;)Lmaster/flame/danmaku/controller/f;

    move-result-object v0

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/f;->getXOff()F

    move-result v0

    invoke-static {p1, v0}, Lmaster/flame/danmaku/ui/widget/a;->c(Lmaster/flame/danmaku/ui/widget/a;F)F

    .line 4
    iget-object p1, p0, Lmaster/flame/danmaku/ui/widget/a$a;->a:Lmaster/flame/danmaku/ui/widget/a;

    invoke-static {p1}, Lmaster/flame/danmaku/ui/widget/a;->a(Lmaster/flame/danmaku/ui/widget/a;)Lmaster/flame/danmaku/controller/f;

    move-result-object v0

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/f;->getYOff()F

    move-result v0

    invoke-static {p1, v0}, Lmaster/flame/danmaku/ui/widget/a;->e(Lmaster/flame/danmaku/ui/widget/a;F)F

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/a$a;->a:Lmaster/flame/danmaku/ui/widget/a;

    invoke-static {v0}, Lmaster/flame/danmaku/ui/widget/a;->a(Lmaster/flame/danmaku/ui/widget/a;)Lmaster/flame/danmaku/controller/f;

    move-result-object v0

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/f;->getOnDanmakuClickListener()Lmaster/flame/danmaku/controller/f$a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/a$a;->a:Lmaster/flame/danmaku/ui/widget/a;

    invoke-static {v0}, Lmaster/flame/danmaku/ui/widget/a;->a(Lmaster/flame/danmaku/ui/widget/a;)Lmaster/flame/danmaku/controller/f;

    move-result-object v1

    invoke-interface {v1}, Lmaster/flame/danmaku/controller/f;->getXOff()F

    move-result v1

    invoke-static {v0, v1}, Lmaster/flame/danmaku/ui/widget/a;->c(Lmaster/flame/danmaku/ui/widget/a;F)F

    .line 3
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/a$a;->a:Lmaster/flame/danmaku/ui/widget/a;

    invoke-static {v0}, Lmaster/flame/danmaku/ui/widget/a;->a(Lmaster/flame/danmaku/ui/widget/a;)Lmaster/flame/danmaku/controller/f;

    move-result-object v1

    invoke-interface {v1}, Lmaster/flame/danmaku/controller/f;->getYOff()F

    move-result v1

    invoke-static {v0, v1}, Lmaster/flame/danmaku/ui/widget/a;->e(Lmaster/flame/danmaku/ui/widget/a;F)F

    .line 4
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/a$a;->a:Lmaster/flame/danmaku/ui/widget/a;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v0, v1, p1}, Lmaster/flame/danmaku/ui/widget/a;->f(Lmaster/flame/danmaku/ui/widget/a;FF)Lmaster/flame/danmaku/danmaku/model/m;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/m;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/a$a;->a:Lmaster/flame/danmaku/ui/widget/a;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lmaster/flame/danmaku/ui/widget/a;->g(Lmaster/flame/danmaku/ui/widget/a;Lmaster/flame/danmaku/danmaku/model/m;Z)Z

    :cond_1
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/a$a;->a:Lmaster/flame/danmaku/ui/widget/a;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v0, v1, p1}, Lmaster/flame/danmaku/ui/widget/a;->f(Lmaster/flame/danmaku/ui/widget/a;FF)Lmaster/flame/danmaku/danmaku/model/m;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/m;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/a$a;->a:Lmaster/flame/danmaku/ui/widget/a;

    invoke-static {v1, p1, v0}, Lmaster/flame/danmaku/ui/widget/a;->g(Lmaster/flame/danmaku/ui/widget/a;Lmaster/flame/danmaku/danmaku/model/m;Z)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    .line 4
    iget-object p1, p0, Lmaster/flame/danmaku/ui/widget/a$a;->a:Lmaster/flame/danmaku/ui/widget/a;

    invoke-static {p1}, Lmaster/flame/danmaku/ui/widget/a;->h(Lmaster/flame/danmaku/ui/widget/a;)Z

    move-result v0

    :cond_1
    return v0
.end method
