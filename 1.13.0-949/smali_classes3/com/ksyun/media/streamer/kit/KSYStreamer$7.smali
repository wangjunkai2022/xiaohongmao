.class Lcom/ksyun/media/streamer/kit/KSYStreamer$7;
.super Ljava/lang/Object;
.source "KSYStreamer.java"

# interfaces
.implements Lcom/ksyun/media/streamer/util/gles/GLRender$OnSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/streamer/kit/KSYStreamer;
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

    iput-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$7;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeChanged(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$7;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    iput p1, v0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mScreenRenderWidth:I

    .line 2
    iput p2, v0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mScreenRenderHeight:I

    .line 3
    iget-object v0, v0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mWaterMarkCapture:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    invoke-virtual {v0, p1, p2}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->setPreviewSize(II)V

    .line 4
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$7;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->setPreviewParams()V

    .line 5
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$7;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    iget-boolean p2, p1, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mDelayedStartCameraPreview:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 6
    iget-object p2, p1, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mCameraCapture:Lcom/ksyun/media/streamer/capture/CameraCapture;

    iget p1, p1, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mCameraFacing:I

    invoke-virtual {p2, p1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->start(I)V

    .line 7
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$7;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    iput-boolean v0, p1, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mDelayedStartCameraPreview:Z

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$7;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    iget-boolean p2, p1, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mDelayedStartStreaming:Z

    if-eqz p2, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->startStream()Z

    .line 10
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$7;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    iput-boolean v0, p1, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mDelayedStartStreaming:Z

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$7;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    iget-boolean p2, p1, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mDelayedStartRecording:Z

    if-eqz p2, :cond_2

    .line 12
    iget-object p2, p1, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mRecordUri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->startRecord(Ljava/lang/String;)Z

    .line 13
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$7;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    iput-boolean v0, p1, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mDelayedStartRecording:Z

    :cond_2
    return-void
.end method
