.class public Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySmoothFilter;
.super Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;
.source "ImgBeautySmoothFilter.java"


# static fields
.field private static final a:Ljava/lang/String; = "ImgBeautyFaceFilter"


# instance fields
.field private b:Lcom/ksyun/media/streamer/framework/PinAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksyun/media/streamer/framework/PinAdapter<",
            "Lcom/ksyun/media/streamer/framework/ImgTexFrame;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/ksyun/media/streamer/framework/PinAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksyun/media/streamer/framework/PinAdapter<",
            "Lcom/ksyun/media/streamer/framework/ImgTexFrame;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySkinDetectFilter;

.field private e:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyGrindFaceFilter;

.field private f:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySpecialEffectsFilter;


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySmoothFilter;->a(Lcom/ksyun/media/streamer/util/gles/GLRender;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/ksyun/media/streamer/util/gles/GLRender;Landroid/content/Context;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;-><init>()V

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySmoothFilter;->a(Lcom/ksyun/media/streamer/util/gles/GLRender;Landroid/content/Context;)V

    return-void
.end method

.method private a(Lcom/ksyun/media/streamer/util/gles/GLRender;Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ksyun/media/streamer/framework/PinAdapter;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/framework/PinAdapter;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySmoothFilter;->b:Lcom/ksyun/media/streamer/framework/PinAdapter;

    .line 2
    new-instance v0, Lcom/ksyun/media/streamer/framework/PinAdapter;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/framework/PinAdapter;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySmoothFilter;->c:Lcom/ksyun/media/streamer/framework/PinAdapter;

    .line 3
    new-instance v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySkinDetectFilter;

    invoke-direct {v0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySkinDetectFilter;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySmoothFilter;->d:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySkinDetectFilter;

    .line 4
    new-instance v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyGrindFaceFilter;

    invoke-direct {v0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyGrindFaceFilter;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySmoothFilter;->e:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyGrindFaceFilter;

    .line 5
    :try_start_0
    new-instance v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySpecialEffectsFilter;

    const/4 v1, 0x3

    invoke-direct {v0, p1, p2, v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySpecialEffectsFilter;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySmoothFilter;->f:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySpecialEffectsFilter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "ImgBeautyFaceFilter"

    const-string p2, "KSYResource missing, ruddy is unusable!"

    .line 6
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySmoothFilter;->b:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object p1, p1, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    iget-object p2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySmoothFilter;->d:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySkinDetectFilter;

    invoke-virtual {p2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 8
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySmoothFilter;->b:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object p1, p1, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    iget-object p2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySmoothFilter;->e:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyGrindFaceFilter;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->getSinkPin(I)Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 9
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySmoothFilter;->d:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySkinDetectFilter;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object p1

    iget-object p2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySmoothFilter;->e:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyGrindFaceFilter;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->getSinkPin(I)Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 10
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySmoothFilter;->f:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySpecialEffectsFilter;

    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySmoothFilter;->e:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyGrindFaceFilter;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object p1

    iget-object p2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySmoothFilter;->f:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySpecialEffectsFilter;

    invoke-virtual {p2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 12
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySmoothFilter;->f:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySpecialEffectsFilter;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object p1

    iget-object p2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySmoothFilter;->c:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object p2, p2, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

    invoke-virtual {p1, p2}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    goto :goto_1

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySmoothFilter;->e:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyGrindFaceFilter;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object p1

    iget-object p2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySmoothFilter;->c:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object p2, p2, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

    invoke-virtual {p1, p2}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    :goto_1
    const p1, 0x3ecccccd    # 0.4f

    .line 14
    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySmoothFilter;->setGrindRatio(F)V

    const p1, 0x3e4ccccd    # 0.2f

    .line 15
    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySmoothFilter;->setWhitenRatio(F)V

    const p1, 0x3f4ccccd    # 0.8f

    .line 16
    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySmoothFilter;->setRuddyRatio(F)V

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

    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySmoothFilter;->b:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object p1, p1, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

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

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySmoothFilter;->c:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v0, v0, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.2"

    return-object v0
.end method

.method public isGrindRatioSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isRuddyRatioSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySmoothFilter;->f:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySpecialEffectsFilter;

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

    const/4 v0, 0x1

    return v0
.end method

.method public setGLRender(Lcom/ksyun/media/streamer/util/gles/GLRender;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySmoothFilter;->d:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySkinDetectFilter;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->setGLRender(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySmoothFilter;->e:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyGrindFaceFilter;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->setGLRender(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySmoothFilter;->f:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySpecialEffectsFilter;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->setGLRender(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    :cond_0
    return-void
.end method

.method public setGrindRatio(F)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->setGrindRatio(F)V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySmoothFilter;->e:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyGrindFaceFilter;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->setGrindRatio(F)V

    return-void
.end method

.method public setOnErrorListener(Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase$OnErrorListener;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->setOnErrorListener(Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase$OnErrorListener;)V

    .line 2
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySmoothFilter;->d:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySkinDetectFilter;

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->mErrorListener:Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase$OnErrorListener;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->setOnErrorListener(Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase$OnErrorListener;)V

    .line 3
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySmoothFilter;->e:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyGrindFaceFilter;

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->mErrorListener:Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase$OnErrorListener;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->setOnErrorListener(Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase$OnErrorListener;)V

    .line 4
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySmoothFilter;->f:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySpecialEffectsFilter;

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->mErrorListener:Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase$OnErrorListener;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->setOnErrorListener(Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase$OnErrorListener;)V

    :cond_0
    return-void
.end method

.method public setRuddyRatio(F)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->setRuddyRatio(F)V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySmoothFilter;->f:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySpecialEffectsFilter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyLookUpFilter;->setIntensity(F)V

    :cond_0
    return-void
.end method

.method public setWhitenRatio(F)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->setWhitenRatio(F)V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySmoothFilter;->e:Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyGrindFaceFilter;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->setWhitenRatio(F)V

    return-void
.end method
