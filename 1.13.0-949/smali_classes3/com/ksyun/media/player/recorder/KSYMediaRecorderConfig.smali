.class public Lcom/ksyun/media/player/recorder/KSYMediaRecorderConfig;
.super Ljava/lang/Object;
.source "KSYMediaRecorderConfig.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xc3500

    .line 2
    iput v0, p0, Lcom/ksyun/media/player/recorder/KSYMediaRecorderConfig;->b:I

    const/4 v0, 0x3

    .line 3
    iput v0, p0, Lcom/ksyun/media/player/recorder/KSYMediaRecorderConfig;->c:I

    const v0, 0xfa00

    .line 4
    iput v0, p0, Lcom/ksyun/media/player/recorder/KSYMediaRecorderConfig;->a:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/ksyun/media/player/recorder/KSYMediaRecorderConfig;->d:Z

    return-void
.end method


# virtual methods
.method public getAudioBitrate()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/player/recorder/KSYMediaRecorderConfig;->a:I

    return v0
.end method

.method public getAudioRecordState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ksyun/media/player/recorder/KSYMediaRecorderConfig;->d:Z

    return v0
.end method

.method public getKeyFrameIntervalSecond()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/player/recorder/KSYMediaRecorderConfig;->c:I

    return v0
.end method

.method public getVideoBitrate()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/player/recorder/KSYMediaRecorderConfig;->b:I

    return v0
.end method

.method public setAudioBitrate(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/player/recorder/KSYMediaRecorderConfig;->a:I

    return-void
.end method

.method public setAudioRecordState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ksyun/media/player/recorder/KSYMediaRecorderConfig;->d:Z

    return-void
.end method

.method public setKeyFrameIntervalSecond(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/player/recorder/KSYMediaRecorderConfig;->c:I

    return-void
.end method

.method public setVideoBitrate(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/player/recorder/KSYMediaRecorderConfig;->b:I

    return-void
.end method
