.class Lscreenstreamer/kit/b$f;
.super Ljava/lang/Object;
.source "KSYScreenStreamer.java"

# interfaces
.implements Lcom/ksyun/media/streamer/publisher/Publisher$PubListener;


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

    iput-object p1, p0, Lscreenstreamer/kit/b$f;->a:Lscreenstreamer/kit/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(IJ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FilePublisher err="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KSYScreenStreamer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lscreenstreamer/kit/b$f;->a:Lscreenstreamer/kit/b;

    invoke-virtual {v0}, Lscreenstreamer/kit/b;->f1()V

    .line 3
    :cond_0
    iget-object v0, p0, Lscreenstreamer/kit/b$f;->a:Lscreenstreamer/kit/b;

    invoke-static {v0}, Lscreenstreamer/kit/b;->a(Lscreenstreamer/kit/b;)Lscreenstreamer/kit/b$h;

    move-result-object v0

    if-eqz v0, :cond_1

    packed-switch p1, :pswitch_data_0

    const/16 p1, -0xfa0

    goto :goto_0

    :pswitch_0
    const/16 p1, -0xfa1

    goto :goto_0

    :pswitch_1
    const/16 p1, -0xfa2

    goto :goto_0

    :pswitch_2
    const/16 p1, -0xfa3

    goto :goto_0

    :pswitch_3
    const/16 p1, -0xfa4

    .line 4
    :goto_0
    iget-object v0, p0, Lscreenstreamer/kit/b$f;->a:Lscreenstreamer/kit/b;

    invoke-static {v0}, Lscreenstreamer/kit/b;->a(Lscreenstreamer/kit/b;)Lscreenstreamer/kit/b$h;

    move-result-object v0

    long-to-int p3, p2

    const/4 p2, 0x0

    invoke-interface {v0, p1, p3, p2}, Lscreenstreamer/kit/b$h;->onError(III)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch -0xfa4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onInfo(IJ)V
    .locals 1

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "file publisher info:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "KSYScreenStreamer"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object p1, p0, Lscreenstreamer/kit/b$f;->a:Lscreenstreamer/kit/b;

    invoke-static {p1}, Lscreenstreamer/kit/b;->d(Lscreenstreamer/kit/b;)Lcom/ksyun/media/streamer/publisher/PublisherMgt;

    move-result-object p1

    iget-object v0, p0, Lscreenstreamer/kit/b$f;->a:Lscreenstreamer/kit/b;

    invoke-static {v0}, Lscreenstreamer/kit/b;->c(Lscreenstreamer/kit/b;)Lcom/ksyun/media/streamer/publisher/FilePublisher;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/publisher/PublisherMgt;->removePublisher(Lcom/ksyun/media/streamer/publisher/Publisher;)V

    .line 3
    iget-object p1, p0, Lscreenstreamer/kit/b$f;->a:Lscreenstreamer/kit/b;

    invoke-static {p1, p3}, Lscreenstreamer/kit/b;->e(Lscreenstreamer/kit/b;Z)Z

    .line 4
    iget-object p1, p0, Lscreenstreamer/kit/b$f;->a:Lscreenstreamer/kit/b;

    invoke-static {p1}, Lscreenstreamer/kit/b;->i(Lscreenstreamer/kit/b;)Lscreenstreamer/kit/b$i;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 5
    iget-object p1, p0, Lscreenstreamer/kit/b$f;->a:Lscreenstreamer/kit/b;

    invoke-static {p1}, Lscreenstreamer/kit/b;->i(Lscreenstreamer/kit/b;)Lscreenstreamer/kit/b$i;

    move-result-object p1

    invoke-interface {p1, p2, p3, p3}, Lscreenstreamer/kit/b$i;->onInfo(III)V

    goto/16 :goto_1

    .line 6
    :cond_1
    iget-object p1, p0, Lscreenstreamer/kit/b$f;->a:Lscreenstreamer/kit/b;

    invoke-static {p1}, Lscreenstreamer/kit/b;->j(Lscreenstreamer/kit/b;)Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->getEncoder()Lcom/ksyun/media/streamer/encoder/Encoder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/Encoder;->isEncoding()Z

    move-result p1

    if-nez p1, :cond_2

    .line 7
    iget-object p1, p0, Lscreenstreamer/kit/b$f;->a:Lscreenstreamer/kit/b;

    invoke-static {p1}, Lscreenstreamer/kit/b;->j(Lscreenstreamer/kit/b;)Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->start()V

    goto :goto_1

    .line 8
    :cond_2
    iget-object p1, p0, Lscreenstreamer/kit/b$f;->a:Lscreenstreamer/kit/b;

    invoke-static {p1}, Lscreenstreamer/kit/b;->c(Lscreenstreamer/kit/b;)Lcom/ksyun/media/streamer/publisher/FilePublisher;

    move-result-object p1

    iget-object p2, p0, Lscreenstreamer/kit/b$f;->a:Lscreenstreamer/kit/b;

    invoke-static {p2}, Lscreenstreamer/kit/b;->j(Lscreenstreamer/kit/b;)Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    move-result-object p2

    .line 9
    invoke-virtual {p2}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->getEncoder()Lcom/ksyun/media/streamer/encoder/Encoder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ksyun/media/streamer/encoder/Encoder;->getExtra()Lcom/ksyun/media/streamer/framework/AVPacketBase;

    move-result-object p2

    .line 10
    invoke-virtual {p1, p2}, Lcom/ksyun/media/streamer/publisher/Publisher;->setVideoExtra(Lcom/ksyun/media/streamer/framework/AVPacketBase;)V

    .line 11
    iget-object p1, p0, Lscreenstreamer/kit/b$f;->a:Lscreenstreamer/kit/b;

    invoke-static {p1}, Lscreenstreamer/kit/b;->j(Lscreenstreamer/kit/b;)Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->getEncoder()Lcom/ksyun/media/streamer/encoder/Encoder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/Encoder;->forceKeyFrame()V

    goto :goto_1

    .line 12
    :cond_3
    iget-object p1, p0, Lscreenstreamer/kit/b$f;->a:Lscreenstreamer/kit/b;

    invoke-static {p1}, Lscreenstreamer/kit/b;->b(Lscreenstreamer/kit/b;)Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->getEncoder()Lcom/ksyun/media/streamer/encoder/Encoder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/Encoder;->isEncoding()Z

    move-result p1

    if-nez p1, :cond_4

    .line 13
    iget-object p1, p0, Lscreenstreamer/kit/b$f;->a:Lscreenstreamer/kit/b;

    invoke-static {p1}, Lscreenstreamer/kit/b;->b(Lscreenstreamer/kit/b;)Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->getEncoder()Lcom/ksyun/media/streamer/encoder/Encoder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/Encoder;->start()V

    goto :goto_0

    .line 14
    :cond_4
    iget-object p1, p0, Lscreenstreamer/kit/b$f;->a:Lscreenstreamer/kit/b;

    invoke-static {p1}, Lscreenstreamer/kit/b;->c(Lscreenstreamer/kit/b;)Lcom/ksyun/media/streamer/publisher/FilePublisher;

    move-result-object p1

    iget-object v0, p0, Lscreenstreamer/kit/b$f;->a:Lscreenstreamer/kit/b;

    invoke-static {v0}, Lscreenstreamer/kit/b;->b(Lscreenstreamer/kit/b;)Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->getEncoder()Lcom/ksyun/media/streamer/encoder/Encoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/Encoder;->getExtra()Lcom/ksyun/media/streamer/framework/AVPacketBase;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/publisher/Publisher;->setAudioExtra(Lcom/ksyun/media/streamer/framework/AVPacketBase;)V

    .line 15
    :goto_0
    iget-object p1, p0, Lscreenstreamer/kit/b$f;->a:Lscreenstreamer/kit/b;

    invoke-static {p1}, Lscreenstreamer/kit/b;->i(Lscreenstreamer/kit/b;)Lscreenstreamer/kit/b$i;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 16
    iget-object p1, p0, Lscreenstreamer/kit/b$f;->a:Lscreenstreamer/kit/b;

    invoke-static {p1}, Lscreenstreamer/kit/b;->i(Lscreenstreamer/kit/b;)Lscreenstreamer/kit/b$i;

    move-result-object p1

    invoke-interface {p1, p2, p3, p3}, Lscreenstreamer/kit/b$i;->onInfo(III)V

    :cond_5
    :goto_1
    return-void
.end method
