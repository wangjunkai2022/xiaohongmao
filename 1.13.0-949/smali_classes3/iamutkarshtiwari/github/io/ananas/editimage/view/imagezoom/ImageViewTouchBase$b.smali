.class Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase$b;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->B(FFD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:D

.field b:D

.field final synthetic c:D

.field final synthetic d:J

.field final synthetic e:D

.field final synthetic f:D

.field final synthetic g:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;


# direct methods
.method constructor <init>(Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;DJDD)V
    .locals 0

    .line 1
    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase$b;->g:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;

    iput-wide p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase$b;->c:D

    iput-wide p4, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase$b;->d:J

    iput-wide p6, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase$b;->e:D

    iput-wide p8, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase$b;->f:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 p1, 0x0

    .line 2
    iput-wide p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase$b;->a:D

    .line 3
    iput-wide p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase$b;->b:D

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase$b;->c:D

    iget-wide v4, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase$b;->d:J

    sub-long/2addr v0, v4

    long-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 3
    iget-object v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase$b;->g:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;

    iget-object v4, v2, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->a:Lk7/e;

    iget-wide v9, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase$b;->e:D

    iget-wide v11, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase$b;->c:D

    const-wide/16 v7, 0x0

    move-wide v5, v0

    invoke-interface/range {v4 .. v12}, Lk7/e;->c(DDDD)D

    move-result-wide v2

    .line 4
    iget-object v4, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase$b;->g:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;

    iget-object v4, v4, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->a:Lk7/e;

    iget-wide v9, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase$b;->f:D

    iget-wide v11, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase$b;->c:D

    invoke-interface/range {v4 .. v12}, Lk7/e;->c(DDDD)D

    move-result-wide v4

    .line 5
    iget-object v6, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase$b;->g:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;

    iget-wide v7, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase$b;->a:D

    sub-double v7, v2, v7

    iget-wide v9, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase$b;->b:D

    sub-double v9, v4, v9

    invoke-virtual {v6, v7, v8, v9, v10}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->v(DD)V

    .line 6
    iput-wide v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase$b;->a:D

    .line 7
    iput-wide v4, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase$b;->b:D

    .line 8
    iget-wide v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase$b;->c:D

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    .line 9
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase$b;->g:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;

    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->e:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase$b;->g:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;

    iget-object v1, v0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->c:Landroid/graphics/Matrix;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->i(Landroid/graphics/Matrix;ZZ)Landroid/graphics/RectF;

    move-result-object v0

    .line 11
    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-nez v3, :cond_1

    iget v3, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_2

    .line 12
    :cond_1
    iget-object v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase$b;->g:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v1, v0}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->A(FF)V

    :cond_2
    :goto_0
    return-void
.end method
