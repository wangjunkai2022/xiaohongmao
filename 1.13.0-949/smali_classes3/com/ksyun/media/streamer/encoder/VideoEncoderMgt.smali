.class public Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;
.super Ljava/lang/Object;
.source "VideoEncoderMgt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt$a;
    }
.end annotation


# static fields
.field public static final METHOD_HARDWARE:I = 0x2

.field public static final METHOD_SOFTWARE:I = 0x3

.field public static final METHOD_SOFTWARE_COMPAT:I = 0x1

.field private static final a:Ljava/lang/String; = "VideoEncoderMgt"


# instance fields
.field private b:Lcom/ksyun/media/streamer/util/gles/GLRender;

.field private c:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

.field private d:Lcom/ksyun/media/streamer/encoder/Encoder;

.field private e:I

.field private f:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

.field private g:Lcom/ksyun/media/streamer/encoder/Encoder$EncoderListener;

.field private h:Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufScaleFilter;

.field private i:Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufBeautyFilter;

.field private j:Z

.field private k:Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;

.field private l:Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;

.field private m:Lcom/ksyun/media/streamer/framework/PinAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksyun/media/streamer/framework/PinAdapter<",
            "Lcom/ksyun/media/streamer/framework/ImgTexFrame;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/ksyun/media/streamer/framework/PinAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksyun/media/streamer/framework/PinAdapter<",
            "Lcom/ksyun/media/streamer/framework/ImgBufFrame;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/ksyun/media/streamer/framework/PinAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksyun/media/streamer/framework/PinAdapter<",
            "Lcom/ksyun/media/streamer/framework/ImgPacket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->b:Lcom/ksyun/media/streamer/util/gles/GLRender;

    .line 3
    new-instance v0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->l:Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;

    .line 4
    new-instance v1, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufScaleFilter;

    invoke-direct {v1, v0}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufScaleFilter;-><init>(Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;)V

    iput-object v1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->h:Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufScaleFilter;

    .line 5
    new-instance v0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufBeautyFilter;

    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->l:Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;

    invoke-direct {v0, v1}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufBeautyFilter;-><init>(Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->i:Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufBeautyFilter;

    .line 6
    new-instance v0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;

    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->l:Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;

    invoke-direct {v0, v1}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;-><init>(Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->k:Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;

    .line 7
    new-instance v0, Lcom/ksyun/media/streamer/framework/PinAdapter;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/framework/PinAdapter;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->o:Lcom/ksyun/media/streamer/framework/PinAdapter;

    .line 8
    new-instance v0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt$a;-><init>(Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt$1;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->m:Lcom/ksyun/media/streamer/framework/PinAdapter;

    .line 9
    new-instance v0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt$a;

    invoke-direct {v0, p0, v1}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt$a;-><init>(Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt$1;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->n:Lcom/ksyun/media/streamer/framework/PinAdapter;

    .line 10
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->h:Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufScaleFilter;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->k:Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 11
    new-instance v0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

    invoke-direct {v0, p1}, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->c:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

    .line 12
    new-instance p1, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt$1;

    invoke-direct {p1, p0}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt$1;-><init>(Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;)V

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->setErrorListener(Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$ErrorListener;)V

    const/4 p1, 0x3

    .line 13
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->a(I)I

    move-result p1

    iput p1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->e:I

    .line 14
    invoke-direct {p0}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->a()V

    return-void
.end method

.method private a(I)I
    .locals 0

    return p1
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;)Lcom/ksyun/media/streamer/encoder/Encoder$EncoderListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->g:Lcom/ksyun/media/streamer/encoder/Encoder$EncoderListener;

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 2
    iget v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3
    new-instance v0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;

    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->b:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-direct {v0, v1}, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    .line 4
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->m:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v1, v1, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    iget-object v2, v0, Lcom/ksyun/media/streamer/encoder/Encoder;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 5
    iget-object v1, v0, Lcom/ksyun/media/streamer/encoder/Encoder;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    iget-object v2, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->o:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v2, v2, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 6
    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->d:Lcom/ksyun/media/streamer/encoder/Encoder;

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 7
    new-instance v0, Lcom/ksyun/media/streamer/encoder/AVCodecVideoEncoder;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/encoder/AVCodecVideoEncoder;-><init>()V

    .line 8
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->c:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

    iget-object v1, v1, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    iget-object v2, v0, Lcom/ksyun/media/streamer/encoder/Encoder;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 9
    iget-object v1, v0, Lcom/ksyun/media/streamer/encoder/Encoder;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    iget-object v2, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->o:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v2, v2, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 10
    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->d:Lcom/ksyun/media/streamer/encoder/Encoder;

    goto :goto_0

    .line 11
    :cond_1
    new-instance v0, Lcom/ksyun/media/streamer/encoder/AVCodecVideoEncoder;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/encoder/AVCodecVideoEncoder;-><init>()V

    .line 12
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->k:Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v1

    iget-object v2, v0, Lcom/ksyun/media/streamer/encoder/Encoder;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 13
    iget-object v1, v0, Lcom/ksyun/media/streamer/encoder/Encoder;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    iget-object v2, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->o:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v2, v2, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 14
    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->d:Lcom/ksyun/media/streamer/encoder/Encoder;

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->f:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    if-eqz v0, :cond_2

    .line 16
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->d:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-virtual {v1, v0}, Lcom/ksyun/media/streamer/encoder/Encoder;->configure(Ljava/lang/Object;)V

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->g:Lcom/ksyun/media/streamer/encoder/Encoder$EncoderListener;

    if-eqz v0, :cond_3

    .line 18
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->d:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-virtual {v1, v0}, Lcom/ksyun/media/streamer/encoder/Encoder;->setEncoderListener(Lcom/ksyun/media/streamer/encoder/Encoder$EncoderListener;)V

    :cond_3
    return-void
.end method

.method private b()Lcom/ksyun/media/streamer/encoder/AVCodecVideoEncoder;
    .locals 2

    .line 2
    const-class v0, Lcom/ksyun/media/streamer/encoder/AVCodecVideoEncoder;

    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->d:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksyun/media/streamer/encoder/AVCodecVideoEncoder;

    return-object v0
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;)Lcom/ksyun/media/streamer/encoder/Encoder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->d:Lcom/ksyun/media/streamer/encoder/Encoder;

    return-object p0
.end method

.method private c()Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;
    .locals 2

    const-class v0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;

    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->d:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksyun/media/streamer/encoder/AVCodecSurfaceEncoder;

    return-object v0
.end method

.method private d()Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;
    .locals 2

    const-class v0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;

    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->d:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;

    return-object v0
.end method


# virtual methods
.method public getEncodeFormat()Lcom/ksyun/media/streamer/framework/VideoCodecFormat;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->f:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    return-object v0
.end method

.method public declared-synchronized getEncodeMethod()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEncoder()Lcom/ksyun/media/streamer/encoder/Encoder;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->d:Lcom/ksyun/media/streamer/encoder/Encoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getImgBufMixer()Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->k:Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;

    return-object v0
.end method

.method public getImgBufSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ksyun/media/streamer/framework/SinkPin<",
            "Lcom/ksyun/media/streamer/framework/ImgBufFrame;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->n:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v0, v0, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

    return-object v0
.end method

.method public getImgTexSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ksyun/media/streamer/framework/SinkPin<",
            "Lcom/ksyun/media/streamer/framework/ImgTexFrame;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->m:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v0, v0, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

    return-object v0
.end method

.method public getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ksyun/media/streamer/framework/SrcPin<",
            "Lcom/ksyun/media/streamer/framework/ImgPacket;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->o:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v0, v0, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    return-object v0
.end method

.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->d:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/Encoder;->release()V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->l:Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;->a()V

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->h:Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufScaleFilter;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufScaleFilter;->release()V

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->i:Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufBeautyFilter;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufBeautyFilter;->release()V

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->k:Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEnableImgBufBeauty(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->j:Z

    if-eq v0, p1, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->h:Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufScaleFilter;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v1

    iget-object v2, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->k:Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;

    invoke-virtual {v2}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Lcom/ksyun/media/streamer/framework/SinkPin;Z)V

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->h:Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufScaleFilter;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->i:Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufBeautyFilter;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->i:Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufBeautyFilter;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->k:Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->i:Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufBeautyFilter;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Z)V

    .line 6
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->h:Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufScaleFilter;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v1

    iget-object v2, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->i:Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufBeautyFilter;

    invoke-virtual {v2}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Lcom/ksyun/media/streamer/framework/SinkPin;Z)V

    .line 7
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->h:Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufScaleFilter;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->k:Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 8
    :goto_0
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->j:Z

    :cond_1
    return-void
