.class public Lcom/ksyun/media/streamer/framework/ImgBufFormat;
.super Ljava/lang/Object;
.source "ImgBufFormat.java"


# static fields
.field public static final FMT_ARGB:I = 0x4

.field public static final FMT_BGR8:I = 0x6

.field public static final FMT_I420:I = 0x3

.field public static final FMT_NV21:I = 0x1

.field public static final FMT_OPAQUE:I = 0x0

.field public static final FMT_RGBA:I = 0x5

.field public static final FMT_YV12:I = 0x2


# instance fields
.field public height:I

.field public orientation:I

.field public pixFmt:I

.field public stride:[I

.field public strideNum:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->pixFmt:I

    .line 17
    iput v0, p0, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->width:I

    .line 18
    iput v0, p0, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->height:I

    .line 19
    iput v0, p0, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->orientation:I

    const/4 v1, 0x0

    .line 20
    iput-object v1, p0, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->stride:[I

    .line 21
    iput v0, p0, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->strideNum:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->pixFmt:I

    .line 3
    iput p2, p0, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->width:I

    .line 4
    iput p3, p0, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->height:I

    .line 5
    iput p4, p0, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->orientation:I

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->stride:[I

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->strideNum:I

    return-void
.end method

.method public constructor <init>(IIII[I)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->pixFmt:I

    .line 10
    iput p2, p0, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->width:I

    .line 11
    iput p3, p0, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->height:I

    .line 12
    iput p4, p0, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->orientation:I

    .line 13
    iput-object p5, p0, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->stride:[I

    if-eqz p5, :cond_0

    .line 14
    array-length p1, p5

    iput p1, p0, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->strideNum:I

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    instance-of v1, p1, Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    check-cast p1, Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    .line 3
    iget v1, p0, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->pixFmt:I

    iget v2, p1, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->pixFmt:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->width:I

    iget v2, p1, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->width:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->height:I

    iget v2, p1, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->height:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->orientation:I

    iget p1, p1, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->orientation:I

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method
