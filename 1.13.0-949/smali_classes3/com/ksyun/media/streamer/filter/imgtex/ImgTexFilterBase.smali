.class public abstract Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;
.super Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;
.source "ImgTexFilterBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$b;,
        Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;
    }
.end annotation


# static fields
.field public static final ERROR_LOAD_PROGRAM_FAILED:I = -0x1

.field public static final ERROR_UNKNOWN:I = -0x2

.field private static final a:Ljava/lang/String; = "ImgTexFilterBase"


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ksyun/media/streamer/framework/SinkPin<",
            "Lcom/ksyun/media/streamer/framework/ImgTexFrame;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Lcom/ksyun/media/streamer/framework/SrcPin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksyun/media/streamer/framework/SrcPin<",
            "Lcom/ksyun/media/streamer/framework/ImgTexFrame;",
            ">;"
        }
    .end annotation
.end field

.field private d:[Lcom/ksyun/media/streamer/framework/ImgTexFrame;

.field private e:[Z

.field private f:[I

.field private g:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

.field private h:Z

.field private i:F

.field private j:Lcom/ksyun/media/streamer/util/gles/GLRender$ScreenShotListener;

.field private k:Ljava/lang/Thread;

.field private l:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;

.field protected mGLRender:Lcom/ksyun/media/streamer/util/gles/GLRender;

.field protected mInited:Z

.field protected mMainHandler:Landroid/os/Handler;

.field protected mOutTexture:I

.field protected mReuseFbo:Z


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->f:[I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->mReuseFbo:Z

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->mOutTexture:I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->k:Ljava/lang/Thread;

    .line 6
    new-instance v1, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$3;

    invoke-direct {v1, p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$3;-><init>(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)V

    iput-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->l:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;

    .line 7
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->b:Ljava/util/List;

    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->getSinkPinNum()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 9
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->b:Ljava/util/List;

    new-instance v3, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;

    invoke-direct {v3, p0, v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;-><init>(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_0
    new-instance v1, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$b;

    invoke-direct {v1, p0, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$b;-><init>(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$1;)V

    iput-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->c:Lcom/ksyun/media/streamer/framework/SrcPin;

    .line 11
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->getSinkPinNum()I

    move-result v0

    new-array v0, v0, [Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->d:[Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    .line 12
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->getSinkPinNum()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->e:[Z

    .line 13
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->mMainHandler:Landroid/os/Handler;

    .line 14
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->mGLRender:Lcom/ksyun/media/streamer/util/gles/GLRender;

    .line 15
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->l:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->addListener(Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;)V

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;Lcom/ksyun/media/streamer/framework/ImgTexFormat;)Lcom/ksyun/media/streamer/framework/ImgTexFormat;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->g:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    return-object p1
.end method

.method private a(F)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 7
    iput p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->i:F

    return-void
.end method

.method private a(II)V
    .locals 14

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x4

    .line 9
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 10
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v11, 0x1908

    const/16 v12, 0x1401

    move v9, p1

    move/from16 v10, p2

    move-object v13, v4

    .line 11
    invoke-static/range {v7 .. v13}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 12
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 13
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$4;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move/from16 v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$4;-><init>(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;IILjava/nio/ByteBuffer;J)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object v0, p0

    iput-object v7, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->k:Ljava/lang/Thread;

    .line 14
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;II)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->h:Z

    return p1
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)[Z
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->e:[Z

    return-object p0
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)Lcom/ksyun/media/streamer/framework/SrcPin;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->c:Lcom/ksyun/media/streamer/framework/SrcPin;

    return-object p0
.end method

.method static synthetic c(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)[Lcom/ksyun/media/streamer/framework/ImgTexFrame;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->d:[Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    return-object p0
.end method

.method static synthetic d(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)Lcom/ksyun/media/streamer/framework/ImgTexFormat;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->g:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    return-object p0
.end method

.method static synthetic e(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)[I
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->f:[I

    return-object p0
.end method

.method static synthetic f(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->h:Z

    return p0
.end method

.method static synthetic g(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)F
    .locals 0

    iget p0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->i:F

    return p0
.end method

.method static synthetic h(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)Lcom/ksyun/media/streamer/util/gles/GLRender$ScreenShotListener;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->j:Lcom/ksyun/media/streamer/util/gles/GLRender$ScreenShotListener;

    return-object p0
.end method


# virtual methods
.method public getSinkPin(I)Lcom/ksyun/media/streamer/framework/SinkPin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/ksyun/media/streamer/framework/SinkPin<",
            "Lcom/ksyun/media/streamer/framework/ImgTexFrame;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ksyun/media/streamer/framework/SinkPin;

    return-object p1
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

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->c:Lcom/ksyun/media/streamer/framework/SrcPin;

    return-object v0
.end method

.method protected abstract getSrcPinFormat()Lcom/ksyun/media/streamer/framework/ImgTexFormat;
.end method

.method protected isReuseFbo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->mReuseFbo:Z

    return v0
.end method

.method protected onDisconnect(Z)V
    .locals 0

    return-void
.end method

.method protected abstract onDraw([Lcom/ksyun/media/streamer/framework/ImgTexFrame;)V
.end method

.method protected abstract onFormatChanged(ILcom/ksyun/media/streamer/framework/ImgTexFormat;)V
.end method

.method protected onGLContextReady()V
    .locals 0

    return-void
.end method

.method protected onRelease()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->d:[Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 2
    invoke-virtual {v3}, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->isRefCounted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3
    invoke-virtual {v3}, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->unref()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->isReuseFbo()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->mGLRender:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->getFboManager()Lcom/ksyun/media/streamer/util/gles/FboManager;

    move-result-object v0

    iget v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->mOutTexture:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/util/gles/FboManager;->unlock(I)Z

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->mOutTexture:I

    :cond_2
    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->c:Lcom/ksyun/media/streamer/framework/SrcPin;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Z)V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->mGLRender:Lcom/ksyun/media/streamer/util/gles/GLRender;

    new-instance v1, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$1;

    invoke-direct {v1, p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$1;-><init>(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)V

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->queueEvent(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->mGLRender:Lcom/ksyun/media/streamer/util/gles/GLRender;

    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->l:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->removeListener(Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;)V

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->k:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->k:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->k:Ljava/lang/Thread;

    :cond_0
    return-void
.end method

.method public requestScreenShot(FLcom/ksyun/media/streamer/util/gles/GLRender$ScreenShotListener;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->a(F)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->h:Z

    .line 4
    iput-object p2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->j:Lcom/ksyun/media/streamer/util/gles/GLRender$ScreenShotListener;

    .line 5
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object p1

    const-string p2, "screen_shot"

    invoke-virtual {p1, p2}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->updateFunctionPoint(Ljava/lang/String;)V

    return-void
.end method

.method public requestScreenShot(Lcom/ksyun/media/streamer/util/gles/GLRender$ScreenShotListener;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->requestScreenShot(FLcom/ksyun/media/streamer/util/gles/GLRender$ScreenShotListener;)V

    return-void
.end method

.method protected sendError(I)V
    .locals 2

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$2;

    invoke-direct {v1, p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$2;-><init>(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setGLRender(Lcom/ksyun/media/streamer/util/gles/GLRender;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->mGLRender:Lcom/ksyun/media/streamer/util/gles/GLRender;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->l:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->removeListener(Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->mGLRender:Lcom/ksyun/media/streamer/util/gles/GLRender;

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->l:Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->addListener(Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;)V

    return-void
.end method

.method public setReuseFbo(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->mReuseFbo:Z

    return-void
.end method
