.class public Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;
.super Landroid/view/View;
.source "BackupImageView.java"


# instance fields
.field private a:Lcom/tangxiaolv/telegramgallery/k;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->b:I

    .line 3
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->c:I

    .line 4
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->b:I

    .line 7
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->c:I

    .line 8
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 10
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->b:I

    .line 11
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->c:I

    .line 12
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    new-instance v0, Lcom/tangxiaolv/telegramgallery/k;

    invoke-direct {v0, p0}, Lcom/tangxiaolv/telegramgallery/k;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->a:Lcom/tangxiaolv/telegramgallery/k;

    return-void
.end method


# virtual methods
.method public b(Lcom/tangxiaolv/telegramgallery/TL/m;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 10

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v9}, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->h(Lcom/tangxiaolv/telegramgallery/TL/m;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public c(Lcom/tangxiaolv/telegramgallery/TL/m;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 10

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move v9, p4

    invoke-virtual/range {v0 .. v9}, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->h(Lcom/tangxiaolv/telegramgallery/TL/m;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public d(Lcom/tangxiaolv/telegramgallery/TL/m;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 10

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v9}, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->h(Lcom/tangxiaolv/telegramgallery/TL/m;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public e(Lcom/tangxiaolv/telegramgallery/TL/m;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .locals 10

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v9, p4

    invoke-virtual/range {v0 .. v9}, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->h(Lcom/tangxiaolv/telegramgallery/TL/m;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public f(Lcom/tangxiaolv/telegramgallery/TL/m;Ljava/lang/String;Lcom/tangxiaolv/telegramgallery/TL/d;I)V
    .locals 10

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v6, p3

    move v9, p4

    invoke-virtual/range {v0 .. v9}, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->h(Lcom/tangxiaolv/telegramgallery/TL/m;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public g(Lcom/tangxiaolv/telegramgallery/TL/m;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 10

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p4

    move-object v8, p3

    invoke-virtual/range {v0 .. v9}, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->h(Lcom/tangxiaolv/telegramgallery/TL/m;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public getImageReceiver()Lcom/tangxiaolv/telegramgallery/k;
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->a:Lcom/tangxiaolv/telegramgallery/k;

    return-object v0
.end method

.method public h(Lcom/tangxiaolv/telegramgallery/TL/m;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 13

    move-object/from16 v0, p5

    if-eqz v0, :cond_0

    .line 1
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, p0

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object/from16 v7, p4

    .line 2
    :goto_0
    iget-object v3, v0, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->a:Lcom/tangxiaolv/telegramgallery/k;

    const/4 v12, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p9

    move-object/from16 v11, p8

    invoke-virtual/range {v3 .. v12}, Lcom/tangxiaolv/telegramgallery/k;->c0(Lcom/tangxiaolv/telegramgallery/TL/m;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 10

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v9}, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->h(Lcom/tangxiaolv/telegramgallery/TL/m;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public j(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->a:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v0, p1, p2}, Lcom/tangxiaolv/telegramgallery/k;->k0(IZ)V

    return-void
.end method

.method public k(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->b:I

    .line 2
    iput p2, p0, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->c:I

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->a:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/k;->O()Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->a:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/k;->P()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->c:I

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->a:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->b:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->c:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v4, p0, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->b:I

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/tangxiaolv/telegramgallery/k;->h0(IIII)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->a:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/tangxiaolv/telegramgallery/k;->h0(IIII)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->a:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v0, p1}, Lcom/tangxiaolv/telegramgallery/k;->d(Landroid/graphics/Canvas;)Z

    return-void
.end method

.method public setAspectFit(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->a:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v0, p1}, Lcom/tangxiaolv/telegramgallery/k;->T(Z)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->a:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v0, p1}, Lcom/tangxiaolv/telegramgallery/k;->e0(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->a:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v0, p1}, Lcom/tangxiaolv/telegramgallery/k;->f0(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->a:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tangxiaolv/telegramgallery/k;->f0(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setRoundRadius(I)V
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->a:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v0, p1}, Lcom/tangxiaolv/telegramgallery/k;->n0(I)V

    return-void
.end method
