.class public Lcom/ksyun/media/streamer/framework/AudioBufFormat;
.super Ljava/lang/Object;
.source "AudioBufFormat.java"


# instance fields
.field public channels:I

.field public nativeModule:J

.field public sampleFormat:I

.field public sampleRate:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->sampleFormat:I

    .line 3
    iput p2, p0, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->sampleRate:I

    .line 4
    iput p3, p0, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->channels:I

    const-wide/16 p1, 0x0

    .line 5
    iput-wide p1, p0, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->nativeModule:J

    return-void
.end method

.method public constructor <init>(Lcom/ksyun/media/streamer/framework/AudioBufFormat;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iget v0, p1, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->sampleFormat:I

    iput v0, p0, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->sampleFormat:I

    .line 8
    iget v0, p1, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->sampleRate:I

    iput v0, p0, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->sampleRate:I

    .line 9
    iget v0, p1, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->channels:I

    iput v0, p0, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->channels:I

    .line 10
    iget-wide v0, p1, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->nativeModule:J

    iput-wide v0, p0, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->nativeModule:J

    return-void
.end method


# virtual methods
.method public equals(Lcom/ksyun/media/streamer/framework/AudioBufFormat;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->sampleFormat:I

    iget v1, p1, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->sampleFormat:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->sampleRate:I

    iget v1, p1, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->sampleRate:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->channels:I

    iget p1, p1, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->channels:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
