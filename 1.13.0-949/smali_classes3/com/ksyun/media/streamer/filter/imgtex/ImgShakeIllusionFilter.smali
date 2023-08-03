.class public Lcom/ksyun/media/streamer/filter/imgtex/ImgShakeIllusionFilter;
.super Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;
.source "ImgShakeIllusionFilter.java"


# static fields
.field private static final a:Ljava/lang/String; = "temperature"


# instance fields
.field private b:[F

.field private c:F

.field private d:F


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    const/4 p1, 0x1

    new-array p1, p1, [F

    .line 2
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgShakeIllusionFilter;->b:[F

    const-string p1, "temperature"

    .line 3
    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->setGradientName(Ljava/lang/String;)V

    const/16 p1, 0x24

    .line 4
    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->setFragment(I)V

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->setEffectAuto(Z)V

    const v0, 0x455ac000    # 3500.0f

    .line 6
    iput v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgShakeIllusionFilter;->c:F

    const/high16 v0, 0x40a00000    # 5.0f

    .line 7
    iput v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgShakeIllusionFilter;->d:F

    .line 8
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->getVSinkPin(I)Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    return-void
.end method


# virtual methods
.method protected getGradientValue()[F
    .locals 3

    .line 1
    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgShakeIllusionFilter;->c:F

    iget v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgShakeIllusionFilter;->d:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgShakeIllusionFilter;->c:F

    const v1, 0x45ea6000    # 7500.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const v0, 0x455ac000    # 3500.0f

    .line 2
    iput v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgShakeIllusionFilter;->c:F

    .line 3
    :cond_0
    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgShakeIllusionFilter;->c:F

    const v1, 0x459c4000    # 5000.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    const v2, 0x39d1b717    # 4.0E-4f

    goto :goto_0

    :cond_1
    const v2, 0x387ba882    # 6.0E-5f

    :goto_0
    sub-float/2addr v0, v1

    mul-float v0, v0, v2

    .line 4
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgShakeIllusionFilter;->b:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    return-object v1
.end method

.method protected getVSinkPinNum()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onDisconnect(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->onDisconnect(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->getVSinkPin(I)Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Lcom/ksyun/media/streamer/framework/SinkPin;Z)V

    return-void
.end method
