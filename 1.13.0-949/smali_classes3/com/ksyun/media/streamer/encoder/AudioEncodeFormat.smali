.class public Lcom/ksyun/media/streamer/encoder/AudioEncodeFormat;
.super Ljava/lang/Object;
.source "AudioEncodeFormat.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final MIME_AAC:Ljava/lang/String; = "audio/mp4a-latm"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 9
    iput v0, p0, Lcom/ksyun/media/streamer/encoder/AudioEncodeFormat;->b:I

    .line 10
    iput p1, p0, Lcom/ksyun/media/streamer/encoder/AudioEncodeFormat;->a:I

    .line 11
    iput p2, p0, Lcom/ksyun/media/streamer/encoder/AudioEncodeFormat;->c:I

    .line 12
    iput p3, p0, Lcom/ksyun/media/streamer/encoder/AudioEncodeFormat;->d:I

    .line 13
    iput p4, p0, Lcom/ksyun/media/streamer/encoder/AudioEncodeFormat;->e:I

    .line 14
    iput p5, p0, Lcom/ksyun/media/streamer/encoder/AudioEncodeFormat;->f:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x4

    .line 2
    iput p1, p0, Lcom/ksyun/media/streamer/encoder/AudioEncodeFormat;->b:I

    const/16 p1, 0x100

    .line 3
    iput p1, p0, Lcom/ksyun/media/streamer/encoder/AudioEncodeFormat;->a:I

    .line 4
    iput p2, p0, Lcom/ksyun/media/streamer/encoder/AudioEncodeFormat;->c:I

    .line 5
    iput p3, p0, Lcom/ksyun/media/streamer/encoder/AudioEncodeFormat;->d:I

    .line 6
    iput p4, p0, Lcom/ksyun/media/streamer/encoder/AudioEncodeFormat;->e:I

    .line 7
    iput p5, p0, Lcom/ksyun/media/streamer/encoder/AudioEncodeFormat;->f:I

    return-void
.end method


# virtual methods
.method public getBitrate()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/encoder/AudioEncodeFormat;->f:I

    return v0
.end method

.method public getChannels()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/encoder/AudioEncodeFormat;->e:I

    return v0
.end method

.method public getCodecId()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/encoder/AudioEncodeFormat;->a:I

    return v0
.end method

.method public getMime()Ljava/lang/String;
    .locals 1

    const-string v0, "audio/mp4a-latm"

    return-object v0
.end method

.method public getProfile()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/encoder/AudioEncodeFormat;->b:I

    return v0
.end method

.method public getSampleFmt()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/encoder/AudioEncodeFormat;->c:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/encoder/AudioEncodeFormat;->d:I

    return v0
.end method

.method public setBitrate(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/encoder/AudioEncodeFormat;->f:I

    return-void
.end method

.method public setChannels(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/encoder/AudioEncodeFormat;->e:I

    return-void
.end method

.method public setProfile(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/encoder/AudioEncodeFormat;->b:I

    return-void
.end method

.method public setSampleFmt(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/encoder/AudioEncodeFormat;->c:I

    return-void
.end method

.method public setSampleRate(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/encoder/AudioEncodeFormat;->d:I

    return-void
.end method
