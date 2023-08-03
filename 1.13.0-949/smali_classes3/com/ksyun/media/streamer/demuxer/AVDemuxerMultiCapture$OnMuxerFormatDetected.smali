.class public interface abstract Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture$OnMuxerFormatDetected;
.super Ljava/lang/Object;
.source "AVDemuxerMultiCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/streamer/demuxer/AVDemuxerMultiCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnMuxerFormatDetected"
.end annotation


# virtual methods
.method public abstract onAudioFormatDetected(IIIIJ)V
.end method

.method public abstract onVideoFormatDetected(IIIIJ)V
.end method
