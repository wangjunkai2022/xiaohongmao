.class Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt$1;
.super Ljava/lang/Object;
.source "VideoEncoderMgt.java"

# interfaces
.implements Lcom/ksyun/media/streamer/encoder/ImgTexToBuf$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt$1;->a:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/ksyun/media/streamer/encoder/ImgTexToBuf;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt$1;->a:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    invoke-static {p1}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->a(Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;)Lcom/ksyun/media/streamer/encoder/Encoder$EncoderListener;

    move-result-object p1

    if-eqz p1, :cond_1

    const/16 p1, -0x3e9

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 p1, -0x3ea

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt$1;->a:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    invoke-static {p2}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->a(Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;)Lcom/ksyun/media/streamer/encoder/Encoder$EncoderListener;

    move-result-object p2

    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt$1;->a:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    invoke-static {v0}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->b(Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;)Lcom/ksyun/media/streamer/encoder/Encoder;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lcom/ksyun/media/streamer/encoder/Encoder$EncoderListener;->onError(Lcom/ksyun/media/streamer/encoder/Encoder;I)V

    :cond_1
    return-void
.end method
