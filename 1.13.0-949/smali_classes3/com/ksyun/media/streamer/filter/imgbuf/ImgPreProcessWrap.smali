.class public Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;
.super Ljava/lang/Object;
.source "ImgPreProcessWrap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap$ImgBufMixerConfig;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/ksyun/media/streamer/util/LibraryLoader;->load()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;->a:Z

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;->b:I

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;->c:J

    .line 5
    invoke-direct {p0}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;->create()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;->c:J

    return-void
.end method

.method private native convertI420ToNv21(JLcom/ksyun/media/streamer/framework/ImgBufFrame;)Lcom/ksyun/media/streamer/framework/ImgBufFrame;
.end method

.method private native create()J
.end method

.method private native doBeauty(JLcom/ksyun/media/streamer/framework/ImgBufFrame;)Lcom/ksyun/media/streamer/framework/ImgBufFrame;
.end method

.method private native doMixer(J[Lcom/ksyun/media/streamer/framework/ImgBufFrame;I[Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap$ImgBufMixerConfig;I)Lcom/ksyun/media/streamer/framework/ImgBufFrame;
.end method

.method private native doScale(JLcom/ksyun/media/streamer/framework/ImgBufFrame;)Lcom/ksyun/media/streamer/framework/ImgBufFrame;
.end method

.method private native doScaleAndConvert2RGBA(JLcom/ksyun/media/streamer/framework/ImgBufFrame;)Lcom/ksyun/media/streamer/framework/ImgBufFrame;
.end method

.method private native releaseInfo(J)V
.end method

.method private native setBeautyInfo(JI)V
.end method

.method private native setTargetSize(JII)V
.end method

.method private native updateIsFrontMirror(JZ)V
.end method


# virtual methods
.method public a(Lcom/ksyun/media/streamer/framework/ImgBufFrame;)Lcom/ksyun/media/streamer/framework/ImgBufFrame;
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;->c:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;->doScale(JLcom/ksyun/media/streamer/framework/ImgBufFrame;)Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    move-result-object p1

    return-object p1
.end method

.method public a([Lcom/ksyun/media/streamer/framework/ImgBufFrame;[Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap$ImgBufMixerConfig;)Lcom/ksyun/media/streamer/framework/ImgBufFrame;
    .locals 7

    .line 9
    iget-wide v1, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;->c:J

    array-length v4, p1

    array-length v6, p2

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;->doMixer(J[Lcom/ksyun/media/streamer/framework/ImgBufFrame;I[Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap$ImgBufMixerConfig;I)Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 5

    .line 10
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 11
    invoke-direct {p0, v0, v1}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;->releaseInfo(J)V

    .line 12
    iput-wide v2, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;->c:J

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2

    .line 5
    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;->b:I

    if-eq v0, p1, :cond_0

    .line 6
    iput p1, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;->b:I

    .line 7
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;->c:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;->setBeautyInfo(JI)V

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;->c:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;->setTargetSize(JII)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;->a:Z

    if-eq v0, p1, :cond_0

    .line 3
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;->a:Z

    .line 4
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;->c:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;->updateIsFrontMirror(JZ)V

    :cond_0
    return-void
.end method

.method public b(Lcom/ksyun/media/streamer/framework/ImgBufFrame;)Lcom/ksyun/media/streamer/framework/ImgBufFrame;
    .locals 2

    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;->c:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;->doScaleAndConvert2RGBA(JLcom/ksyun/media/streamer/framework/ImgBufFrame;)Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/ksyun/media/streamer/framework/ImgBufFrame;)Lcom/ksyun/media/streamer/framework/ImgBufFrame;
    .locals 2

    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;->c:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;->doBeauty(JLcom/ksyun/media/streamer/framework/ImgBufFrame;)Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/ksyun/media/streamer/framework/ImgBufFrame;)Lcom/ksyun/media/streamer/framework/ImgBufFrame;
    .locals 2

    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;->c:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;->convertI420ToNv21(JLcom/ksyun/media/streamer/framework/ImgBufFrame;)Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    move-result-object p1

    return-object p1
.end method

.method public native debugBeautyFlag(JZ)V
.end method

.method public native debugMixerFlag(JZ)V
.end method

.method public native debugScaleFlag(JZ)V
.end method

.method public native priteByteBuffer(JLjava/nio/ByteBuffer;)V
.end method
