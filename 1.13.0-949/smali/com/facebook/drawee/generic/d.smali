.class public Lcom/facebook/drawee/generic/d;
.super Lcom/facebook/drawee/drawable/h;
.source "RootDrawable.java"

# interfaces
.implements Lcom/facebook/drawee/drawable/v;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# instance fields
.field e:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private f:Lcom/facebook/drawee/drawable/w;
    .annotation runtime Lr7/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/drawee/drawable/h;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/facebook/drawee/generic/d;->e:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/generic/d;->f:Lcom/facebook/drawee/drawable/w;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Lcom/facebook/drawee/drawable/w;->onDraw()V

    .line 4
    :cond_1
    invoke-super {p0, p1}, Lcom/facebook/drawee/drawable/h;->draw(Landroid/graphics/Canvas;)V

    .line 5
    iget-object v0, p0, Lcom/facebook/drawee/generic/d;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 7
    iget-object v0, p0, Lcom/facebook/drawee/generic/d;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public r(Lcom/facebook/drawee/drawable/w;)V
    .locals 0
    .param p1    # Lcom/facebook/drawee/drawable/w;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibilityCallback"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/drawee/generic/d;->f:Lcom/facebook/drawee/drawable/w;

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "visible",
            "restart"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/d;->f:Lcom/facebook/drawee/drawable/w;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/facebook/drawee/drawable/w;->a(Z)V

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/facebook/drawee/drawable/h;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public z(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controllerOverlay"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/generic/d;->e:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
