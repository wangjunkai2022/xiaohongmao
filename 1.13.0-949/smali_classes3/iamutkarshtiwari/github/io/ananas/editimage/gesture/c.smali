.class public Liamutkarshtiwari/github/io/ananas/editimage/gesture/c;
.super Ljava/lang/Object;
.source "ScaleGestureListener.java"

# interfaces
.implements Li7/g;


# instance fields
.field private a:Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;

.field private b:F

.field private c:F

.field private d:Liamutkarshtiwari/github/io/ananas/editimage/gesture/Vector2D;


# direct methods
.method constructor <init>(Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/Vector2D;

    invoke-direct {v0}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/Vector2D;-><init>()V

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/c;->d:Liamutkarshtiwari/github/io/ananas/editimage/gesture/Vector2D;

    .line 3
    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/c;->a:Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;)Z
    .locals 4

    .line 1
    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/d;

    invoke-direct {v0}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/d;-><init>()V

    .line 2
    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/c;->a:Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;

    iget-boolean v1, v1, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->d:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->l()F

    move-result v1

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    iput v1, v0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/d;->c:F

    .line 3
    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/c;->a:Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;

    iget-boolean v1, v1, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->b:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/c;->d:Liamutkarshtiwari/github/io/ananas/editimage/gesture/Vector2D;

    invoke-virtual {p2}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->c()Liamutkarshtiwari/github/io/ananas/editimage/gesture/Vector2D;

    move-result-object v3

    invoke-static {v1, v3}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/e;->a(Liamutkarshtiwari/github/io/ananas/editimage/gesture/Vector2D;Liamutkarshtiwari/github/io/ananas/editimage/gesture/Vector2D;)F

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput v1, v0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/d;->d:F

    .line 4
    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/c;->a:Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;

    iget-boolean v1, v1, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->c:Z

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->g()F

    move-result v1

    iget v3, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/c;->b:F

    sub-float/2addr v1, v3

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput v1, v0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/d;->a:F

    .line 5
    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/c;->a:Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;

    iget-boolean v1, v1, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->c:Z

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->h()F

    move-result p2

    iget v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/c;->c:F

    sub-float v2, p2, v1

    :cond_3
    iput v2, v0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/d;->b:F

    .line 6
    iget p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/c;->b:F

    iput p2, v0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/d;->e:F

    .line 7
    iget p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/c;->c:F

    iput p2, v0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/d;->f:F

    .line 8
    iget-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/c;->a:Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;

    iget v1, p2, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->e:F

    iput v1, v0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/d;->g:F

    .line 9
    iget v1, p2, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->f:F

    iput v1, v0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/d;->h:F

    .line 10
    invoke-virtual {p2, p1, v0}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->g(Landroid/view/View;Liamutkarshtiwari/github/io/ananas/editimage/gesture/d;)V

    .line 11
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/c;->a:Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;

    iget-boolean p1, p1, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->t:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public b(Landroid/view/View;Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->g()F

    move-result p1

    iput p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/c;->b:F

    .line 2
    invoke-virtual {p2}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->h()F

    move-result p1

    iput p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/c;->c:F

    .line 3
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/c;->d:Liamutkarshtiwari/github/io/ananas/editimage/gesture/Vector2D;

    invoke-virtual {p2}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->c()Liamutkarshtiwari/github/io/ananas/editimage/gesture/Vector2D;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 4
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/c;->a:Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;

    iget-boolean p1, p1, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->t:Z

    return p1
.end method

.method public c(Landroid/view/View;Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;)V
    .locals 0

    return-void
.end method
