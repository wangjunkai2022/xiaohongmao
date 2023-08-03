.class public Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySimpleFilter;
.super Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;
.source "ImgBeautySimpleFilter.java"


# static fields
.field private static final a:Ljava/lang/String; = "ImgBeautySimpleFilter"


# instance fields
.field private b:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyGrindSimpleFilter;

.field private c:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySpecialEffectsFilter;

.field private d:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyAdjustSkinColorFilter;


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/util/gles/GLRender;Landroid/content/Context;)V
    .locals 5

    const-string v0, "KSYResource missing!"

    const-string v1, "ImgBeautySimpleFilter"

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;-><init>()V

    .line 2
    new-instance v2, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyGrindSimpleFilter;

    invoke-direct {v2, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyGrindSimpleFilter;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    iput-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySimpleFilter;->b:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyGrindSimpleFilter;

    .line 3
    :try_start_0
    new-instance v2, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySpecialEffectsFilter;

    const-string v3, "13_nature.png"

    invoke-direct {v2, p1, p2, v3}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySpecialEffectsFilter;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySimpleFilter;->c:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySpecialEffectsFilter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySimpleFilter;->c:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySpecialEffectsFilter;

    if-eqz v2, :cond_0

    .line 6
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySimpleFilter;->b:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyGrindSimpleFilter;

    invoke-virtual {v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v2

    iget-object v3, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySimpleFilter;->c:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySpecialEffectsFilter;

    invoke-virtual {v3}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    :cond_0
    const-string v2, "assets://KSYResource/0_pink.png"

    const-string v3, "assets://KSYResource/0_ruddy2.png"

    .line 7
    :try_start_1
    new-instance v4, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyAdjustSkinColorFilter;

    invoke-direct {v4, p1, p2, v2, v3}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyAdjustSkinColorFilter;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySimpleFilter;->d:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyAdjustSkinColorFilter;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 8
    :catch_1
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :goto_1
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySimpleFilter;->d:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyAdjustSkinColorFilter;

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySimpleFilter;->c:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySpecialEffectsFilter;

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object p1

    iget-object p2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySimpleFilter;->d:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyAdjustSkinColorFilter;

    invoke-virtual {p2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    goto :goto_2

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySimpleFilter;->b:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyGrindSimpleFilter;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object p1

    iget-object p2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySimpleFilter;->d:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyAdjustSkinColorFilter;

    invoke-virtual {p2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    :cond_2
    :goto_2
    const p1, 0x3e99999a    # 0.3f

    .line 13
    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySimpleFilter;->setWhitenRatio(F)V

    const/high16 p1, 0x3f000000    # 0.5f

    .line 14
    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySimpleFilter;->setGrindRatio(F)V

    const p1, -0x41666666    # -0.3f

    .line 15
    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySimpleFilter;->setRuddyRatio(F)V

    return-void
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

    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySimpleFilter;->b:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyGrindSimpleFilter;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

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

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySimpleFilter;->d:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyAdjustSkinColorFilter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySimpleFilter;->c:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySpecialEffectsFilter;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySimpleFilter;->b:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyGrindSimpleFilter;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    return-object v0
.end method

.method public isGrindRatioSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isRuddyRatioSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySimpleFilter;->d:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyAdjustSkinColorFilter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWhitenRatioSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySimpleFilter;->c:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySpecialEffectsFilter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setGLRender(Lcom/ksyun/media/streamer/util/gles/GLRender;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySimpleFilter;->b:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyGrindSimpleFilter;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->setGLRender(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySimpleFilter;->d:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyAdjustSkinColorFilter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->setGLRender(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySimpleFilter;->c:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySpecialEffectsFilter;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->setGLRender(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    :cond_1
    return-void
.end method

.method public setGrindRatio(F)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->setGrindRatio(F)V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySimpleFilter;->b:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyGrindSimpleFilter;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyGrindSimpleFilter;->setGrindRatio(F)V

    return-void
.end method

.method public setOnErrorListener(Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase$OnErrorListener;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->setOnErrorListener(Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase$OnErrorListener;)V

    .line 2
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySimpleFilter;->b:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyGrindSimpleFilter;

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->mErrorListener:Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase$OnErrorListener;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->setOnErrorListener(Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase$OnErrorListener;)V

    .line 3
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySimpleFilter;->c:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySpecialEffectsFilter;

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->mErrorListener:Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase$OnErrorListener;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->setOnErrorListener(Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase$OnErrorListener;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySimpleFilter;->d:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyAdjustSkinColorFilter;

    if-eqz p1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->mErrorListener:Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase$OnErrorListener;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->setOnErrorListener(Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase$OnErrorListener;)V

    :cond_1
    return-void
.end method

.method public setRuddyRatio(F)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->setRuddyRatio(F)V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySimpleFilter;->d:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyAdjustSkinColorFilter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyAdjustSkinColorFilter;->setRuddyRatio(F)V

    :cond_0
    return-void
.end method

.method public setScaleLumance(F)V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySimpleFilter;->b:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyGrindSimpleFilter;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyGrindSimpleFilter;->setScaleLumance(F)V

    return-void
.end method

.method public setWhitenRatio(F)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->setWhitenRatio(F)V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySimpleFilter;->c:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySpecialEffectsFilter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyLookUpFilter;->setIntensity(F)V

    :cond_0
    return-void
.end method
