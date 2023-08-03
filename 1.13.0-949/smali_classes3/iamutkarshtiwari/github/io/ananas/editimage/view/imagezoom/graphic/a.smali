.class public Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/graphic/a;
.super Landroid/graphics/drawable/Drawable;
.source "FastBitmapDrawable.java"

# interfaces
.implements Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/graphic/b;


# instance fields
.field protected a:Landroid/graphics/Bitmap;

.field protected b:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V
    .locals 0

    .line 6
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/graphic/a;-><init>(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/graphic/a;->a:Landroid/graphics/Bitmap;

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/graphic/a;->b:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 5
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/graphic/a;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/graphic/a;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public b(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/graphic/a;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/graphic/a;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/graphic/a;->b:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/graphic/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/graphic/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/graphic/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/graphic/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/graphic/a;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/graphic/a;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
