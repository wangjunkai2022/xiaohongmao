.class public Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyLookUpFilter;
.super Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;
.source "ImgBeautyLookUpFilter.java"


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Landroid/graphics/Bitmap;

.field private e:[I

.field private f:F

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/util/gles/GLRender;Landroid/content/Context;)V
    .locals 2

    const-string v0, "uniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    const/16 v1, 0xa

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;Ljava/lang/String;I)V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyLookUpFilter;->a:Ljava/lang/Object;

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/4 v1, -0x1

    aput v1, p1, v0

    .line 3
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyLookUpFilter;->e:[I

    const/high16 p1, 0x3f000000    # 0.5f

    .line 4
    iput p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyLookUpFilter;->f:F

    .line 5
    iput-object p2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyLookUpFilter;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected onDrawArraysAfter()V
    .locals 2

    const v0, 0x84c2

    .line 1
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method protected onDrawArraysPre()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyLookUpFilter;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyLookUpFilter;->d:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyLookUpFilter;->e:[I

    iget-object v3, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyLookUpFilter;->d:Landroid/graphics/Bitmap;

    aget v4, v1, v2

    invoke-static {v3, v4}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->loadTexture(Landroid/graphics/Bitmap;I)I

    move-result v3

    aput v3, v1, v2

    .line 4
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyLookUpFilter;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyLookUpFilter;->d:Landroid/graphics/Bitmap;

    .line 6
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v0, 0x84c2

    .line 7
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    .line 8
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyLookUpFilter;->e:[I

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 9
    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyLookUpFilter;->g:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 10
    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyLookUpFilter;->h:I

    iget v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyLookUpFilter;->f:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void

    :catchall_0
    move-exception v1

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected onInitialized()V
    .locals 5

    const-string v0, "lookUpTexture"

    .line 1
    invoke-virtual {p0, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyLookUpFilter;->g:I

    const-string v0, "intensity"

    .line 2
    invoke-virtual {p0, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyLookUpFilter;->h:I

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyLookUpFilter;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyLookUpFilter;->d:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyLookUpFilter;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyLookUpFilter;->c:Ljava/lang/String;

    invoke-static {v1, v3, v2, v2}, Lcom/ksyun/media/streamer/util/BitmapLoader;->loadBitmap(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyLookUpFilter;->d:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyLookUpFilter;->e:[I

    iget-object v3, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyLookUpFilter;->d:Landroid/graphics/Bitmap;

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->loadTexture(Landroid/graphics/Bitmap;I)I

    move-result v3

    aput v3, v1, v2

    .line 8
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyLookUpFilter;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyLookUpFilter;->d:Landroid/graphics/Bitmap;

    .line 10
    monitor-exit v0

    return-void

    .line 11
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Resource bitmap not valid!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onRelease()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->onRelease()V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyLookUpFilter;->e:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyLookUpFilter;->e:[I

    const/4 v1, -0x1

    aput v1, v0, v2

    return-void
.end method

.method public setIntensity(F)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyLookUpFilter;->f:F

    return-void
.end method

.method public setLookupBitmap(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyLookUpFilter;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1}, Lcom/ksyun/media/streamer/util/BitmapLoader;->loadBitmap(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyLookUpFilter;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyLookUpFilter;->c:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyLookUpFilter;->d:Landroid/graphics/Bitmap;

    .line 6
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Resource bitmap not valid!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