.end method

.method public declared-synchronized setEncodeFormat(Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    new-instance v0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    invoke-direct {v0, p1}, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;-><init>(Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;)V

    invoke-virtual {p0, v0}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->setEncodeFormat(Lcom/ksyun/media/streamer/framework/VideoCodecFormat;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 2
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setEncodeFormat(Lcom/ksyun/media/streamer/framework/VideoCodecFormat;)V
    .locals 3

    monitor-enter p0

    .line 3
    :try_start_0
    iput-object p1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->f:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->d:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/encoder/Encoder;->configure(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->h:Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufScaleFilter;

    iget v1, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->width:I

    iget v2, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->height:I

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufScaleFilter;->setTargetSize(II)V

    .line 6
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->k:Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;

    iget v1, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->width:I

    iget p1, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->height:I

    invoke-virtual {v0, v1, p1}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;->setTargetSize(II)V

    .line 7
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object p1

    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->f:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    iget v0, v0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->codecId:I

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->setEncodeFormat(I)V

    .line 8
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object p1

    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->f:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    iget v0, v0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->profile:I

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->setVideoEncodeProfile(I)V

    .line 9
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object p1

    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->f:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    iget v0, v0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->scene:I

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->setVideoEncodeScence(I)V

    .line 10
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object p1

    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->f:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    iget v0, v0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->iFrameInterval:F

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->setIFrameIntervalSec(F)V

    .line 11
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object p1

    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->f:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    iget v1, v0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->width:I

    iget v0, v0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->height:I

    invoke-virtual {p1, v1, v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->setTargetResolution(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setEncodeMethod(I)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->a(I)I

    move-result p1

    .line 2
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->setEncodeMethod(I)V

    .line 3
    iget v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    .line 4
    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 5
    :try_start_1
    invoke-direct {p0}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->d()Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;

    move-result-object v0

    .line 6
    iget-object v1, v0, Lcom/ksyun/media/streamer/encoder/Encoder;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Z)V

    .line 7
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->m:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v1, v1, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    iget-object v0, v0, Lcom/ksyun/media/streamer/encoder/Encoder;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

    invoke-virtual {v1, v0, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Lcom/ksyun/media/streamer/framework/SinkPin;Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 8
    invoke-direct {p0}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->b()Lcom/ksyun/media/streamer/encoder/AVCodecVideoEncoder;

    move-result-object v0

    .line 9
    iget-object v0, v0, Lcom/ksyun/media/streamer/encoder/Encoder;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v0, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Z)V

    .line 10
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->c:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

    iget-object v0, v0, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v0, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Z)V

    .line 11
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->m:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v0, v0, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->c:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

    iget-object v1, v1, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Lcom/ksyun/media/streamer/framework/SinkPin;Z)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-direct {p0}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->b()Lcom/ksyun/media/streamer/encoder/AVCodecVideoEncoder;

    move-result-object v0

    .line 13
    iget-object v1, v0, Lcom/ksyun/media/streamer/encoder/Encoder;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Z)V

    .line 14
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->k:Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v1

    iget-object v0, v0, Lcom/ksyun/media/streamer/encoder/Encoder;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

    invoke-virtual {v1, v0, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Lcom/ksyun/media/streamer/framework/SinkPin;Z)V

    .line 15
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->n:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v0, v0, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->h:Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufScaleFilter;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Lcom/ksyun/media/streamer/framework/SinkPin;Z)V

    .line 16
    :goto_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->d:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/Encoder;->release()V

    .line 17
    iput p1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->e:I

    .line 18
    invoke-direct {p0}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setEncoderListener(Lcom/ksyun/media/streamer/encoder/Encoder$EncoderListener;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->g:Lcom/ksyun/media/streamer/encoder/Encoder$EncoderListener;

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->d:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/encoder/Encoder;->setEncoderListener(Lcom/ksyun/media/streamer/encoder/Encoder$EncoderListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setImgBufMirror(Z)V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->h:Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufScaleFilter;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufScaleFilter;->setMirror(Z)V

    return-void
.end method

.method public setImgBufTargetSize(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->f:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->width:I

    if-ne p1, v1, :cond_0

    iget v0, v0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->height:I

    if-eq p2, v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->h:Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufScaleFilter;

    invoke-virtual {v0, p1, p2}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufScaleFilter;->setTargetSize(II)V

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->k:Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;

    invoke-virtual {v0, p1, p2}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;->setTargetSize(II)V

    :cond_1
    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->m:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v0, v0, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->c:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

    iget-object v1, v1, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->n:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v0, v0, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->h:Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufScaleFilter;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->d:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/Encoder;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->e:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->m:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v0, v0, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->c:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

    iget-object v1, v1, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Lcom/ksyun/media/streamer/framework/SinkPin;Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->n:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v0, v0, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->h:Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufScaleFilter;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Lcom/ksyun/media/streamer/framework/SinkPin;Z)V

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->d:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/Encoder;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
