.class public Lcom/facebook/drawee/drawable/i;
.super Lcom/facebook/drawee/drawable/h;
.source "InstrumentedDrawable.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/drawee/drawable/i$a;
    }
.end annotation


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:Lcom/facebook/drawee/drawable/i$a;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/i$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "drawable",
            "listener"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/drawee/drawable/h;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/facebook/drawee/drawable/i;->g:Z

    .line 3
    iput-object p2, p0, Lcom/facebook/drawee/drawable/i;->f:Lcom/facebook/drawee/drawable/i$a;

    .line 4
    invoke-direct {p0, p1}, Lcom/facebook/drawee/drawable/i;->z(Landroid/graphics/drawable/Drawable;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/drawee/drawable/i;->e:Ljava/lang/String;

    return-void
.end method

.method private z(Landroid/graphics/drawable/Drawable;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/facebook/drawee/drawable/r;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/facebook/drawee/drawable/r;

    invoke-virtual {p1}, Lcom/facebook/drawee/drawable/r;->C()Lcom/facebook/drawee/drawable/s$c;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "none"

    return-object p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/i;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/facebook/drawee/drawable/i;->g:Z

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 4
    invoke-virtual {p0, v0}, Lcom/facebook/drawee/drawable/h;->q(Landroid/graphics/RectF;)V

    .line 5
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v3, v1

    .line 6
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v4, v1

    .line 7
    invoke-virtual {p0, v0}, Lcom/facebook/drawee/drawable/h;->w(Landroid/graphics/RectF;)V

    .line 8
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v7, v1

    .line 9
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v8, v0

    .line 10
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/h;->getIntrinsicWidth()I

    move-result v5

    .line 11
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/h;->getIntrinsicHeight()I

    move-result v6

    .line 12
    iget-object v2, p0, Lcom/facebook/drawee/drawable/i;->f:Lcom/facebook/drawee/drawable/i$a;

    if-eqz v2, :cond_0

    .line 13
    iget-object v9, p0, Lcom/facebook/drawee/drawable/i;->e:Ljava/lang/String;

    invoke-interface/range {v2 .. v9}, Lcom/facebook/drawee/drawable/i$a;->a(IIIIIILjava/lang/String;)V

    .line 14
    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/drawee/drawable/h;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
