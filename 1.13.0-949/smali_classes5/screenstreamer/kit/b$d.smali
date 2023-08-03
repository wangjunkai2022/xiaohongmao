.class Lscreenstreamer/kit/b$d;
.super Ljava/lang/Object;
.source "KSYScreenStreamer.java"

# interfaces
.implements Lcom/ksyun/media/streamer/encoder/Encoder$EncoderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscreenstreamer/kit/b;->k0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lscreenstreamer/kit/b;


# direct methods
.method constructor <init>(Lscreenstreamer/kit/b;)V
    .locals 0

    iput-object p1, p0, Lscreenstreamer/kit/b$d;->a:Lscreenstreamer/kit/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/ksyun/media/streamer/encoder/Encoder;I)V
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Lscreenstreamer/kit/b$d;->a:Lscreenstreamer/kit/b;

    invoke-virtual {v0}, Lscreenstreamer/kit/b;->g1()Z

    :cond_0
    const/4 v0, 0x1

    .line 2
    instance-of v1, p1, Lcom/ksyun/media/streamer/encoder/MediaCodecAudioEncoder;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    instance-of p1, p1, Lcom/ksyun/media/streamer/encoder/AVCodecAudioEncoder;

    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x0

    :cond_2
    const/16 p1, -0x3ea

    if-eq p2, p1, :cond_4

    if-eqz v0, :cond_3

    const/16 p1, -0x3eb

    goto :goto_0

    :cond_3
    const/16 p1, -0x3f3

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    const/16 p1, -0x3ec

    goto :goto_0

    :cond_5
    const/16 p1, -0x3f0

    .line 3
    :goto_0
    iget-object p2, p0, Lscreenstreamer/kit/b$d;->a:Lscreenstreamer/kit/b;

    invoke-static {p2}, Lscreenstreamer/kit/b;->a(Lscreenstreamer/kit/b;)Lscreenstreamer/kit/b$h;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 4
    iget-object p2, p0, Lscreenstreamer/kit/b$d;->a:Lscreenstreamer/kit/b;

    invoke-static {p2}, Lscreenstreamer/kit/b;->a(Lscreenstreamer/kit/b;)Lscreenstreamer/kit/b$h;

    move-result-object p2

    invoke-interface {p2, p1, v2, v2}, Lscreenstreamer/kit/b$h;->onError(III)V

    :cond_6
    return-void
.end method
