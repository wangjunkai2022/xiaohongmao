.class public Lcom/ksyun/media/streamer/kit/KSYStreamer;
.super Ljava/lang/Object;
.source "KSYStreamer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/media/streamer/kit/KSYStreamer$a;,
        Lcom/ksyun/media/streamer/kit/KSYStreamer$OnErrorListener;,
        Lcom/ksyun/media/streamer/kit/KSYStreamer$OnInfoListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_PREVIEW_HEIGHT:I = 0x500

.field private static final DEFAULT_PREVIEW_WIDTH:I = 0x2d0

.field private static final TAG:Ljava/lang/String; = "KSYStreamer"


# instance fields
.field protected mAudioAPMFilterMgt:Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;

.field protected mAudioBitrate:I

.field protected mAudioCapture:Lcom/ksyun/media/streamer/capture/AudioCapture;

.field protected mAudioCaptureType:I

.field protected mAudioChannels:I

.field protected mAudioEncoderMgt:Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;

.field protected mAudioFilterMgt:Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;

.field protected mAudioMixer:Lcom/ksyun/media/streamer/filter/audio/AudioMixer;

.field protected mAudioPlayerCapture:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

.field protected mAudioPreview:Lcom/ksyun/media/streamer/filter/audio/AudioPreview;

.field protected mAudioProfile:I

.field protected mAudioResampleFilter:Lcom/ksyun/media/streamer/filter/audio/AudioResampleFilter;

.field protected mAudioSampleRate:I

.field protected mAudioUsingCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected mAutoAdjustVideoBitrate:Z

.field protected mAutoRestart:Z

.field protected mAutoRestartInterval:I

.field protected mBluetoothPluged:Z

.field protected mBwEstStrategy:I

.field protected mCameraCapture:Lcom/ksyun/media/streamer/capture/CameraCapture;

.field protected mCameraFacing:I

.field protected mContext:Landroid/content/Context;

.field protected mDelayedStartCameraPreview:Z

.field protected mDelayedStartRecording:Z

.field protected mDelayedStartStreaming:Z

.field protected mEnableAudioLowDelay:Z

.field protected mEnableAudioMix:Z

.field protected mEnableDebugLog:Z

.field protected mEnableRepeatLastFrame:Z

.field private mEnableStreamStatModule:Z

.field protected mEncodeProfile:I

.field protected mEncodeScene:I

.field protected mFilePublisher:Lcom/ksyun/media/streamer/publisher/FilePublisher;

.field protected mFrontCameraMirror:Z

.field protected mGLRender:Lcom/ksyun/media/streamer/util/gles/GLRender;

.field protected mHeadSetPluged:Z

.field private mHeadSetReceiver:Lcom/ksyun/media/streamer/kit/KSYStreamer$a;

.field protected mIFrameInterval:F

.field protected mIdxAudioBgm:I

.field protected mIdxAudioMic:I

.field protected mIdxCamera:I

.field protected mIdxWmLogo:I

.field protected mIdxWmTime:I

.field protected mImageCapture:Lcom/ksyun/media/streamer/capture/ImageCapture;

.field protected mImgTexFilterMgt:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;

.field protected mImgTexMixer:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

.field protected mImgTexPreview:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;

.field protected mImgTexPreviewMixer:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

.field protected mImgTexScaleFilter:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexScaleFilter;

.field protected mInitVideoBitrate:I

.field protected mIsAudioOnly:Z

.field protected mIsAudioPreviewing:Z

.field protected mIsCaptureStarted:Z

.field protected mIsEnableAudioPreview:Z

.field protected volatile mIsFileRecording:Z

.field protected mIsRecording:Z

.field private mMainHandler:Landroid/os/Handler;

.field protected mMaxVideoBitrate:I

.field protected mMinVideoBitrate:I

.field private mOnErrorListener:Lcom/ksyun/media/streamer/kit/KSYStreamer$OnErrorListener;

.field private mOnInfoListener:Lcom/ksyun/media/streamer/kit/KSYStreamer$OnInfoListener;

.field protected mPreviewFps:F

.field protected mPreviewHeight:I

.field protected mPreviewResolution:I

.field private mPreviewSizeChangedListener:Lcom/ksyun/media/streamer/util/gles/GLRender$OnSizeChangedListener;

.field protected mPreviewWidth:I

.field protected mPublisherMgt:Lcom/ksyun/media/streamer/publisher/PublisherMgt;

.field protected mRecordUri:Ljava/lang/String;

.field private final mReleaseObject:Ljava/lang/Object;

.field protected mRotateDegrees:I

.field protected mRtmpPublisher:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

.field protected mScreenRenderHeight:I

.field protected mScreenRenderWidth:I

.field protected mTargetFps:F

.field protected mTargetHeight:I

.field protected mTargetResolution:I

.field protected mTargetWidth:I

.field protected mUri:Ljava/lang/String;

.field protected mUseDummyAudioCapture:Z

.field protected mVideoCodecId:I

.field protected mVideoEncoderMgt:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

.field protected mWaterMarkCapture:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioCaptureType:I

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIdxCamera:I

    .line 4
    iput v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIdxWmLogo:I

    const/4 v2, 0x2

    .line 5
    iput v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIdxWmTime:I

    .line 6
    iput v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIdxAudioMic:I

    .line 7
    iput v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIdxAudioBgm:I

    .line 8
    iput v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mScreenRenderWidth:I

    .line 9
    iput v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mScreenRenderHeight:I

    .line 10
    iput v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewResolution:I

    .line 11
    iput v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewWidth:I

    .line 12
    iput v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewHeight:I

    const/4 v2, 0x0

    .line 13
    iput v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewFps:F

    .line 14
    iput v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetResolution:I

    .line 15
    iput v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetWidth:I

    .line 16
    iput v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetHeight:I

    .line 17
    iput v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetFps:F

    const/high16 v2, 0x40400000    # 3.0f

    .line 18
    iput v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIFrameInterval:F

    .line 19
    iput v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mVideoCodecId:I

    .line 20
    iput v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mEncodeScene:I

    const/4 v2, 0x3

    .line 21
    iput v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mEncodeProfile:I

    .line 22
    iput v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mRotateDegrees:I

    const v2, 0xc3500

    .line 23
    iput v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mMaxVideoBitrate:I

    const v2, 0x927c0

    .line 24
    iput v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mInitVideoBitrate:I

    const v2, 0x30d40

    .line 25
    iput v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mMinVideoBitrate:I

    .line 26
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAutoAdjustVideoBitrate:Z

    .line 27
    iput v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mBwEstStrategy:I

    const v2, 0xbb80

    .line 28
    iput v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioBitrate:I

    const v2, 0xac44

    .line 29
    iput v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioSampleRate:I

    .line 30
    iput v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioChannels:I

    const/4 v2, 0x4

    .line 31
    iput v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioProfile:I

    .line 32
    iput-boolean v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mFrontCameraMirror:Z

    .line 33
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mEnableStreamStatModule:Z

    .line 34
    iput v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mCameraFacing:I

    .line 35
    iput-boolean v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIsRecording:Z

    .line 36
    iput-boolean v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIsFileRecording:Z

    .line 37
    iput-boolean v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIsCaptureStarted:Z

    .line 38
    iput-boolean v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIsAudioOnly:Z

    .line 39
    iput-boolean v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIsAudioPreviewing:Z

    .line 40
    iput-boolean v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIsEnableAudioPreview:Z

    .line 41
    iput-boolean v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mDelayedStartCameraPreview:Z

    .line 42
    iput-boolean v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mDelayedStartStreaming:Z

    .line 43
    iput-boolean v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mDelayedStartRecording:Z

    .line 44
    iput-boolean v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mEnableDebugLog:Z

    .line 45
    iput-boolean v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mEnableAudioMix:Z

    .line 46
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mEnableRepeatLastFrame:Z

    .line 47
    iput-boolean v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mUseDummyAudioCapture:Z

    .line 48
    iput-boolean v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mEnableAudioLowDelay:Z

    .line 49
    iput-boolean v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAutoRestart:Z

    const/16 v0, 0xbb8

    .line 50
    iput v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAutoRestartInterval:I

    .line 51
    iput-boolean v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mHeadSetPluged:Z

    .line 52
    iput-boolean v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mBluetoothPluged:Z

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mReleaseObject:Ljava/lang/Object;

    .line 54
    new-instance v0, Lcom/ksyun/media/streamer/kit/KSYStreamer$7;

    invoke-direct {v0, p0}, Lcom/ksyun/media/streamer/kit/KSYStreamer$7;-><init>(Lcom/ksyun/media/streamer/kit/KSYStreamer;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewSizeChangedListener:Lcom/ksyun/media/streamer/util/gles/GLRender$OnSizeChangedListener;

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mContext:Landroid/content/Context;

    .line 56
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mMainHandler:Landroid/os/Handler;

    .line 57
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object p1

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->setContext(Landroid/content/Context;)V

    .line 58
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->initModules()V

    return-void

    .line 59
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context cannot be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/ksyun/media/streamer/kit/KSYStreamer;)Lcom/ksyun/media/streamer/kit/KSYStreamer$OnErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mOnErrorListener:Lcom/ksyun/media/streamer/kit/KSYStreamer$OnErrorListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ksyun/media/streamer/kit/KSYStreamer;)Lcom/ksyun/media/streamer/kit/KSYStreamer$OnInfoListener;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mOnInfoListener:Lcom/ksyun/media/streamer/kit/KSYStreamer$OnInfoListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ksyun/media/streamer/kit/KSYStreamer;)V
    .locals 0

    invoke-direct {p0}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->autoRestart()V

    return-void
