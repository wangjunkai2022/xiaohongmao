.class public Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyProFilter;
.super Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;
.source "ImgBeautyProFilter.java"


# static fields
.field private static final a:Ljava/lang/String; = "ImgBeautyProFilter"


# instance fields
.field private b:Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/util/gles/GLRender;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyProFilter;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Lcom/ksyun/media/streamer/util/gles/GLRender;Landroid/content/Context;I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;-><init>()V

    const v0, 0x3e99999a    # 0.3f

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x1

    if-ne p3, v2, :cond_0

    .line 3
    new-instance p3, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySimpleFilter;

    invoke-direct {p3, p1, p2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySimpleFilter;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyProFilter;->b:Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;

    .line 4
    invoke-virtual {p0, v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyProFilter;->setGrindRatio(F)V

    .line 5
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyProFilter;->b:Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;

    check-cast p1, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySimpleFilter;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySimpleFilter;->setScaleLumance(F)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p3, v2, :cond_1

    .line 6
    new-instance p3, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyAdvanceFilter;

    invoke-direct {p3, p1, p2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyAdvanceFilter;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyProFilter;->b:Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;

    .line 7
    invoke-virtual {p0, v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyProFilter;->setGrindRatio(F)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p3, v1, :cond_2

    .line 8
    new-instance p3, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySimpleFilter;

    invoke-direct {p3, p1, p2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySimpleFilter;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyProFilter;->b:Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;

    const p1, 0x3e4ccccd    # 0.2f

    .line 9
    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyProFilter;->setGrindRatio(F)V

    .line 10
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyProFilter;->b:Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;

    check-cast p1, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySimpleFilter;

    const p2, 0x3f333333    # 0.7f

    invoke-virtual {p1, p2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySimpleFilter;->setScaleLumance(F)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne p3, v1, :cond_3

    .line 11
    new-instance p3, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyAdvanceFilter;

    invoke-direct {p3, p1, p2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyAdvanceFilter;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyProFilter;->b:Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;

    .line 12
    invoke-virtual {p0, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyProFilter;->setGrindRatio(F)V

    .line 13
    :goto_0
    invoke-virtual {p0, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyProFilter;->setWhitenRatio(F)V

    const p1, -0x41666666    # -0.3f

    .line 14
    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyProFilter;->setRuddyRatio(F)V

    return-void

    .line 15
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "only type 1-4 supported!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getSinkPin(I)Lcom/ksyun/media/streamer/framework/SinkPin;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/ksyun/media/streamer/framework/SinkPin<",
            "Lcom/ksyun/media/streamer/framework/ImgTexFrame;",
            ">;"
        }
    .end annotation

    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyProFilter;->b:Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object p1

    return-object p1
.end method

.method public getSinkPinNum()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ksyun/media/streamer/framework/SrcPin<",
            "Lcom/ksyun/media/streamer/framework/ImgTexFrame;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyProFilter;->b:Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.4"

    return-object v0
.end method

.method public isGrindRatioSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyProFilter;->b:Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->isGrindRatioSupported()Z

    move-result v0

    return v0
.end method

.method public isRuddyRatioSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyProFilter;->b:Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->isRuddyRatioSupported()Z

    move-result v0

    return v0
.end method

.method public isWhitenRatioSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyProFilter;->b:Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->isWhitenRatioSupported()Z

    move-result v0

    return v0
.end method

.method public setGLRender(Lcom/ksyun/media/streamer/util/gles/GLRender;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyProFilter;->b:Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;

    instance-of v1, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySimpleFilter;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySimpleFilter;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySimpleFilter;->setGLRender(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of v1, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyAdvanceFilter;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyAdvanceFilter;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyAdvanceFilter;->setGLRender(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setGrindRatio(F)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->setGrindRatio(F)V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyProFilter;->b:Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->setGrindRatio(F)V

    return-void
.end method

.method public setOnErrorListener(Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase$OnErrorListener;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->setOnErrorListener(Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase$OnErrorListener;)V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyProFilter;->b:Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->setOnErrorListener(Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase$OnErrorListener;)V

    return-void
.end method

.method public setRuddyRatio(F)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->setRuddyRatio(F)V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyProFilter;->b:Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->setRuddyRatio(F)V

    return-void
.end method

.method public setWhitenRatio(F)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->setWhitenRatio(F)V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyProFilter;->b:Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->setWhitenRatio(F)V

    return-void
.end method
