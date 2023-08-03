.class public Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;
.super Ljava/lang/Object;
.source "KSYProbeMediaInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KSYProbeMediaData"
.end annotation


# instance fields
.field private mAudioBitrate:I

.field private mAudioChannel:I

.field private mAudioCodec:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

.field private mAudioFrameSize:I

.field private mAudioSampleFormat:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;

.field private mAudioSampleRate:I

.field private mVideoCodec:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYVideoCodecType;

.field private mVideoHeight:I

.field private mVideoWidth:I

.field final synthetic this$0:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;


# direct methods
.method public constructor <init>(Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;->this$0:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYVideoCodecType;)Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYVideoCodecType;
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;->mVideoCodec:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYVideoCodecType;

    return-object p1
.end method

.method static synthetic access$102(Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;I)I
    .locals 0

    iput p1, p0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$202(Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;I)I
    .locals 0

    iput p1, p0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$302(Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;)Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;->mAudioCodec:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    return-object p1
.end method

.method static synthetic access$402(Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;I)I
    .locals 0

    iput p1, p0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;->mAudioBitrate:I

    return p1
.end method

.method static synthetic access$502(Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;I)I
    .locals 0

    iput p1, p0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;->mAudioChannel:I

    return p1
.end method

.method static synthetic access$602(Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;)Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;->mAudioSampleFormat:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;

    return-object p1
.end method

.method static synthetic access$702(Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;I)I
    .locals 0

    iput p1, p0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;->mAudioSampleRate:I

    return p1
.end method

.method static synthetic access$802(Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;I)I
    .locals 0

    iput p1, p0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;->mAudioFrameSize:I

    return p1
.end method


# virtual methods
.method public getAudioBitrate()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;->mAudioBitrate:I

    return v0
.end method

.method public getAudioChannel()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;->mAudioChannel:I

    return v0
.end method

.method public getAudioCodecType()Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;->mAudioCodec:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    return-object v0
.end method

.method public getAudioFormat()Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;->mAudioSampleFormat:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;

    return-object v0
.end method

.method public getAudioFrameSize()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;->mAudioFrameSize:I

    return v0
.end method

.method public getAudioSampleRate()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;->mAudioSampleRate:I

    return v0
.end method

.method public getVideoCodecType()Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYVideoCodecType;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;->mVideoCodec:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYVideoCodecType;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;->mVideoHeight:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;->mVideoWidth:I

    return v0
.end method
