.class Lcom/ksyun/media/streamer/kit/KSYStreamer$5;
.super Ljava/lang/Object;
.source "KSYStreamer.java"

# interfaces
.implements Lcom/ksyun/media/streamer/publisher/Publisher$PubListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/kit/KSYStreamer;->initModules()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/kit/KSYStreamer;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/kit/KSYStreamer;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$5;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(IJ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RtmpPub err="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KSYStreamer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$5;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->stopStream()Z

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$5;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    invoke-static {v0}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->access$000(Lcom/ksyun/media/streamer/kit/KSYStreamer;)Lcom/ksyun/media/streamer/kit/KSYStreamer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v0, -0xbcc

    const/16 v1, -0x7d4

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p1, -0x3f1

    goto :goto_0

    :pswitch_1
    const/16 p1, -0x3ee

    goto :goto_0

    :pswitch_2
    const/16 p1, -0x3f2

    goto :goto_0

    :cond_1
    const/16 p1, -0x7d4

    goto :goto_0

    :cond_2
    const/16 p1, -0x3ef

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$5;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    invoke-static {v0}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->access$000(Lcom/ksyun/media/streamer/kit/KSYStreamer;)Lcom/ksyun/media/streamer/kit/KSYStreamer$OnErrorListener;

    move-result-object v0

    long-to-int p3, p2

    const/4 p2, 0x0

    invoke-interface {v0, p1, p3, p2}, Lcom/ksyun/media/streamer/kit/KSYStreamer$OnErrorListener;->onError(III)V

    .line 5
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$5;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    invoke-static {p1}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->access$200(Lcom/ksyun/media/streamer/kit/KSYStreamer;)V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch -0xbc4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onInfo(IJ)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const-string v0, "KSYStreamer"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 1
    :pswitch_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$5;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    iget-boolean v2, p1, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIsAudioOnly:Z

    if-nez v2, :cond_7

    iget-boolean v2, p1, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAutoAdjustVideoBitrate:Z

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget v2, p1, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioBitrate:I

    int-to-long v2, v2

    sub-long/2addr p2, v2

    .line 3
    iget p1, p1, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mMinVideoBitrate:I

    int-to-long v2, p1

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Drop video bitrate to "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p3, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$5;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    iget-object p3, p3, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mVideoEncoderMgt:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    invoke-virtual {p3}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->getEncoder()Lcom/ksyun/media/streamer/encoder/Encoder;

    move-result-object p3

    long-to-int p2, p1

    invoke-virtual {p3, p2}, Lcom/ksyun/media/streamer/encoder/Encoder;->adjustBitrate(I)V

    .line 6
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$5;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    invoke-static {p1}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->access$100(Lcom/ksyun/media/streamer/kit/KSYStreamer;)Lcom/ksyun/media/streamer/kit/KSYStreamer$OnInfoListener;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 7
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$5;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    invoke-static {p1}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->access$100(Lcom/ksyun/media/streamer/kit/KSYStreamer;)Lcom/ksyun/media/streamer/kit/KSYStreamer$OnInfoListener;

    move-result-object p1

    const/16 p3, 0xbbb

    invoke-interface {p1, p3, p2, v1}, Lcom/ksyun/media/streamer/kit/KSYStreamer$OnInfoListener;->onInfo(III)V

    goto/16 :goto_1

    .line 8
    :pswitch_1
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$5;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    iget-boolean v2, p1, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIsAudioOnly:Z

    if-nez v2, :cond_7

    iget-boolean v2, p1, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAutoAdjustVideoBitrate:Z

    if-nez v2, :cond_1

    goto/16 :goto_1

    .line 9
    :cond_1
    iget v2, p1, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioBitrate:I

    int-to-long v2, v2

    sub-long/2addr p2, v2

    .line 10
    iget p1, p1, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mMaxVideoBitrate:I

    int-to-long v2, p1

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 11
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raise video bitrate to "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object p3, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$5;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    iget-object p3, p3, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mVideoEncoderMgt:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    invoke-virtual {p3}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->getEncoder()Lcom/ksyun/media/streamer/encoder/Encoder;

    move-result-object p3

    long-to-int p2, p1

    invoke-virtual {p3, p2}, Lcom/ksyun/media/streamer/encoder/Encoder;->adjustBitrate(I)V

    .line 13
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$5;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    invoke-static {p1}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->access$100(Lcom/ksyun/media/streamer/kit/KSYStreamer;)Lcom/ksyun/media/streamer/kit/KSYStreamer$OnInfoListener;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 14
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$5;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    invoke-static {p1}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->access$100(Lcom/ksyun/media/streamer/kit/KSYStreamer;)Lcom/ksyun/media/streamer/kit/KSYStreamer$OnInfoListener;

    move-result-object p1

    const/16 p3, 0xbba

    invoke-interface {p1, p3, p2, v1}, Lcom/ksyun/media/streamer/kit/KSYStreamer$OnInfoListener;->onInfo(III)V

    goto/16 :goto_1

    .line 15
    :pswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packet send slow, delayed "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$5;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    invoke-static {p1}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->access$100(Lcom/ksyun/media/streamer/kit/KSYStreamer;)Lcom/ksyun/media/streamer/kit/KSYStreamer$OnInfoListener;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 17
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$5;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    invoke-static {p1}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->access$100(Lcom/ksyun/media/streamer/kit/KSYStreamer;)Lcom/ksyun/media/streamer/kit/KSYStreamer$OnInfoListener;

    move-result-object p1

    const/16 v0, 0xbb9

    long-to-int p3, p2

    invoke-interface {p1, v0, p3, v1}, Lcom/ksyun/media/streamer/kit/KSYStreamer$OnInfoListener;->onInfo(III)V

    goto/16 :goto_1

    .line 18
    :cond_2
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$5;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    iget-boolean p2, p1, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIsAudioOnly:Z

    if-nez p2, :cond_7

    .line 19
    iget-object p1, p1, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mVideoEncoderMgt:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->getEncoder()Lcom/ksyun/media/streamer/encoder/Encoder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/Encoder;->isEncoding()Z

    move-result p1

    if-nez p1, :cond_3

    .line 20
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$5;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    iget-object p1, p1, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mVideoEncoderMgt:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->start()V

    goto :goto_1

    .line 21
    :cond_3
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$5;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    iget-object p1, p1, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mRtmpPublisher:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/publisher/Publisher;->isVideoExtraGot()Z

    move-result p1

    if-nez p1, :cond_7

    .line 22
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$5;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    iget-object p2, p1, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mRtmpPublisher:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    iget-object p1, p1, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mVideoEncoderMgt:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    .line 23
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->getEncoder()Lcom/ksyun/media/streamer/encoder/Encoder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/Encoder;->getExtra()Lcom/ksyun/media/streamer/framework/AVPacketBase;

    move-result-object p1

    .line 24
    invoke-virtual {p2, p1}, Lcom/ksyun/media/streamer/publisher/Publisher;->setVideoExtra(Lcom/ksyun/media/streamer/framework/AVPacketBase;)V

    .line 25
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$5;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    iget-object p1, p1, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mVideoEncoderMgt:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->getEncoder()Lcom/ksyun/media/streamer/encoder/Encoder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/Encoder;->forceKeyFrame()V

    goto :goto_1

    .line 26
    :cond_4
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$5;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    iget-object p1, p1, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioEncoderMgt:Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->getEncoder()Lcom/ksyun/media/streamer/encoder/Encoder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/Encoder;->isEncoding()Z

    move-result p1

    if-nez p1, :cond_5

    .line 27
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$5;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    iget-object p1, p1, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioEncoderMgt:Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->getEncoder()Lcom/ksyun/media/streamer/encoder/Encoder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/Encoder;->start()V

    goto :goto_0

    .line 28
    :cond_5
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$5;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    iget-object p1, p1, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mRtmpPublisher:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/publisher/Publisher;->isAudioExtraGot()Z

    move-result p1

    if-nez p1, :cond_6

    .line 29
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$5;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    iget-object p2, p1, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mRtmpPublisher:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    iget-object p1, p1, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioEncoderMgt:Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->getEncoder()Lcom/ksyun/media/streamer/encoder/Encoder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/Encoder;->getExtra()Lcom/ksyun/media/streamer/framework/AVPacketBase;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ksyun/media/streamer/publisher/Publisher;->setAudioExtra(Lcom/ksyun/media/streamer/framework/AVPacketBase;)V

    .line 30
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$5;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    invoke-static {p1}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->access$100(Lcom/ksyun/media/streamer/kit/KSYStreamer;)Lcom/ksyun/media/streamer/kit/KSYStreamer$OnInfoListener;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 31
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$5;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    invoke-static {p1}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->access$100(Lcom/ksyun/media/streamer/kit/KSYStreamer;)Lcom/ksyun/media/streamer/kit/KSYStreamer$OnInfoListener;

    move-result-object p1

    invoke-interface {p1, v1, v1, v1}, Lcom/ksyun/media/streamer/kit/KSYStreamer$OnInfoListener;->onInfo(III)V

    :cond_7
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
