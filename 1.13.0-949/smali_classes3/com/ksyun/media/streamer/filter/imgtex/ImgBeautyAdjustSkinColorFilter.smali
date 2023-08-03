.class public Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyAdjustSkinColorFilter;
.super Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;
.source "ImgBeautyAdjustSkinColorFilter.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Landroid/graphics/Bitmap;

.field private d:Ljava/lang/String;

.field private e:Landroid/graphics/Bitmap;

.field private f:[I

.field private g:[I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/util/gles/GLRender;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string p4, "uniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    const/16 v0, 0xc

    .line 1
    invoke-direct {p0, p1, p4, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;Ljava/lang/String;I)V

    const/4 p1, 0x1

    new-array p4, p1, [I

    const/4 v0, 0x0

    const/4 v1, -0x1

    aput v1, p4, v0

    .line 2
    iput-object p4, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyAdjustSkinColorFilter;->f:[I

    new-array p1, p1, [I

    aput v1, p1, v0

    .line 3
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyAdjustSkinColorFilter;->g:[I

    .line 4
    invoke-static {p2, p3, v0, v0}, Lcom/ksyun/media/streamer/util/BitmapLoader;->loadBitmap(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyAdjustSkinColorFilter;->c:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    iput-object p3, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyAdjustSkinColorFilter;->b:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyAdjustSkinColorFilter;->a:Landroid/content/Context;

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Resource bitmap not valid!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public isRuddyRatioSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

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
    .locals 2

    const v0, 0x84c2

    .line 1
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyAdjustSkinColorFilter;->f:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 3
    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyAdjustSkinColorFilter;->h:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 4
    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyAdjustSkinColorFilter;->i:I

    iget v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->mRuddyRatio:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method

.method protected onInitialized()V
    .locals 4

    const-string v0, "whitenTexture"

    .line 1
    invoke-virtual {p0, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyAdjustSkinColorFilter;->h:I

    const-string v0, "skinColorRatio"

    .line 2
    invoke-virtual {p0, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyAdjustSkinColorFilter;->i:I

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyAdjustSkinColorFilter;->c:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyAdjustSkinColorFilter;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyAdjustSkinColorFilter;->b:Ljava/lang/String;

    invoke-static {v0, v2, v1, v1}, Lcom/ksyun/media/streamer/util/BitmapLoader;->loadBitmap(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyAdjustSkinColorFilter;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyAdjustSkinColorFilter;->f:[I

    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyAdjustSkinColorFilter;->c:Landroid/graphics/Bitmap;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->loadTexture(Landroid/graphics/Bitmap;I)I

    move-result v2

    aput v2, v0, v1

    .line 7
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyAdjustSkinColorFilter;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyAdjustSkinColorFilter;->c:Landroid/graphics/Bitmap;

    return-void

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Resource bitmap not valid!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onRelease()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->onRelease()V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyAdjustSkinColorFilter;->f:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyAdjustSkinColorFilter;->f:[I

    const/4 v1, -0x1

    aput v1, v0, v2

    return-void
.end method

.method public setRuddyRatio(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->setRuddyRatio(F)V

    return-void
.end method
