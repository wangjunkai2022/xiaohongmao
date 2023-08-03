.class Lmaster/flame/danmaku/ui/widget/a$b;
.super Lmaster/flame/danmaku/danmaku/model/m$c;
.source "DanmakuTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmaster/flame/danmaku/ui/widget/a;->n(FF)Lmaster/flame/danmaku/danmaku/model/m;
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
.field final synthetic e:F

.field final synthetic f:F

.field final synthetic g:Lmaster/flame/danmaku/danmaku/model/m;

.field final synthetic h:Lmaster/flame/danmaku/ui/widget/a;


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/ui/widget/a;FFLmaster/flame/danmaku/danmaku/model/m;)V
    .locals 0

    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/a$b;->h:Lmaster/flame/danmaku/ui/widget/a;

    iput p2, p0, Lmaster/flame/danmaku/ui/widget/a$b;->e:F

    iput p3, p0, Lmaster/flame/danmaku/ui/widget/a$b;->f:F

    iput-object p4, p0, Lmaster/flame/danmaku/ui/widget/a$b;->g:Lmaster/flame/danmaku/danmaku/model/m;

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/m$c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/ui/widget/a$b;->e(Lmaster/flame/danmaku/danmaku/model/d;)I

    move-result p1

    return p1
.end method

.method public e(Lmaster/flame/danmaku/danmaku/model/d;)I
    .locals 6

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/a$b;->h:Lmaster/flame/danmaku/ui/widget/a;

    invoke-static {v0}, Lmaster/flame/danmaku/ui/widget/a;->i(Lmaster/flame/danmaku/ui/widget/a;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->g()F

    move-result v1

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->m()F

    move-result v2

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->i()F

    move-result v3

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->d()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/a$b;->h:Lmaster/flame/danmaku/ui/widget/a;

    invoke-static {v0}, Lmaster/flame/danmaku/ui/widget/a;->i(Lmaster/flame/danmaku/ui/widget/a;)Landroid/graphics/RectF;

    move-result-object v0

    iget v1, p0, Lmaster/flame/danmaku/ui/widget/a$b;->e:F

    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/a$b;->h:Lmaster/flame/danmaku/ui/widget/a;

    invoke-static {v2}, Lmaster/flame/danmaku/ui/widget/a;->b(Lmaster/flame/danmaku/ui/widget/a;)F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lmaster/flame/danmaku/ui/widget/a$b;->f:F

    iget-object v3, p0, Lmaster/flame/danmaku/ui/widget/a$b;->h:Lmaster/flame/danmaku/ui/widget/a;

    invoke-static {v3}, Lmaster/flame/danmaku/ui/widget/a;->d(Lmaster/flame/danmaku/ui/widget/a;)F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, p0, Lmaster/flame/danmaku/ui/widget/a$b;->e:F

    iget-object v4, p0, Lmaster/flame/danmaku/ui/widget/a$b;->h:Lmaster/flame/danmaku/ui/widget/a;

    invoke-static {v4}, Lmaster/flame/danmaku/ui/widget/a;->b(Lmaster/flame/danmaku/ui/widget/a;)F

    move-result v4

    add-float/2addr v3, v4

    iget v4, p0, Lmaster/flame/danmaku/ui/widget/a$b;->f:F

    iget-object v5, p0, Lmaster/flame/danmaku/ui/widget/a$b;->h:Lmaster/flame/danmaku/ui/widget/a;

    invoke-static {v5}, Lmaster/flame/danmaku/ui/widget/a;->d(Lmaster/flame/danmaku/ui/widget/a;)F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/a$b;->g:Lmaster/flame/danmaku/danmaku/model/m;

    invoke-interface {v0, p1}, Lmaster/flame/danmaku/danmaku/model/m;->i(Lmaster/flame/danmaku/danmaku/model/d;)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
