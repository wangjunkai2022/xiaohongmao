.class Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder$1;
.super Ljava/lang/Object;
.source "MediaCodecVideoDecoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder$1;->a:Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    new-instance v1, Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder$1;->a:Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;

    .line 2
    invoke-static {v0}, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->a(Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;)Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    move-result-object v0

    iget v0, v0, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->width:I

    iget-object v2, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder$1;->a:Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;

    invoke-static {v2}, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->a(Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;)Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    move-result-object v2

    iget v2, v2, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->height:I

    const/4 v3, 0x3

    invoke-direct {v1, v3, v0, v2}, Lcom/ksyun/media/streamer/framework/ImgTexFormat;-><init>(III)V

    .line 3
    new-instance v6, Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/ksyun/media/streamer/framework/ImgTexFrame;-><init>(Lcom/ksyun/media/streamer/framework/ImgTexFormat;I[FJ)V

    .line 4
    iget v0, v6, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v6, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder$1;->a:Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;

    iget-object v0, v0, Lcom/ksyun/media/streamer/decoder/Decoder;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v0, v6}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    return-void
.end method
