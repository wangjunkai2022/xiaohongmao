.class public Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;
.super Ljava/lang/Object;
.source "VideoEncodeFormat.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ENCODE_BITRATE_MODE_CBR:I = 0x2

.field public static final ENCODE_BITRATE_MODE_CQ:I = 0x0

.field public static final ENCODE_BITRATE_MODE_VBR:I = 0x1

.field public static final ENCODE_PROFILE_BALANCE:I = 0x2

.field public static final ENCODE_PROFILE_DEFAULT:I = 0x0

.field public static final ENCODE_PROFILE_HIGH_PERFORMANCE:I = 0x1

.field public static final ENCODE_PROFILE_LOW_POWER:I = 0x3

.field public static final ENCODE_SCENE_DEFAULT:I = 0x0

.field public static final ENCODE_SCENE_GAME:I = 0x2

.field public static final ENCODE_SCENE_SHOWSELF:I = 0x1


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:F

.field private g:F

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->b:I

    .line 3
    iput p2, p0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->c:I

    .line 4
    iput p3, p0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->d:I

    .line 5
    iput p4, p0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->e:I

    const/high16 p1, 0x41700000    # 15.0f

    .line 6
    iput p1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->f:F

    const/high16 p1, 0x40a00000    # 5.0f

    .line 7
    iput p1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->g:F

    const/4 p1, 0x1

    .line 8
    iput p1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->h:I

    const/4 p2, 0x3

    .line 9
    iput p2, p0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->i:I

    .line 10
    iput p2, p0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->a:I

    const/16 p2, 0x17

    .line 11
    iput p2, p0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->j:I

    .line 12
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->k:Z

    .line 13
    iput p1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->l:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;
    .locals 5

    .line 2
    new-instance v0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;

    iget v1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->b:I

    iget v2, p0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->c:I

    iget v3, p0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->d:I

    iget v4, p0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->e:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;-><init>(IIII)V

    .line 3
    iget v1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->f:F

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->setFramerate(F)V

    .line 4
    iget v1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->g:F

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->setIframeinterval(F)V

    .line 5
    iget v1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->h:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->setScene(I)V

    .line 6
    iget v1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->i:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->setProfile(I)V

    .line 7
    iget v1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->a:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->setPixFmt(I)V

    .line 8
    iget v1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->j:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->setCrf(I)V

    .line 9
    iget-boolean v1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->k:Z

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->setLiveStreaming(Z)V

    .line 10
    iget v1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->l:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->setBitrateMode(I)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->clone()Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;

    move-result-object v0

    return-object v0
.end method

.method public getBitrate()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->e:I

    return v0
.end method

.method public getBitrateMode()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->l:I

    return v0
.end method

.method public getCodecId()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->b:I

    return v0
.end method

.method public getCrf()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->j:I

    return v0
.end method

.method public getFramerate()F
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->f:F

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->d:I

    return v0
.end method

.method public getIframeinterval()F
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->g:F

    return v0
.end method

.method public getLiveStreaming()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->k:Z

    return v0
.end method

.method public getPixFmt()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->a:I

    return v0
.end method

.method public getProfile()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->i:I

    return v0
.end method

.method public getScene()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->h:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->c:I

    return v0
.end method

.method public setBitrate(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->e:I

    return-void
.end method

.method public setBitrateMode(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->l:I

    :cond_0
    return-void
.end method

.method public setCodecId(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->b:I

    return-void
.end method

.method public setCrf(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->j:I

    return-void
.end method

.method public setFramerate(F)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->f:F

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->d:I

    return-void
.end method

.method public setIframeinterval(F)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->g:F

    return-void
.end method

.method public setLiveStreaming(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->k:Z

    return-void
.end method

.method public setPixFmt(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->a:I

    return-void
.end method

.method public setProfile(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->i:I

    return-void
.end method

.method public setScene(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->h:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/encoder/VideoEncodeFormat;->c:I

    return-void
.end method
