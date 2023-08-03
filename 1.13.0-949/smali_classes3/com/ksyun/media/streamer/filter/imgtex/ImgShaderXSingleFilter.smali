.class public Lcom/ksyun/media/streamer/filter/imgtex/ImgShaderXSingleFilter;
.super Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;
.source "ImgShaderXSingleFilter.java"


# static fields
.field private static final a:Ljava/lang/String; = "fstep"

.field private static final b:Ljava/lang/String; = "aspectRatio"


# instance fields
.field private c:I

.field private d:[F

.field private e:F


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgShaderXSingleFilter;->c:I

    const/4 p1, 0x1

    new-array v0, p1, [F

    .line 3
    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgShaderXSingleFilter;->d:[F

    const-string v0, "fstep"

    .line 4
    invoke-virtual {p0, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->setGradientName(Ljava/lang/String;)V

    const/16 v0, 0x23

    .line 5
    invoke-virtual {p0, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->setFragment(I)V

    const/high16 v0, 0x41200000    # 10.0f

    .line 6
    invoke-virtual {p0, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->setMAXGradientFactorValue(F)V

    const/16 v0, 0x3e8

    .line 7
    invoke-virtual {p0, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->setGradientFactorFrameCount(I)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->setEffectAuto(Z)V

    return-void
.end method


# virtual methods
.method protected getGradientValue()[F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgShaderXSingleFilter;->d:[F

    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->getGradientFactorValue()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgShaderXSingleFilter;->d:[F

    return-object v0
.end method

.method protected getVSinkPinNum()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDrawArraysPre()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgShaderXSingleFilter;->c:I

    if-ltz v0, :cond_0

    .line 2
    iget v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgShaderXSingleFilter;->e:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->onDrawArraysPre()V

    return-void
.end method

.method protected onFormatChanged(Lcom/ksyun/media/streamer/framework/ImgTexFormat;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->getSrcPinFormat()Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    move-result-object p1

    iget p1, p1, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->width:I

    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->getSrcPinFormat()Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    move-result-object v0

    iget v0, v0, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->height:I

    if-le p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->getSrcPinFormat()Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    move-result-object p1

    iget p1, p1, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->width:I

    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->getSrcPinFormat()Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    move-result-object v0

    iget v0, v0, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->height:I

    div-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgShaderXSingleFilter;->e:F

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->getSrcPinFormat()Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    move-result-object p1

    iget p1, p1, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->height:I

    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->getSrcPinFormat()Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    move-result-object v0

    iget v0, v0, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->width:I

    div-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgShaderXSingleFilter;->e:F

    :goto_0
    return-void
.end method

.method public onInitialized()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->onInitialized()V

    :try_start_0
    const-string v0, "aspectRatio"

    .line 2
    invoke-virtual {p0, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgShaderXSingleFilter;->c:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
