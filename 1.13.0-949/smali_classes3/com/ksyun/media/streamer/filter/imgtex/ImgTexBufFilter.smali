.class public abstract Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;
.super Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;
.source "ImgTexBufFilter.java"


# static fields
.field private static final a:Ljava/lang/String; = "ImgTexBufFilter"


# instance fields
.field private b:Lcom/ksyun/media/streamer/framework/SinkPin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksyun/media/streamer/framework/SinkPin<",
            "Lcom/ksyun/media/streamer/framework/ImgTexFrame;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

.field private d:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

.field private e:Landroid/os/ConditionVariable;

.field private f:Lcom/ksyun/media/streamer/framework/ImgBufFrame;

.field private g:I

.field private h:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

.field private i:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/util/gles/GLRender;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;-><init>()V

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->g:I

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "only PIX_FMT_RGBA or PIX_FMT_I420 supported!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    new-instance v1, Landroid/os/ConditionVariable;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->e:Landroid/os/ConditionVariable;

    .line 5
    new-instance v1, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$1;

    invoke-direct {v1, p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$1;-><init>(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;)V

    iput-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->b:Lcom/ksyun/media/streamer/framework/SinkPin;

    .line 6
    new-instance v1, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

    invoke-direct {v1, p1}, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    iput-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->c:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

    .line 7
    new-instance v1, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    invoke-direct {v1, p1}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    iput-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->d:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    .line 8
    new-instance p1, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$2;

    invoke-direct {p1, p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter$2;-><init>(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;)V

    .line 9
    iput p2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->g:I

    .line 10
    iget-object p2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->c:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

    invoke-virtual {p2, v0}, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->setOutputColorFormat(I)V

    .line 11
    iget-object p2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->c:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

    iget-object p2, p2, Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {p2, p1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    return-void
.end method

.method private a(Lcom/ksyun/media/streamer/framework/ImgBufFormat;)I
    .locals 2

    .line 6
    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->g:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 7
    iget v0, p1, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->width:I

    iget p1, p1, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->height:I

    mul-int v0, v0, p1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;)Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->c:Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;

    return-object p0
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;Lcom/ksyun/media/streamer/framework/ImgBufFormat;)Lcom/ksyun/media/streamer/framework/ImgBufFormat;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->h:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    return-object p1
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;Lcom/ksyun/media/streamer/framework/ImgBufFrame;)Lcom/ksyun/media/streamer/framework/ImgBufFrame;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->f:Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    return-object p1
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->i:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;Lcom/ksyun/media/streamer/framework/ImgBufFrame;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->a(Lcom/ksyun/media/streamer/framework/ImgBufFrame;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private a(Lcom/ksyun/media/streamer/framework/ImgBufFrame;)V
    .locals 4

    .line 8
    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->g:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 9
    iget-object v0, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    iget-object p1, p1, Lcom/ksyun/media/streamer/framework/ImgBufFrame;->format:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    iget-object v1, p1, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->stride:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget v2, p1, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->width:I

    iget p1, p1, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->height:I

    iget-object v3, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->i:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1, v2, p1, v3}, Lcom/ksyun/media/streamer/encoder/ColorFormatConvert;->RGBAToI420(Ljava/nio/ByteBuffer;IIILjava/nio/ByteBuffer;)I

    :cond_0
    return-void
.end method

.method private a(Lcom/ksyun/media/streamer/framework/ImgBufFrame;Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 10
    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->g:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 11
    iget-object v0, p1, Lcom/ksyun/media/streamer/framework/ImgBufFrame;->format:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    iget-object v1, v0, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->stride:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget v2, v0, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->width:I

    iget v0, v0, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->height:I

    iget-object p1, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    invoke-static {p2, v1, v2, v0, p1}, Lcom/ksyun/media/streamer/encoder/ColorFormatConvert;->I420ToRGBA(Ljava/nio/ByteBuffer;IIILjava/nio/ByteBuffer;)I

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;Lcom/ksyun/media/streamer/framework/ImgBufFormat;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->a(Lcom/ksyun/media/streamer/framework/ImgBufFormat;)I

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;)Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->d:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    return-object p0
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;Lcom/ksyun/media/streamer/framework/ImgBufFrame;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->a(Lcom/ksyun/media/streamer/framework/ImgBufFrame;)V

    return-void
.end method

.method static synthetic c(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;)Landroid/os/ConditionVariable;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->e:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method static synthetic d(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;)Lcom/ksyun/media/streamer/framework/ImgBufFrame;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->f:Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    return-object p0
.end method

.method static synthetic e(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;)Lcom/ksyun/media/streamer/framework/ImgBufFormat;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->h:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    return-object p0
.end method

.method static synthetic f(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;)I
    .locals 0

    iget p0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->g:I

    return p0
.end method

.method static synthetic g(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->i:Ljava/nio/ByteBuffer;

    return-object p0
.end method


# virtual methods
.method protected abstract doFilter(Ljava/nio/ByteBuffer;[III)Ljava/nio/ByteBuffer;
.end method

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

    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->b:Lcom/ksyun/media/streamer/framework/SinkPin;

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

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexBufFilter;->d:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    return-object v0
.end method

.method protected abstract onSizeChanged([III)V
.end method
