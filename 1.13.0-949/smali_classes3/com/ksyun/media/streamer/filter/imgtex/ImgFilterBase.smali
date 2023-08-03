.class public abstract Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;
.super Ljava/lang/Object;
.source "ImgFilterBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase$OnErrorListener;
    }
.end annotation


# instance fields
.field protected mErrorListener:Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase$OnErrorListener;

.field protected mGrindRatio:F

.field protected mMainSinkPinIndex:I

.field protected mRuddyRatio:F

.field protected mWhitenRatio:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 2
    iput v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->mGrindRatio:F

    .line 3
    iput v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->mWhitenRatio:F

    .line 4
    iput v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->mRuddyRatio:F

    return-void
.end method


# virtual methods
.method public getGrindRatio()F
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->mGrindRatio:F

    return v0
.end method

.method public getRuddyRatio()F
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->mRuddyRatio:F

    return v0
.end method

.method public getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ksyun/media/streamer/framework/SinkPin<",
            "Lcom/ksyun/media/streamer/framework/ImgTexFrame;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->mMainSinkPinIndex:I

    invoke-virtual {p0, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->getSinkPin(I)Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v0

    return-object v0
.end method

.method public abstract getSinkPin(I)Lcom/ksyun/media/streamer/framework/SinkPin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/ksyun/media/streamer/framework/SinkPin<",
            "Lcom/ksyun/media/streamer/framework/ImgTexFrame;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSinkPinNum()I
.end method

.method public abstract getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ksyun/media/streamer/framework/SrcPin<",
            "Lcom/ksyun/media/streamer/framework/ImgTexFrame;",
            ">;"
        }
    .end annotation
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.0"

    return-object v0
.end method

.method public getWhitenRatio()F
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->mWhitenRatio:F

    return v0
.end method

.method public isGrindRatioSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRuddyRatioSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isWhitenRatioSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public setGrindRatio(F)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->mGrindRatio:F

    return-void
.end method

.method public final setMainSinkPinIndex(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->mMainSinkPinIndex:I

    return-void
.end method

.method public setOnErrorListener(Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->mErrorListener:Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase$OnErrorListener;

    return-void
.end method

.method public setRuddyRatio(F)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->mRuddyRatio:F

    return-void
.end method

.method public setWhitenRatio(F)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->mWhitenRatio:F

    return-void
.end method
