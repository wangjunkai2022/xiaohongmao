.class public Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;
.super Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;
.source "ImgBufMixer.java"


# static fields
.field private static final a:I = 0x8


# instance fields
.field private b:[Landroid/graphics/RectF;

.field private c:[Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap$ImgBufMixerConfig;

.field private d:Z

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;-><init>(Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;)V

    .line 2
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;->getSinkPinNum()I

    move-result p1

    new-array p1, p1, [Landroid/graphics/RectF;

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;->b:[Landroid/graphics/RectF;

    .line 3
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;->getSinkPinNum()I

    move-result p1

    new-array p1, p1, [Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap$ImgBufMixerConfig;

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;->c:[Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap$ImgBufMixerConfig;

    return-void
.end method

.method private a()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->mInputFrames:[Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 2
    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected doFilter()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;->d:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->mImagePreProcess:Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;

    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->mInputFrames:[Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;->c:[Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap$ImgBufMixerConfig;

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;->a([Lcom/ksyun/media/streamer/framework/ImgBufFrame;[Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap$ImgBufMixerConfig;)Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->mOutPutFrame:Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->mInputFrames:[Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    iget v1, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->mMainSinkPinIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->mOutPutFrame:Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    :goto_0
    return-void
.end method

.method public getSinkPinNum()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method protected getSrcPinFormat()Lcom/ksyun/media/streamer/framework/ImgBufFormat;
    .locals 5

    new-instance v0, Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    iget v1, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;->e:I

    iget v2, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;->f:I

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/ksyun/media/streamer/framework/ImgBufFormat;-><init>(IIII)V

    return-object v0
.end method

.method protected onFormatChanged(ILcom/ksyun/media/streamer/framework/ImgBufFormat;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;->c:[Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap$ImgBufMixerConfig;

    aget-object v1, v0, p1

    if-eqz v1, :cond_0

    .line 2
    aget-object v1, v0, p1

    iget v2, p2, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->width:I

    iput v2, v1, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap$ImgBufMixerConfig;->w:I

    .line 3
    aget-object p1, v0, p1

    iget p2, p2, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->height:I

    iput p2, p1, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap$ImgBufMixerConfig;->h:I

    :cond_0
    return-void
.end method

.method public release()V
    .locals 0

    invoke-super {p0}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->release()V

    return-void
.end method

.method public setRenderRect(IFFFFF)V
    .locals 1

    .line 8
    new-instance v0, Landroid/graphics/RectF;

    add-float/2addr p4, p2

    add-float/2addr p5, p3

    invoke-direct {v0, p2, p3, p4, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 9
    invoke-virtual {p0, p1, v0, p6}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;->setRenderRect(ILandroid/graphics/RectF;F)V

    return-void
.end method

.method public setRenderRect(ILandroid/graphics/RectF;F)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;->getSinkPinNum()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;->b:[Landroid/graphics/RectF;

    aput-object p2, v0, p1

    .line 3
    new-instance v0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap$ImgBufMixerConfig;

    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;->e:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    float-to-int v2, v1

    iget v1, p2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;->f:I

    int-to-float v3, v3

    mul-float v1, v1, v3

    float-to-int v3, v1

    .line 4
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v4, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;->e:I

    int-to-float v4, v4

    mul-float v1, v1, v4

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v4, v1, 0x2

    .line 5
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    iget v1, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;->f:I

    int-to-float v1, v1

    mul-float p2, p2, v1

    float-to-int p2, p2

    div-int/lit8 p2, p2, 0x2

    mul-int/lit8 v5, p2, 0x2

    const/high16 p2, 0x437f0000    # 255.0f

    mul-float p3, p3, p2

    float-to-int v6, p3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap$ImgBufMixerConfig;-><init>(IIIII)V

    .line 6
    iget-object p2, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;->c:[Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap$ImgBufMixerConfig;

    aput-object v0, p2, p1

    :cond_0
    if-lez p1, :cond_1

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;->d:Z

    :cond_1
    return-void
.end method

.method public setTargetSize(II)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;->e:I

    .line 2
    iput p2, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;->f:I

    const/4 p1, 0x0

    .line 3
    :goto_0
    iget-object p2, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;->b:[Landroid/graphics/RectF;

    array-length v0, p2

    if-ge p1, v0, :cond_4

    .line 4
    aget-object p2, p2, p1

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;->c:[Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap$ImgBufMixerConfig;

    aget-object v0, v0, p1

    if-eqz p2, :cond_3

    if-eqz v0, :cond_3

    .line 6
    iget v1, v0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap$ImgBufMixerConfig;->x:I

    if-nez v1, :cond_0

    .line 7
    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;->e:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap$ImgBufMixerConfig;->x:I

    .line 8
    :cond_0
    iget v1, v0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap$ImgBufMixerConfig;->y:I

    if-nez v1, :cond_1

    .line 9
    iget v1, p2, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;->f:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap$ImgBufMixerConfig;->y:I

    .line 10
    :cond_1
    iget v1, v0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap$ImgBufMixerConfig;->w:I

    if-nez v1, :cond_2

    .line 11
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;->e:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap$ImgBufMixerConfig;->w:I

    .line 12
    :cond_2
    iget v1, v0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap$ImgBufMixerConfig;->h:I

    if-nez v1, :cond_3

    .line 13
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    iget v1, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;->f:I

    int-to-float v1, v1

    mul-float p2, p2, v1

    float-to-int p2, p2

    div-int/lit8 p2, p2, 0x2

    mul-int/lit8 p2, p2, 0x2

    iput p2, v0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap$ImgBufMixerConfig;->h:I

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