.end method

.method static synthetic access$300(Lcom/ksyun/media/streamer/kit/KSYStreamer;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mReleaseObject:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ksyun/media/streamer/kit/KSYStreamer;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ksyun/media/streamer/kit/KSYStreamer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->setEnableAudioPreviewInternal(Z)V

    return-void
.end method

.method private align(II)I
    .locals 0

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    div-int/2addr p1, p2

    mul-int p1, p1, p2

    return p1
.end method

.method private autoRestart()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAutoRestart:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->stopStream()Z

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ksyun/media/streamer/kit/KSYStreamer$8;

    invoke-direct {v1, p0}, Lcom/ksyun/media/streamer/kit/KSYStreamer$8;-><init>(Lcom/ksyun/media/streamer/kit/KSYStreamer;)V

    iget v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAutoRestartInterval:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private calResolution()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewWidth:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewHeight:I

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewResolution:I

    invoke-direct {p0, v0}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->getShortEdgeLength(I)I

    move-result v0

    .line 3
    iget v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mScreenRenderWidth:I

    iget v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mScreenRenderHeight:I

    if-le v1, v2, :cond_0

    .line 4
    iput v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewHeight:I

    goto :goto_0

    .line 5
    :cond_0
    iput v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewWidth:I

    .line 6
    :cond_1
    :goto_0
    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetWidth:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetHeight:I

    if-nez v0, :cond_3

    .line 7
    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetResolution:I

    invoke-direct {p0, v0}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->getShortEdgeLength(I)I

    move-result v0

    .line 8
    iget v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mScreenRenderWidth:I

    iget v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mScreenRenderHeight:I

    if-le v1, v2, :cond_2

    .line 9
    iput v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetHeight:I

    goto :goto_1

    .line 10
    :cond_2
    iput v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetWidth:I

    .line 11
    :cond_3
    :goto_1
    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mScreenRenderWidth:I

    if-eqz v0, :cond_7

    iget v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mScreenRenderHeight:I

    if-eqz v1, :cond_7

    .line 12
    iget v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewWidth:I

    if-nez v2, :cond_4

    .line 13
    iget v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewHeight:I

    mul-int v2, v2, v0

    div-int/2addr v2, v1

    iput v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewWidth:I

    goto :goto_2

    .line 14
    :cond_4
    iget v3, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewHeight:I

    if-nez v3, :cond_5

    mul-int v2, v2, v1

    .line 15
    div-int/2addr v2, v0

    iput v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewHeight:I

    .line 16
    :cond_5
    :goto_2
    iget v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetWidth:I

    if-nez v2, :cond_6

    .line 17
    iget v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetHeight:I

    mul-int v2, v2, v0

    div-int/2addr v2, v1

    iput v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetWidth:I

    goto :goto_3

    .line 18
    :cond_6
    iget v3, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetHeight:I

    if-nez v3, :cond_7

    mul-int v2, v2, v1

    .line 19
    div-int/2addr v2, v0

    iput v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetHeight:I

    .line 20
    :cond_7
    :goto_3
    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewWidth:I

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->align(II)I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewWidth:I

    .line 21
    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->align(II)I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewHeight:I

    .line 22
    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetWidth:I

    invoke-direct {p0, v0, v1}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->align(II)I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetWidth:I

    .line 23
    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetHeight:I

    invoke-direct {p0, v0, v1}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->align(II)I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetHeight:I

    return-void
.end method

.method private getShortEdgeLength(I)I
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 p1, 0x2d0

    return p1

    :cond_0
    const/16 p1, 0x438

    return p1

    :cond_1
    const/16 p1, 0x21c

    return p1

    :cond_2
    const/16 p1, 0x1e0

    return p1

    :cond_3
    const/16 p1, 0x168

    return p1
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "5.0.1.3"

    return-object v0
.end method

.method private isValidEncodeMethod(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method

.method private registerHeadsetPlugReceiver()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mHeadSetReceiver:Lcom/ksyun/media/streamer/kit/KSYStreamer$a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/ksyun/media/streamer/kit/KSYStreamer$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ksyun/media/streamer/kit/KSYStreamer$a;-><init>(Lcom/ksyun/media/streamer/kit/KSYStreamer;Lcom/ksyun/media/streamer/kit/KSYStreamer$1;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mHeadSetReceiver:Lcom/ksyun/media/streamer/kit/KSYStreamer$a;

    .line 3
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mHeadSetReceiver:Lcom/ksyun/media/streamer/kit/KSYStreamer$a;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private setEnableAudioPreviewInternal(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIsAudioPreviewing:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mHeadSetPluged:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mBluetoothPluged:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioCapture:Lcom/ksyun/media/streamer/capture/AudioCapture;

    .line 3
    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/AudioCapture;->getEnableLatencyTest()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "KSYStreamer"

    const-string v0, "please connect the earphone"

    .line 4
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_1
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIsAudioPreviewing:Z

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->setAudioParams()V

    .line 7
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->startAudioCapture()V

    .line 8
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioPreview:Lcom/ksyun/media/streamer/filter/audio/AudioPreview;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/filter/audio/AudioPreview;->start()V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioPreview:Lcom/ksyun/media/streamer/filter/audio/AudioPreview;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/filter/audio/AudioPreview;->stop()V

    .line 10
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->stopAudioCapture()V

    :goto_0
    return-void
.end method

.method private unregisterHeadsetPlugReceiver()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mHeadSetReceiver:Lcom/ksyun/media/streamer/kit/KSYStreamer$a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public enableDebugLog(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mEnableDebugLog:Z

    .line 2
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object p1

    iget-boolean v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mEnableDebugLog:Z

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->setEnableDebugLog(Z)V

    return-void
.end method

.method public getAudioBitrate()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioBitrate:I

    return v0
.end method

.method public getAudioCapture()Lcom/ksyun/media/streamer/capture/AudioCapture;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioCapture:Lcom/ksyun/media/streamer/capture/AudioCapture;

    return-object v0
.end method

.method public getAudioChannels()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioChannels:I

    return v0
.end method

.method public getAudioEncodeMethod()I
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioEncoderMgt:Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->getEncodeMethod()I

    move-result v0

    return v0
.end method

.method public getAudioEncodeProfile()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioProfile:I

    return v0
.end method

.method public getAudioEncoderMgt()Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioEncoderMgt:Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;

    return-object v0
.end method

.method public getAudioFilterMgt()Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioFilterMgt:Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;

    return-object v0
.end method

.method public getAudioMixer()Lcom/ksyun/media/streamer/filter/audio/AudioMixer;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioMixer:Lcom/ksyun/media/streamer/filter/audio/AudioMixer;

    return-object v0
.end method

.method public getAudioPlayerCapture()Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioPlayerCapture:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    return-object v0
.end method

.method public getAudioSampleRate()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioSampleRate:I

    return v0
.end method

.method public getBGMAudioFilterMgt()Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioPlayerCapture:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->getAudioFilterMgt()Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;

    move-result-object v0

    return-object v0
.end method

.method public getBwEstStrategy()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mBwEstStrategy:I

    return v0
.end method

.method public getCameraCapture()Lcom/ksyun/media/streamer/capture/CameraCapture;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mCameraCapture:Lcom/ksyun/media/streamer/capture/CameraCapture;

    return-object v0
.end method

.method public getCameraFacing()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mCameraFacing:I

    return v0
.end method

.method public getConnectTime()I
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mRtmpPublisher:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->getConnectTime()I

    move-result v0

    return v0
.end method

.method public getCurrentBitrate()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->getCurrentUploadKBitrate()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getCurrentPreviewFps()F
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mCameraCapture:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/CameraCapture;->getCurrentPreviewFps()F

    move-result v0

    return v0
.end method

.method public getCurrentUploadKBitrate()I
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mRtmpPublisher:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->getCurrentUploadKBitrate()I

    move-result v0

    return v0
.end method

.method public getDnsParseTime()I
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mRtmpPublisher:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->getDnsParseTime()I

    move-result v0

    return v0
.end method

.method public getDroppedFrameCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mVideoEncoderMgt:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->getEncoder()Lcom/ksyun/media/streamer/encoder/Encoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/Encoder;->getFrameDropped()I

    move-result v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mRtmpPublisher:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    .line 2
    invoke-virtual {v1}, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->getDroppedVideoFrames()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getEnableAudioLowDelay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mEnableAudioLowDelay:Z

    return v0
.end method

.method public getEnableAutoRestart()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAutoRestart:Z

    return v0
.end method

.method public getEnableRepeatLastFrame()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mEnableRepeatLastFrame:Z

    return v0
.end method

.method public getEncodedFrames()J
    .locals 2

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mVideoEncoderMgt:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->getEncoder()Lcom/ksyun/media/streamer/encoder/Encoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/Encoder;->getFrameEncoded()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getFilePublisher()Lcom/ksyun/media/streamer/publisher/FilePublisher;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mFilePublisher:Lcom/ksyun/media/streamer/publisher/FilePublisher;

    return-object v0
.end method

.method public getGLRender()Lcom/ksyun/media/streamer/util/gles/GLRender;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mGLRender:Lcom/ksyun/media/streamer/util/gles/GLRender;

    return-object v0
.end method

.method public getIFrameInterval()F
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIFrameInterval:F

    return v0
.end method

.method public getImgTexFilterMgt()Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexFilterMgt:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;

    return-object v0
.end method

.method public getImgTexMixer()Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexMixer:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

    return-object v0
.end method

.method public getImgTexPreviewMixer()Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexPreviewMixer:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

    return-object v0
.end method

.method public getInitVideoBitrate()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mInitVideoBitrate:I

    return v0
.end method

.method public getMaxVideoBitrate()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mMaxVideoBitrate:I

    return v0
.end method

.method public getMinVideoBitrate()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mMinVideoBitrate:I

    return v0
.end method

.method public getOnErrorListener()Lcom/ksyun/media/streamer/kit/KSYStreamer$OnErrorListener;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mOnErrorListener:Lcom/ksyun/media/streamer/kit/KSYStreamer$OnErrorListener;

    return-object v0
.end method

.method public getOnInfoListener()Lcom/ksyun/media/streamer/kit/KSYStreamer$OnInfoListener;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mOnInfoListener:Lcom/ksyun/media/streamer/kit/KSYStreamer$OnInfoListener;

    return-object v0
.end method

.method public getPreviewFps()F
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewFps:F

    return v0
.end method

.method public getPreviewHeight()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewHeight:I

    return v0
.end method

.method public getPreviewWidth()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewWidth:I

    return v0
.end method

.method public getRotateDegrees()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mRotateDegrees:I

    return v0
.end method

.method public getRtmpHostIP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mRtmpPublisher:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->getHostIp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRtmpPublisher()Lcom/ksyun/media/streamer/publisher/RtmpPublisher;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mRtmpPublisher:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    return-object v0
.end method

.method public getTargetFps()F
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetFps:F

    return v0
.end method

.method public getTargetHeight()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetHeight:I

    return v0
.end method

.method public getTargetWidth()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetWidth:I

    return v0
.end method

.method public getUploadedKBytes()I
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mRtmpPublisher:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->getUploadedKBytes()I

    move-result v0

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoCodecId()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mVideoCodecId:I

    return v0
.end method

.method public getVideoEncodeMethod()I
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mVideoEncoderMgt:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->getEncodeMethod()I

    move-result v0

    return v0
.end method

.method public getVideoEncodeProfile()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mEncodeProfile:I

    return v0
.end method

.method public getVideoEncodeScene()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mEncodeScene:I

    return v0
.end method

.method public getVideoEncoderMgt()Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mVideoEncoderMgt:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    return-object v0
.end method

.method public getVoiceVolume()F
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioCapture:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/AudioCapture;->getVolume()F

    move-result v0

    return v0
.end method

.method public hideWaterMarkLogo()V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mWaterMarkCapture:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->hideLogo()V

    return-void
.end method

.method public hideWaterMarkTime()V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mWaterMarkCapture:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->hideTime()V

    return-void
.end method

.method protected initModules()V
    .locals 3

    .line 1
    new-instance v0, Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mGLRender:Lcom/ksyun/media/streamer/util/gles/GLRender;

    .line 2
    new-instance v1, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    invoke-direct {v1, v0}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    iput-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mWaterMarkCapture:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    .line 3
    new-instance v0, Lcom/ksyun/media/streamer/capture/ImageCapture;

    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mGLRender:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-direct {v0, v1}, Lcom/ksyun/media/streamer/capture/ImageCapture;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImageCapture:Lcom/ksyun/media/streamer/capture/ImageCapture;

    .line 4
    new-instance v0, Lcom/ksyun/media/streamer/capture/CameraCapture;

    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mGLRender:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-direct {v0, v1, v2}, Lcom/ksyun/media/streamer/capture/CameraCapture;-><init>(Landroid/content/Context;Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mCameraCapture:Lcom/ksyun/media/streamer/capture/CameraCapture;

    .line 5
    new-instance v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexScaleFilter;

    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mGLRender:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-direct {v0, v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexScaleFilter;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexScaleFilter:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexScaleFilter;

    .line 6
    new-instance v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;

    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexFilterMgt:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;

    .line 7
    new-instance v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mGLRender:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-direct {v0, v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexMixer:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

    .line 8
    iget v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIdxCamera:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->setScalingMode(II)V

    .line 9
    new-instance v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mGLRender:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-direct {v0, v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexPreviewMixer:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

    .line 10
    iget v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIdxCamera:I

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->setScalingMode(II)V

    .line 11
    new-instance v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexPreview:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;

    .line 12
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mCameraCapture:Lcom/ksyun/media/streamer/capture/CameraCapture;

    iget-object v0, v0, Lcom/ksyun/media/streamer/capture/CameraCapture;->mImgTexSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexScaleFilter:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexScaleFilter;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 13
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexScaleFilter:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexScaleFilter;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexFilterMgt:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 14
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexFilterMgt:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexMixer:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

    iget v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIdxCamera:I

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->getSinkPin(I)Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 15
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mWaterMarkCapture:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    iget-object v0, v0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->mLogoTexSrcPin:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexMixer:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

    iget v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIdxWmLogo:I

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->getSinkPin(I)Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 16
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mWaterMarkCapture:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    iget-object v0, v0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->mTimeTexSrcPin:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexMixer:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

    iget v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIdxWmTime:I

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->getSinkPin(I)Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 17
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexFilterMgt:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexPreviewMixer:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

    iget v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIdxCamera:I

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->getSinkPin(I)Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 18
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mWaterMarkCapture:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    iget-object v0, v0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->mLogoTexSrcPin:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexPreviewMixer:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

    iget v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIdxWmLogo:I

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->getSinkPin(I)Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 19
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mWaterMarkCapture:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    iget-object v0, v0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->mTimeTexSrcPin:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexPreviewMixer:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

    iget v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIdxWmTime:I

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->getSinkPin(I)Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 20
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexPreviewMixer:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexPreview:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 21
    new-instance v0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioPlayerCapture:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    .line 22
    new-instance v0, Lcom/ksyun/media/streamer/capture/AudioCapture;

    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ksyun/media/streamer/capture/AudioCapture;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioCapture:Lcom/ksyun/media/streamer/capture/AudioCapture;

    .line 23
    iget v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioCaptureType:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/capture/AudioCapture;->setAudioCaptureType(I)V

    .line 24
    new-instance v0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioFilterMgt:Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;

    .line 25
    new-instance v0, Lcom/ksyun/media/streamer/filter/audio/AudioPreview;

    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ksyun/media/streamer/filter/audio/AudioPreview;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioPreview:Lcom/ksyun/media/streamer/filter/audio/AudioPreview;

    .line 26
    new-instance v0, Lcom/ksyun/media/streamer/filter/audio/AudioResampleFilter;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioResampleFilter;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioResampleFilter:Lcom/ksyun/media/streamer/filter/audio/AudioResampleFilter;

    .line 27
    new-instance v0, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioMixer:Lcom/ksyun/media/streamer/filter/audio/AudioMixer;

    .line 28
    new-instance v0, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioAPMFilterMgt:Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;

    .line 29
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioCapture:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/AudioCapture;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioFilterMgt:Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 30
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioFilterMgt:Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioPreview:Lcom/ksyun/media/streamer/filter/audio/AudioPreview;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 31
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioPreview:Lcom/ksyun/media/streamer/filter/audio/AudioPreview;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioResampleFilter:Lcom/ksyun/media/streamer/filter/audio/AudioResampleFilter;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 32
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioResampleFilter:Lcom/ksyun/media/streamer/filter/audio/AudioResampleFilter;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioMixer:Lcom/ksyun/media/streamer/filter/audio/AudioMixer;

    iget v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIdxAudioMic:I

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->getSinkPin(I)Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 33
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mEnableAudioMix:Z

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioPlayerCapture:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioMixer:Lcom/ksyun/media/streamer/filter/audio/AudioMixer;

    iget v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIdxAudioBgm:I

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->getSinkPin(I)Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 35
    :cond_0
    new-instance v0, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mGLRender:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-direct {v0, v1}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mVideoEncoderMgt:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    .line 36
    new-instance v0, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioEncoderMgt:Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;

    .line 37
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mWaterMarkCapture:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    iget-object v0, v0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->mLogoBufSrcPin:Lcom/ksyun/media/streamer/capture/a;

    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mVideoEncoderMgt:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->getImgBufMixer()Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;

    move-result-object v1

    iget v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIdxWmLogo:I

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->getSinkPin(I)Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 38
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mWaterMarkCapture:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    iget-object v0, v0, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->mTimeBufSrcPin:Lcom/ksyun/media/streamer/capture/a;

    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mVideoEncoderMgt:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->getImgBufMixer()Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;

    move-result-object v1

    iget v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIdxWmTime:I

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->getSinkPin(I)Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 39
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexMixer:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mVideoEncoderMgt:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->getImgTexSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 40
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mCameraCapture:Lcom/ksyun/media/streamer/capture/CameraCapture;

    iget-object v0, v0, Lcom/ksyun/media/streamer/capture/CameraCapture;->mImgBufSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mVideoEncoderMgt:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->getImgBufSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 41
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioMixer:Lcom/ksyun/media/streamer/filter/audio/AudioMixer;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioEncoderMgt:Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 42
    new-instance v0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mRtmpPublisher:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    .line 43
    new-instance v0, Lcom/ksyun/media/streamer/publisher/FilePublisher;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/publisher/FilePublisher;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mFilePublisher:Lcom/ksyun/media/streamer/publisher/FilePublisher;

    const/4 v1, 0x1

    .line 44
    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/publisher/Publisher;->setAutoWork(Z)V

    .line 45
    new-instance v0, Lcom/ksyun/media/streamer/publisher/PublisherMgt;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/publisher/PublisherMgt;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPublisherMgt:Lcom/ksyun/media/streamer/publisher/PublisherMgt;

    .line 46
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioEncoderMgt:Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    iget-object v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPublisherMgt:Lcom/ksyun/media/streamer/publisher/PublisherMgt;

    invoke-virtual {v2}, Lcom/ksyun/media/streamer/publisher/PublisherMgt;->getAudioSink()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 47
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mVideoEncoderMgt:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    iget-object v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPublisherMgt:Lcom/ksyun/media/streamer/publisher/PublisherMgt;

    invoke-virtual {v2}, Lcom/ksyun/media/streamer/publisher/PublisherMgt;->getVideoSink()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 48
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPublisherMgt:Lcom/ksyun/media/streamer/publisher/PublisherMgt;

    iget-object v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mRtmpPublisher:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    invoke-virtual {v0, v2}, Lcom/ksyun/media/streamer/publisher/PublisherMgt;->addPublisher(Lcom/ksyun/media/streamer/publisher/Publisher;)V

    .line 49
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mGLRender:Lcom/ksyun/media/streamer/util/gles/GLRender;

    new-instance v2, Lcom/ksyun/media/streamer/kit/KSYStreamer$1;

    invoke-direct {v2, p0}, Lcom/ksyun/media/streamer/kit/KSYStreamer$1;-><init>(Lcom/ksyun/media/streamer/kit/KSYStreamer;)V

    invoke-virtual {v0, v2}, Lcom/ksyun/media/streamer/util/gles/GLRender;->addListener(Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;)V

    .line 50
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioCapture:Lcom/ksyun/media/streamer/capture/AudioCapture;

    new-instance v2, Lcom/ksyun/media/streamer/kit/KSYStreamer$2;

    invoke-direct {v2, p0}, Lcom/ksyun/media/streamer/kit/KSYStreamer$2;-><init>(Lcom/ksyun/media/streamer/kit/KSYStreamer;)V

    invoke-virtual {v0, v2}, Lcom/ksyun/media/streamer/capture/AudioCapture;->setAudioCaptureListener(Lcom/ksyun/media/streamer/capture/AudioCapture$OnAudioCaptureListener;)V

    .line 51
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mCameraCapture:Lcom/ksyun/media/streamer/capture/CameraCapture;

    new-instance v2, Lcom/ksyun/media/streamer/kit/KSYStreamer$3;

    invoke-direct {v2, p0}, Lcom/ksyun/media/streamer/kit/KSYStreamer$3;-><init>(Lcom/ksyun/media/streamer/kit/KSYStreamer;)V

    invoke-virtual {v0, v2}, Lcom/ksyun/media/streamer/capture/CameraCapture;->setOnCameraCaptureListener(Lcom/ksyun/media/streamer/capture/CameraCapture$OnCameraCaptureListener;)V

    .line 52
    new-instance v0, Lcom/ksyun/media/streamer/kit/KSYStreamer$4;

    invoke-direct {v0, p0}, Lcom/ksyun/media/streamer/kit/KSYStreamer$4;-><init>(Lcom/ksyun/media/streamer/kit/KSYStreamer;)V

    .line 53
    iget-object v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mVideoEncoderMgt:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    invoke-virtual {v2, v0}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->setEncoderListener(Lcom/ksyun/media/streamer/encoder/Encoder$EncoderListener;)V

    .line 54
    iget-object v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioEncoderMgt:Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;

    invoke-virtual {v2, v0}, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->setEncoderListener(Lcom/ksyun/media/streamer/encoder/Encoder$EncoderListener;)V

    .line 55
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mRtmpPublisher:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    new-instance v2, Lcom/ksyun/media/streamer/kit/KSYStreamer$5;

    invoke-direct {v2, p0}, Lcom/ksyun/media/streamer/kit/KSYStreamer$5;-><init>(Lcom/ksyun/media/streamer/kit/KSYStreamer;)V

    invoke-virtual {v0, v2}, Lcom/ksyun/media/streamer/publisher/Publisher;->setPubListener(Lcom/ksyun/media/streamer/publisher/Publisher$PubListener;)V

    .line 56
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mFilePublisher:Lcom/ksyun/media/streamer/publisher/FilePublisher;

    new-instance v2, Lcom/ksyun/media/streamer/kit/KSYStreamer$6;

    invoke-direct {v2, p0}, Lcom/ksyun/media/streamer/kit/KSYStreamer$6;-><init>(Lcom/ksyun/media/streamer/kit/KSYStreamer;)V

    invoke-virtual {v0, v2}, Lcom/ksyun/media/streamer/publisher/Publisher;->setPubListener(Lcom/ksyun/media/streamer/publisher/Publisher$PubListener;)V

    .line 57
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mGLRender:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-virtual {v0, v1, v1}, Lcom/ksyun/media/streamer/util/gles/GLRender;->init(II)V

    .line 58
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    const-string v1, "audio"

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 60
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mHeadSetPluged:Z

    .line 61
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mBluetoothPluged:Z

    .line 62
    :cond_1
    invoke-direct {p0}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->registerHeadsetPlugReceiver()V

    return-void
.end method

.method public isAudioMixEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mEnableAudioMix:Z

    return v0
.end method

.method public isAudioMuted()Z
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioMixer:Lcom/ksyun/media/streamer/filter/audio/AudioMixer;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->getMute()Z

    move-result v0

    return v0
.end method

.method public isAudioPreviewing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIsEnableAudioPreview:Z

    return v0
.end method

.method public isAutoAdjustVideoBitrate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAutoAdjustVideoBitrate:Z

    return v0
.end method

.method public isFileRecording()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIsFileRecording:Z

    return v0
.end method

.method public isFrontCamera()Z
    .locals 2

    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mCameraFacing:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isFrontCameraMirrorEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mFrontCameraMirror:Z

    return v0
.end method

.method public isMp4FastStartEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mFilePublisher:Lcom/ksyun/media/streamer/publisher/FilePublisher;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/publisher/FilePublisher;->isMp4FastStartEnabled()Z

    move-result v0

    return v0
.end method

.method public isRecording()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIsRecording:Z

    return v0
.end method

.method public isTorchSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mCameraCapture:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/CameraCapture;->isTorchSupported()Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    const-string v0, "KSYStreamer"

    const-string v1, "onPause"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexPreview:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->onPause()V

    .line 3
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mEnableRepeatLastFrame:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIsRecording:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIsAudioOnly:Z

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->getVideoEncoderMgt()Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->getEncoder()Lcom/ksyun/media/streamer/encoder/Encoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/Encoder;->startRepeatLastFrame()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "KSYStreamer"

    const-string v1, "onResume"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mEnableRepeatLastFrame:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIsRecording:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIsAudioOnly:Z

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->getVideoEncoderMgt()Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->getEncoder()Lcom/ksyun/media/streamer/encoder/Encoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/Encoder;->stopRepeatLastFrame()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexPreview:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->onResume()V

    return-void
.end method

.method public release()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    iput-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mMainHandler:Landroid/os/Handler;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mReleaseObject:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImageCapture:Lcom/ksyun/media/streamer/capture/ImageCapture;

    invoke-virtual {v2}, Lcom/ksyun/media/streamer/capture/ImageCapture;->release()V

    .line 6
    iget-object v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mWaterMarkCapture:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    invoke-virtual {v2}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->release()V

    .line 7
    iget-object v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioPlayerCapture:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-virtual {v2}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->release()V

    .line 8
    iget-object v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mCameraCapture:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-virtual {v2}, Lcom/ksyun/media/streamer/capture/CameraCapture;->release()V

    .line 9
    iget-object v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioCapture:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-virtual {v2}, Lcom/ksyun/media/streamer/capture/AudioCapture;->release()V

    .line 10
    iget-object v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mFilePublisher:Lcom/ksyun/media/streamer/publisher/FilePublisher;

    invoke-virtual {v2}, Lcom/ksyun/media/streamer/publisher/FilePublisher;->release()V

    .line 11
    iget-object v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mGLRender:Lcom/ksyun/media/streamer/util/gles/GLRender;

    invoke-virtual {v2}, Lcom/ksyun/media/streamer/util/gles/GLRender;->release()V

    .line 12
    invoke-virtual {p0, v1}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->setOnLogEventListener(Lcom/ksyun/media/streamer/logstats/StatsLogReport$OnLogEventListener;)V

    .line 13
    invoke-direct {p0}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->unregisterHeadsetPlugReceiver()V

    .line 14
    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioAPMFilterMgt:Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;->getNSState()Z

    move-result v1

    if-nez v1, :cond_1

    .line 15
    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioAPMFilterMgt:Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;->release()V

    .line 16
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestScreenShot(FLcom/ksyun/media/streamer/util/gles/GLRender$ScreenShotListener;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexMixer:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

    invoke-virtual {v0, p1, p2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->requestScreenShot(FLcom/ksyun/media/streamer/util/gles/GLRender$ScreenShotListener;)V

    return-void
.end method

.method public requestScreenShot(Lcom/ksyun/media/streamer/util/gles/GLRender$ScreenShotListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexMixer:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->requestScreenShot(Lcom/ksyun/media/streamer/util/gles/GLRender$ScreenShotListener;)V

    return-void
.end method

.method public setAudioBitrate(I)V
    .locals 1

    if-lez p1, :cond_0

    .line 1
    iput p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioBitrate:I

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "the AudioBitrate must >0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAudioChannels(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "the AudioChannels must be mono or stereo"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iput p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioChannels:I

    return-void
.end method

.method public setAudioEncodeMethod(I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->isValidEncodeMethod(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIsRecording:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioEncoderMgt:Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->setEncodeMethod(I)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot set encode method while recording"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setAudioEncodeProfile(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioProfile:I

    return-void
.end method

.method public setAudioKBitrate(I)V
    .locals 0

    mul-int/lit16 p1, p1, 0x3e8

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->setAudioBitrate(I)V

    return-void
.end method

.method public setAudioNSLevel(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioAPMFilterMgt:Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;->setAudioNSLevel(I)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "the NS level must be between 0 and 3"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAudioOnly(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIsAudioOnly:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mVideoEncoderMgt:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Z)V

    .line 3
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIsRecording:Z

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mVideoEncoderMgt:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->getEncoder()Lcom/ksyun/media/streamer/encoder/Encoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/Encoder;->stop()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mVideoEncoderMgt:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPublisherMgt:Lcom/ksyun/media/streamer/publisher/PublisherMgt;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/publisher/PublisherMgt;->getVideoSink()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 6
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIsRecording:Z

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mVideoEncoderMgt:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->getEncoder()Lcom/ksyun/media/streamer/encoder/Encoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/Encoder;->start()V

    .line 8
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mRtmpPublisher:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/publisher/Publisher;->setAudioOnly(Z)V

    .line 9
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mFilePublisher:Lcom/ksyun/media/streamer/publisher/FilePublisher;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/publisher/Publisher;->setAudioOnly(Z)V

    .line 10
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIsAudioOnly:Z

    return-void
.end method

.method protected setAudioParams()V
    .locals 5

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioResampleFilter:Lcom/ksyun/media/streamer/filter/audio/AudioResampleFilter;

    new-instance v1, Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    iget v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioSampleRate:I

    iget v3, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioChannels:I

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Lcom/ksyun/media/streamer/framework/AudioBufFormat;-><init>(III)V

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/filter/audio/AudioResampleFilter;->setOutFormat(Lcom/ksyun/media/streamer/framework/AudioBufFormat;)V

    return-void
.end method

.method public setAudioSampleRate(I)V
    .locals 1

    if-lez p1, :cond_0

    .line 1
    iput p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioSampleRate:I

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "the AudioSampleRate must > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBwEstStrategy(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mBwEstStrategy:I

    return-void
.end method

.method public setCameraCaptureResolution(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->getShortEdgeLength(I)I

    move-result p1

    mul-int/lit8 v0, p1, 0x10

    .line 4
    div-int/lit8 v0, v0, 0x9

    .line 5
    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mCameraCapture:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-virtual {v1, v0, p1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->setPreviewSize(II)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid resolution index"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCameraCaptureResolution(II)V
    .locals 1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mCameraCapture:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-virtual {v0, p1, p2}, Lcom/ksyun/media/streamer/capture/CameraCapture;->setPreviewSize(II)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid resolution"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCameraFacing(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mCameraFacing:I

    return-void
.end method

.method public setDisplayPreview(Landroid/opengl/GLSurfaceView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexPreview:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->setDisplayPreview(Landroid/opengl/GLSurfaceView;)V

    .line 2
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexPreview:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->getGLRender()Lcom/ksyun/media/streamer/util/gles/GLRender;

    move-result-object p1

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewSizeChangedListener:Lcom/ksyun/media/streamer/util/gles/GLRender$OnSizeChangedListener;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->addListener(Lcom/ksyun/media/streamer/util/gles/GLRender$OnSizeChangedListener;)V

    return-void
.end method

.method public setDisplayPreview(Landroid/view/TextureView;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexPreview:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->setDisplayPreview(Landroid/view/TextureView;)V

    .line 4
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexPreview:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->getGLRender()Lcom/ksyun/media/streamer/util/gles/GLRender;

    move-result-object p1

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewSizeChangedListener:Lcom/ksyun/media/streamer/util/gles/GLRender$OnSizeChangedListener;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/util/gles/GLRender;->addListener(Lcom/ksyun/media/streamer/util/gles/GLRender$OnSizeChangedListener;)V

    return-void
.end method

.method public setEnableAudioLowDelay(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mEnableAudioLowDelay:Z

    .line 2
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mUseDummyAudioCapture:Z

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioCapture:Lcom/ksyun/media/streamer/capture/AudioCapture;

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/capture/AudioCapture;->setAudioCaptureType(I)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioPlayerCapture:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->setAudioPlayerType(I)V

    return-void
.end method

.method public setEnableAudioMix(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mEnableAudioMix:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioPlayerCapture:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object p1

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioMixer:Lcom/ksyun/media/streamer/filter/audio/AudioMixer;

    iget v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIdxAudioBgm:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->getSinkPin(I)Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioPlayerCapture:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object p1

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioMixer:Lcom/ksyun/media/streamer/filter/audio/AudioMixer;

    iget v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIdxAudioBgm:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->getSinkPin(I)Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Lcom/ksyun/media/streamer/framework/SinkPin;Z)V

    :goto_0
    return-void
.end method

.method public setEnableAudioNS(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioAPMFilterMgt:Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;->getNSState()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioCapture:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/capture/AudioCapture;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v1

    iget-object v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioFilterMgt:Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;

    invoke-virtual {v2}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Lcom/ksyun/media/streamer/framework/SinkPin;Z)V

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioCapture:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/AudioCapture;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioAPMFilterMgt:Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioAPMFilterMgt:Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioFilterMgt:Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioCapture:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/capture/AudioCapture;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v1

    iget-object v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioAPMFilterMgt:Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;

    invoke-virtual {v2}, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Lcom/ksyun/media/streamer/framework/SinkPin;Z)V

    .line 6
    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioAPMFilterMgt:Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v1

    iget-object v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioFilterMgt:Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;

    invoke-virtual {v2}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Lcom/ksyun/media/streamer/framework/SinkPin;Z)V

    .line 7
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioCapture:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/AudioCapture;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioFilterMgt:Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioAPMFilterMgt:Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;->setEnableAudioNS(Z)V

    return-void
.end method

.method public setEnableAudioPreview(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIsEnableAudioPreview:Z

    .line 2
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->setEnableAudioPreviewInternal(Z)V

    return-void
.end method

.method public setEnableAutoRestart(ZI)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAutoRestart:Z

    .line 2
    iput p2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAutoRestartInterval:I

    return-void
.end method

.method public setEnableCameraMirror(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->setFrontCameraMirror(Z)V

    return-void
.end method

.method public setEnableEarMirror(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->setEnableAudioPreview(Z)V

    return-void
.end method

.method public setEnableImgBufBeauty(Z)V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mVideoEncoderMgt:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->setEnableImgBufBeauty(Z)V

    return-void
.end method

.method public setEnableMp4FastStart(Z)V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mFilePublisher:Lcom/ksyun/media/streamer/publisher/FilePublisher;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/publisher/FilePublisher;->setEnableMp4FastStart(Z)V

    return-void
.end method

.method public setEnableRepeatLastFrame(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mEnableRepeatLastFrame:Z

    return-void
.end method

.method public setEnableStreamStatModule(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mEnableStreamStatModule:Z

    return-void
.end method

.method public setEncodeMethod(I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->isValidEncodeMethod(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->setVideoEncodeMethod(I)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->setAudioEncodeMethod(I)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setFrontCameraMirror(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mFrontCameraMirror:Z

    .line 2
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->updateFrontMirror()V

    .line 3
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->setIsFrontCameraMirror(Z)V

    return-void
.end method

.method public setHeadsetPlugged(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->setEnableAudioMix(Z)V

    return-void
.end method

.method public setIFrameInterval(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    .line 1
    iput p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIFrameInterval:F

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "the IFrameInterval must > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMuteAudio(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioPlayerCapture:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->setMute(Z)V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioPreview:Lcom/ksyun/media/streamer/filter/audio/AudioPreview;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/filter/audio/AudioPreview;->setMute(Z)V

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioMixer:Lcom/ksyun/media/streamer/filter/audio/AudioMixer;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/filter/audio/AudioMixer;->setMute(Z)V

    return-void
.end method

.method public setOffscreenPreview(II)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setOnAudioRawDataListener(Lcom/ksyun/media/streamer/kit/OnAudioRawDataListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioCapture:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/capture/AudioCapture;->setOnAudioRawDataListener(Lcom/ksyun/media/streamer/kit/OnAudioRawDataListener;)V

    return-void
.end method

.method public setOnErrorListener(Lcom/ksyun/media/streamer/kit/KSYStreamer$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mOnErrorListener:Lcom/ksyun/media/streamer/kit/KSYStreamer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Lcom/ksyun/media/streamer/kit/KSYStreamer$OnInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mOnInfoListener:Lcom/ksyun/media/streamer/kit/KSYStreamer$OnInfoListener;

    return-void
.end method

.method public setOnLogEventListener(Lcom/ksyun/media/streamer/logstats/StatsLogReport$OnLogEventListener;)V
    .locals 1

    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->setOnLogEventListener(Lcom/ksyun/media/streamer/logstats/StatsLogReport$OnLogEventListener;)V

    return-void
.end method

.method public setOnPreviewFrameListener(Lcom/ksyun/media/streamer/kit/OnPreviewFrameListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mCameraCapture:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->setOnPreviewFrameListener(Lcom/ksyun/media/streamer/kit/OnPreviewFrameListener;)V

    return-void
.end method

.method public setPreviewFps(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-lez v1, :cond_1

    .line 1
    iput p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewFps:F

    .line 2
    iget v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetFps:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_0

    .line 3
    iput p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetFps:F

    :cond_0
    return-void

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "the fps must > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected setPreviewParams()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->calResolution()V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mWaterMarkCapture:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    iget v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewWidth:I

    iget v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->setPreviewSize(II)V

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mWaterMarkCapture:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    iget v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetWidth:I

    iget v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->setTargetSize(II)V

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mCameraCapture:Lcom/ksyun/media/streamer/capture/CameraCapture;

    iget v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mRotateDegrees:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->setOrientation(I)V

    .line 5
    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewFps:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x41700000    # 15.0f

    .line 6
    iput v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewFps:F

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mCameraCapture:Lcom/ksyun/media/streamer/capture/CameraCapture;

    iget v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewFps:F

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->setPreviewFps(F)V

    .line 8
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexScaleFilter:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexScaleFilter;

    iget v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewWidth:I

    iget v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexScaleFilter;->setTargetSize(II)V

    .line 9
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexPreviewMixer:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

    iget v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewWidth:I

    iget v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->setTargetSize(II)V

    .line 10
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexMixer:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

    iget v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetWidth:I

    iget v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->setTargetSize(II)V

    .line 11
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->setAudioParams()V

    return-void
.end method

.method public setPreviewResolution(I)V
    .locals 2

    if-ltz p1, :cond_1

    const/4 v0, 0x4

    if-gt p1, v0, :cond_1

    .line 8
    iput p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewResolution:I

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewWidth:I

    .line 10
    iput p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewHeight:I

    .line 11
    iget p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mScreenRenderWidth:I

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mScreenRenderHeight:I

    if-eqz p1, :cond_0

    .line 12
    invoke-direct {p0}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->calResolution()V

    .line 13
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexScaleFilter:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexScaleFilter;

    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewWidth:I

    iget v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewHeight:I

    invoke-virtual {p1, v0, v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexScaleFilter;->setTargetSize(II)V

    .line 14
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexPreviewMixer:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewWidth:I

    iget v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewHeight:I

    invoke-virtual {p1, v0, v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->setTargetSize(II)V

    :cond_0
    return-void

    .line 15
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid resolution index"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPreviewResolution(II)V
    .locals 1

    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    if-nez p1, :cond_0

    if-eqz p2, :cond_2

    .line 1
    :cond_0
    iput p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewWidth:I

    .line 2
    iput p2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewHeight:I

    .line 3
    iget p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mScreenRenderWidth:I

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mScreenRenderHeight:I

    if-eqz p1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->calResolution()V

    .line 5
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexScaleFilter:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexScaleFilter;

    iget p2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewWidth:I

    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewHeight:I

    invoke-virtual {p1, p2, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexScaleFilter;->setTargetSize(II)V

    .line 6
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexPreviewMixer:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

    iget p2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewWidth:I

    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewHeight:I

    invoke-virtual {p1, p2, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->setTargetSize(II)V

    :cond_1
    return-void

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid resolution"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected setRecordingParams()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->calResolution()V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexMixer:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

    iget v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetWidth:I

    iget v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->setTargetSize(II)V

    .line 3
    new-instance v0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    iget v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mVideoCodecId:I

    iget v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetWidth:I

    iget v3, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetHeight:I

    iget v4, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mInitVideoBitrate:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;-><init>(IIII)V

    .line 4
    iget v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetFps:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/high16 v1, 0x41700000    # 15.0f

    .line 5
    iput v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetFps:F

    .line 6
    :cond_0
    iget v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetFps:F

    iput v1, v0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->frameRate:F

    .line 7
    iget v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIFrameInterval:F

    iput v1, v0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->iFrameInterval:F

    .line 8
    iget v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mEncodeScene:I

    iput v1, v0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->scene:I

    .line 9
    iget v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mEncodeProfile:I

    iput v1, v0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->profile:I

    .line 10
    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mVideoEncoderMgt:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    invoke-virtual {v1, v0}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->setEncodeFormat(Lcom/ksyun/media/streamer/framework/VideoCodecFormat;)V

    .line 11
    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioProfile:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 12
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioEncoderMgt:Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->setEncodeMethod(I)V

    .line 13
    :cond_1
    new-instance v0, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;

    const/16 v3, 0x100

    const/4 v4, 0x1

    iget v5, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioSampleRate:I

    iget v6, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioChannels:I

    iget v7, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioBitrate:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;-><init>(IIIII)V

    .line 14
    iget v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioProfile:I

    iput v1, v0, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->profile:I

    .line 15
    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioEncoderMgt:Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;

    invoke-virtual {v1, v0}, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->setEncodeFormat(Lcom/ksyun/media/streamer/framework/AudioCodecFormat;)V

    .line 16
    new-instance v0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$BwEstConfig;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$BwEstConfig;-><init>()V

    .line 17
    iget v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mBwEstStrategy:I

    iput v1, v0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$BwEstConfig;->strategy:I

    .line 18
    iget v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioBitrate:I

    iput v1, v0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$BwEstConfig;->initAudioBitrate:I

    .line 19
    iget v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mInitVideoBitrate:I

    iput v1, v0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$BwEstConfig;->initVideoBitrate:I

    .line 20
    iget v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mMinVideoBitrate:I

    iput v1, v0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$BwEstConfig;->minVideoBitrate:I

    .line 21
    iget v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mMaxVideoBitrate:I

    iput v1, v0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$BwEstConfig;->maxVideoBitrate:I

    .line 22
    iget-boolean v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAutoAdjustVideoBitrate:Z

    iput-boolean v1, v0, Lcom/ksyun/media/streamer/publisher/RtmpPublisher$BwEstConfig;->isAdjustBitrate:Z

    .line 23
    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mRtmpPublisher:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    invoke-virtual {v1, v0}, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->setBwEstConfig(Lcom/ksyun/media/streamer/publisher/RtmpPublisher$BwEstConfig;)V

    .line 24
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mRtmpPublisher:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    iget v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetFps:F

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->setFramerate(F)V

    .line 25
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mRtmpPublisher:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    iget v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mMaxVideoBitrate:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->setVideoBitrate(I)V

    .line 26
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mRtmpPublisher:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    iget v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioBitrate:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->setAudioBitrate(I)V

    .line 27
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mFilePublisher:Lcom/ksyun/media/streamer/publisher/FilePublisher;

    iget v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mInitVideoBitrate:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/publisher/Publisher;->setVideoBitrate(I)V

    .line 28
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mFilePublisher:Lcom/ksyun/media/streamer/publisher/FilePublisher;

    iget v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioBitrate:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/publisher/Publisher;->setAudioBitrate(I)V

    .line 29
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mFilePublisher:Lcom/ksyun/media/streamer/publisher/FilePublisher;

    iget v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetFps:F

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/publisher/Publisher;->setFramerate(F)V

    return-void
.end method

.method public setRotateDegrees(I)V
    .locals 4

    .line 1
    rem-int/lit16 p1, p1, 0x168

    .line 2
    rem-int/lit8 v0, p1, 0x5a

    if-nez v0, :cond_7

    .line 3
    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mRotateDegrees:I

    if-ne v0, p1, :cond_0

    return-void

    .line 4
    :cond_0
    rem-int/lit16 v0, v0, 0xb4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    :goto_0
    rem-int/lit16 v3, p1, 0xb4

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eq v0, v1, :cond_6

    .line 6
    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewWidth:I

    if-gtz v0, :cond_3

    iget v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewHeight:I

    if-lez v1, :cond_4

    .line 7
    :cond_3
    iget v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewHeight:I

    invoke-virtual {p0, v1, v0}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->setPreviewResolution(II)V

    .line 8
    :cond_4
    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetWidth:I

    if-gtz v0, :cond_5

    iget v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetHeight:I

    if-lez v1, :cond_6

    .line 9
    :cond_5
    iget v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetHeight:I

    invoke-virtual {p0, v1, v0}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->setTargetResolution(II)V

    .line 10
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mWaterMarkCapture:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    iget v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetWidth:I

    iget v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->setTargetSize(II)V

    .line 11
    :cond_6
    iput p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mRotateDegrees:I

    .line 12
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mCameraCapture:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->setOrientation(I)V

    return-void

    .line 13
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid rotate degrees"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTargetFps(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-lez v1, :cond_1

    .line 1
    iput p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetFps:F

    .line 2
    iget v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewFps:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_0

    .line 3
    iput p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewFps:F

    :cond_0
    return-void

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "the fps must > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTargetResolution(I)V
    .locals 2

    if-ltz p1, :cond_1

    const/4 v0, 0x4

    if-gt p1, v0, :cond_1

    .line 8
    iput p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetResolution:I

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetWidth:I

    .line 10
    iput p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetHeight:I

    .line 11
    iget p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mScreenRenderWidth:I

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mScreenRenderHeight:I

    if-eqz p1, :cond_0

    .line 12
    invoke-direct {p0}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->calResolution()V

    .line 13
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexMixer:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetWidth:I

    iget v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetHeight:I

    invoke-virtual {p1, v0, v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->setTargetSize(II)V

    .line 14
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mVideoEncoderMgt:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetWidth:I

    iget v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetHeight:I

    invoke-virtual {p1, v0, v1}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->setImgBufTargetSize(II)V

    :cond_0
    return-void

    .line 15
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid resolution index"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTargetResolution(II)V
    .locals 1

    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    if-nez p1, :cond_0

    if-eqz p2, :cond_2

    .line 1
    :cond_0
    iput p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetWidth:I

    .line 2
    iput p2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetHeight:I

    .line 3
    iget p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mScreenRenderWidth:I

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mScreenRenderHeight:I

    if-eqz p1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->calResolution()V

    .line 5
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexMixer:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

    iget p2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetWidth:I

    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetHeight:I

    invoke-virtual {p1, p2, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->setTargetSize(II)V

    .line 6
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mVideoEncoderMgt:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    iget p2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetWidth:I

    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetHeight:I

    invoke-virtual {p1, p2, v0}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->setImgBufTargetSize(II)V

    :cond_1
    return-void

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid resolution"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mUri:Ljava/lang/String;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "url can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUseDummyAudioCapture(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mUseDummyAudioCapture:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioCapture:Lcom/ksyun/media/streamer/capture/AudioCapture;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/capture/AudioCapture;->setAudioCaptureType(I)V

    goto :goto_1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioCapture:Lcom/ksyun/media/streamer/capture/AudioCapture;

    iget-boolean v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mEnableAudioLowDelay:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/capture/AudioCapture;->setAudioCaptureType(I)V

    :goto_1
    return-void
.end method

.method public setVideoBitrate(I)V
    .locals 1

    if-lez p1, :cond_0

    .line 1
    iput p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mInitVideoBitrate:I

    .line 2
    iput p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mMaxVideoBitrate:I

    .line 3
    iput p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mMinVideoBitrate:I

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAutoAdjustVideoBitrate:Z

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "the VideoBitrate must > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setVideoBitrate(III)V
    .locals 0

    if-lez p1, :cond_1

    if-lez p2, :cond_1

    if-ltz p3, :cond_0

    .line 6
    iput p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mInitVideoBitrate:I

    .line 7
    iput p2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mMaxVideoBitrate:I

    .line 8
    iput p3, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mMinVideoBitrate:I

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAutoAdjustVideoBitrate:Z

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "the min VideoBitrate must >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "the initial and max VideoBitrate must > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setVideoCodecId(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "input video codecid error"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iput p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mVideoCodecId:I

    return-void
.end method

.method public setVideoEncodeMethod(I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->isValidEncodeMethod(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIsRecording:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mVideoEncoderMgt:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->setEncodeMethod(I)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot set encode method while recording"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setVideoEncodeProfile(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mEncodeProfile:I

    return-void
.end method

.method public setVideoEncodeScene(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mEncodeScene:I

    return-void
.end method

.method public setVideoKBitrate(I)V
    .locals 0

    mul-int/lit16 p1, p1, 0x3e8

    .line 1
    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->setVideoBitrate(I)V

    return-void
.end method

.method public setVideoKBitrate(III)V
    .locals 0

    mul-int/lit16 p1, p1, 0x3e8

    mul-int/lit16 p2, p2, 0x3e8

    mul-int/lit16 p3, p3, 0x3e8

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->setVideoBitrate(III)V

    return-void
.end method

.method public setVoiceVolume(F)V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioCapture:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/capture/AudioCapture;->setVolume(F)V

    return-void
.end method

.method public showWaterMarkLogo(Landroid/graphics/Bitmap;FFFFF)V
    .locals 8

    const/4 v0, 0x0

    .line 7
    invoke-static {v0, p6}, Ljava/lang/Math;->max(FF)F

    move-result p6

    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    invoke-static {p6, v0}, Ljava/lang/Math;->min(FF)F

    move-result p6

    .line 9
    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexMixer:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

    iget v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIdxWmLogo:I

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->setRenderRect(IFFFFF)V

    .line 10
    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexPreviewMixer:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

    iget v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIdxWmLogo:I

    invoke-virtual/range {v1 .. v7}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->setRenderRect(IFFFFF)V

    .line 11
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mVideoEncoderMgt:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->getImgBufMixer()Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;->setRenderRect(IFFFFF)V

    .line 12
    iget-object p2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mWaterMarkCapture:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    invoke-virtual {p2, p1, p4, p5}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->showLogo(Landroid/graphics/Bitmap;FF)V

    return-void
.end method

.method public showWaterMarkLogo(Ljava/lang/String;FFFFF)V
    .locals 8

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p6}, Ljava/lang/Math;->max(FF)F

    move-result p6

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    invoke-static {p6, v0}, Ljava/lang/Math;->min(FF)F

    move-result p6

    .line 3
    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexMixer:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

    iget v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIdxWmLogo:I

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->setRenderRect(IFFFFF)V

    .line 4
    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexPreviewMixer:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

    iget v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIdxWmLogo:I

    invoke-virtual/range {v1 .. v7}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->setRenderRect(IFFFFF)V

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mVideoEncoderMgt:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->getImgBufMixer()Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;->setRenderRect(IFFFFF)V

    .line 6
    iget-object p2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mWaterMarkCapture:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    iget-object p3, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p3, p1, p4, p5}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->showLogo(Landroid/content/Context;Ljava/lang/String;FF)V

    return-void
.end method

.method public showWaterMarkTime(FFFIF)V
    .locals 9

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p5}, Ljava/lang/Math;->max(FF)F

    move-result p5

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2
    invoke-static {p5, v1}, Ljava/lang/Math;->min(FF)F

    move-result p5

    .line 3
    iget-object v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexMixer:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

    iget v3, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIdxWmTime:I

    const/4 v7, 0x0

    move v4, p1

    move v5, p2

    move v6, p3

    move v8, p5

    invoke-virtual/range {v2 .. v8}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->setRenderRect(IFFFFF)V

    .line 4
    iget-object v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexPreviewMixer:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

    iget v3, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIdxWmTime:I

    invoke-virtual/range {v2 .. v8}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->setRenderRect(IFFFFF)V

    .line 5
    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mVideoEncoderMgt:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->getImgBufMixer()Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual/range {v2 .. v8}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufMixer;->setRenderRect(IFFFFF)V

    .line 6
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mWaterMarkCapture:Lcom/ksyun/media/streamer/capture/WaterMarkCapture;

    const-string p2, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {p1, p4, p2, p3, v0}, Lcom/ksyun/media/streamer/capture/WaterMarkCapture;->showTime(ILjava/lang/String;FF)V

    return-void
.end method

.method protected startAudioCapture()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioCapture:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/AudioCapture;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/framework/SrcPin;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioUsingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioUsingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioUsingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioCapture:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/AudioCapture;->start()V

    :cond_1
    return-void
.end method

.method public startBgm(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioPlayerCapture:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-virtual {v0, p1, p2}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->start(Ljava/lang/String;Z)V

    return-void
.end method

.method public startCameraPreview()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mCameraFacing:I

    invoke-virtual {p0, v0}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->startCameraPreview(I)V

    return-void
.end method

.method public startCameraPreview(I)V
    .locals 1

    .line 2
    iput p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mCameraFacing:I

    .line 3
    iget p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewWidth:I

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewHeight:I

    if-nez p1, :cond_3

    :cond_0
    iget p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mScreenRenderWidth:I

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mScreenRenderHeight:I

    if-nez p1, :cond_3

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexPreview:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->getDisplayPreview()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mDelayedStartCameraPreview:Z

    return-void

    :cond_2
    const/16 p1, 0x2d0

    .line 6
    iput p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mScreenRenderWidth:I

    const/16 p1, 0x500

    .line 7
    iput p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mScreenRenderHeight:I

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->setPreviewParams()V

    .line 9
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mCameraCapture:Lcom/ksyun/media/streamer/capture/CameraCapture;

    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mCameraFacing:I

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/capture/CameraCapture;->start(I)V

    return-void
.end method

.method protected startCapture()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIsCaptureStarted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIsCaptureStarted:Z

    .line 3
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->setAudioParams()V

    .line 4
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->setRecordingParams()V

    .line 5
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->startAudioCapture()V

    .line 6
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mCameraCapture:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/CameraCapture;->startRecord()V

    return-void
.end method

.method public startImageCapture(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->startImageCapture(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public startImageCapture(Landroid/graphics/Bitmap;Z)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImageCapture:Lcom/ksyun/media/streamer/capture/ImageCapture;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/ImageCapture;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexPreviewMixer:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

    iget v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIdxCamera:I

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->getSinkPin(I)Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImageCapture:Lcom/ksyun/media/streamer/capture/ImageCapture;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/ImageCapture;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexMixer:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

    iget v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIdxCamera:I

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->getSinkPin(I)Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 6
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImageCapture:Lcom/ksyun/media/streamer/capture/ImageCapture;

    iget v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPreviewFps:F

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/capture/ImageCapture;->setRepeatFps(F)V

    .line 7
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImageCapture:Lcom/ksyun/media/streamer/capture/ImageCapture;

    invoke-virtual {v0, p1, p2}, Lcom/ksyun/media/streamer/capture/ImageCapture;->start(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public startImageCapture(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/ksyun/media/streamer/util/BitmapLoader;->loadBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->startImageCapture(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public startRecord(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIsFileRecording:Z

    if-nez v0, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mRecordUri:Ljava/lang/String;

    .line 3
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIsAudioOnly:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetWidth:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetHeight:I

    if-nez v0, :cond_4

    :cond_1
    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mScreenRenderWidth:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mScreenRenderHeight:I

    if-nez v0, :cond_4

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexPreview:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->getDisplayPreview()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5
    iput-boolean v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mDelayedStartStreaming:Z

    return v1

    :cond_3
    const/16 v0, 0x2d0

    .line 6
    iput v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mScreenRenderWidth:I

    const/16 v0, 0x500

    .line 7
    iput v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mScreenRenderHeight:I

    .line 8
    :cond_4
    iput-boolean v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIsFileRecording:Z

    .line 9
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mFilePublisher:Lcom/ksyun/media/streamer/publisher/FilePublisher;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/publisher/FilePublisher;->startRecording(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mPublisherMgt:Lcom/ksyun/media/streamer/publisher/PublisherMgt;

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mFilePublisher:Lcom/ksyun/media/streamer/publisher/FilePublisher;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/publisher/PublisherMgt;->addPublisher(Lcom/ksyun/media/streamer/publisher/Publisher;)V

    .line 11
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->startCapture()V

    return v1

    :cond_5
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public startStream()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIsRecording:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIsAudioOnly:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetWidth:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mTargetHeight:I

    if-nez v0, :cond_4

    :cond_1
    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mScreenRenderWidth:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mScreenRenderHeight:I

    if-nez v0, :cond_4

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexPreview:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->getDisplayPreview()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4
    iput-boolean v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mDelayedStartStreaming:Z

    return v1

    :cond_3
    const/16 v0, 0x2d0

    .line 5
    iput v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mScreenRenderWidth:I

    const/16 v0, 0x500

    .line 6
    iput v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mScreenRenderHeight:I

    .line 7
    :cond_4
    iput-boolean v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIsRecording:Z

    .line 8
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->startCapture()V

    .line 9
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mRtmpPublisher:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    iget-object v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mUri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->connect(Ljava/lang/String;)V

    return v1
.end method

.method protected stopAudioCapture()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioUsingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioUsingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioUsingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioUsingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioCapture:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/AudioCapture;->stop()V

    :cond_2
    return-void
.end method

.method public stopBgm()V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioPlayerCapture:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->stop()V

    return-void
.end method

.method public stopCameraPreview()V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mCameraCapture:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/CameraCapture;->stop()V

    return-void
.end method

.method protected stopCapture()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIsCaptureStarted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIsCaptureStarted:Z

    .line 3
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->stopAudioCapture()V

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mCameraCapture:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/CameraCapture;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mCameraCapture:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/CameraCapture;->stopRecord()V

    .line 6
    :cond_1
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIsRecording:Z

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mVideoEncoderMgt:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->getEncoder()Lcom/ksyun/media/streamer/encoder/Encoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/Encoder;->flush()V

    .line 8
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioEncoderMgt:Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->getEncoder()Lcom/ksyun/media/streamer/encoder/Encoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/Encoder;->flush()V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mVideoEncoderMgt:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->stop()V

    .line 10
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioEncoderMgt:Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->getEncoder()Lcom/ksyun/media/streamer/encoder/Encoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/Encoder;->stop()V

    return-void
.end method

.method public stopImageCapture()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImageCapture:Lcom/ksyun/media/streamer/capture/ImageCapture;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/ImageCapture;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexPreviewMixer:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

    iget v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIdxCamera:I

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->getSinkPin(I)Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Lcom/ksyun/media/streamer/framework/SinkPin;Z)V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImageCapture:Lcom/ksyun/media/streamer/capture/ImageCapture;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/ImageCapture;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexMixer:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

    iget v3, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIdxCamera:I

    invoke-virtual {v1, v3}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->getSinkPin(I)Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Lcom/ksyun/media/streamer/framework/SinkPin;Z)V

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImageCapture:Lcom/ksyun/media/streamer/capture/ImageCapture;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/ImageCapture;->stop()V

    return-void
.end method

.method public stopRecord()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIsFileRecording:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIsRecording:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mVideoEncoderMgt:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->getEncoder()Lcom/ksyun/media/streamer/encoder/Encoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/Encoder;->isEncoding()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioEncoderMgt:Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;

    .line 3
    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/AudioEncoderMgt;->getEncoder()Lcom/ksyun/media/streamer/encoder/Encoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/Encoder;->isEncoding()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->stopCapture()V

    goto :goto_1

    .line 5
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mFilePublisher:Lcom/ksyun/media/streamer/publisher/FilePublisher;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/publisher/Publisher;->stop()V

    :goto_1
    return-void
.end method

.method public stopStream()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIsRecording:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIsFileRecording:Z

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->stopCapture()V

    .line 4
    :cond_1
    iput-boolean v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIsRecording:Z

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mRtmpPublisher:Lcom/ksyun/media/streamer/publisher/RtmpPublisher;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/publisher/RtmpPublisher;->disconnect()V

    const/4 v0, 0x1

    return v0
.end method

.method public switchCamera()V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mCameraCapture:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/capture/CameraCapture;->switchCamera()Z

    return-void
.end method

.method public toggleTorch(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mCameraCapture:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->toggleTorch(Z)Z

    move-result p1

    return p1
.end method

.method protected updateFrontMirror()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mCameraFacing:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexMixer:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

    iget v2, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIdxCamera:I

    iget-boolean v3, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mFrontCameraMirror:Z

    xor-int/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->setMirror(IZ)V

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mVideoEncoderMgt:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    iget-boolean v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mFrontCameraMirror:Z

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->setImgBufMirror(Z)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mImgTexMixer:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;

    iget v1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIdxCamera:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexMixer;->setMirror(IZ)V

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mVideoEncoderMgt:Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;

    invoke-virtual {v0, v2}, Lcom/ksyun/media/streamer/encoder/VideoEncoderMgt;->setImgBufMirror(Z)V

    :goto_0
    return-void
.end method

.method public updateUrl(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->setUrl(Ljava/lang/String;)V

    return-void
.end method
