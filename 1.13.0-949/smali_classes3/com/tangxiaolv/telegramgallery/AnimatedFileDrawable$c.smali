.class Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$c;
.super Ljava/lang/Object;
.source "AnimatedFileDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$c;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$c;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->g(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$c;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->h(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$c;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->p(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$c;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->j(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$c;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-static {v3}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->c(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)[I

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->k(Ljava/lang/String;[I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->q(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;I)I

    .line 4
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$c;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-static {v0, v1}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->i(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;Z)Z

    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$c;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->s(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    .line 6
    :try_start_1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$c;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->c(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$c;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-static {v3}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->c(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)[I

    move-result-object v3

    aget v1, v3, v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->t(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$c;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->x(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)Landroid/graphics/BitmapShader;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$c;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->s(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$c;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->l(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$c;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    new-instance v1, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$c;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->s(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v2, v3, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-static {v0, v1}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->y(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;Landroid/graphics/BitmapShader;)Landroid/graphics/BitmapShader;

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$c;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->s(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$c;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->p(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)I

    move-result v0

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$c;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->s(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$c;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->c(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->m(ILandroid/graphics/Bitmap;[I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable$c;->a:Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->n(Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->D(Ljava/lang/Runnable;)V

    return-void
.end method
