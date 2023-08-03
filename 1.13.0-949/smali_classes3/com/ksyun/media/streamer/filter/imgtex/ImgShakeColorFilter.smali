.class public Lcom/ksyun/media/streamer/filter/imgtex/ImgShakeColorFilter;
.super Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;
.source "ImgShakeColorFilter.java"


# static fields
.field private static final a:Ljava/lang/String; = "fstep"


# instance fields
.field private b:[F


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    const/4 p1, 0x1

    new-array v0, p1, [F

    .line 2
    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgShakeColorFilter;->b:[F

    const-string v0, "fstep"

    .line 3
    invoke-virtual {p0, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->setGradientName(Ljava/lang/String;)V

    const/16 v0, 0x1f

    .line 4
    invoke-virtual {p0, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->setFragment(I)V

    const v0, 0x3dcccccd    # 0.1f

    .line 5
    invoke-virtual {p0, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->setMAXGradientFactorValue(F)V

    const/16 v0, 0xa

    .line 6
    invoke-virtual {p0, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->setGradientFactorFrameCount(I)V

    .line 7
    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->setEffectAuto(Z)V

    return-void
.end method


# virtual methods
.method protected getGradientValue()[F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgShakeColorFilter;->b:[F

    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->getGradientFactorValue()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgShakeColorFilter;->b:[F

    return-object v0
.end method

.method protected getVSinkPinNum()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
