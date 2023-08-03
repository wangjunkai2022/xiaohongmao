.class public Lcom/ksyun/media/player/misc/KSYTrackInfo;
.super Ljava/lang/Object;
.source "KSYTrackInfo.java"

# interfaces
.implements Lcom/ksyun/media/player/misc/ITrackInfo;


# instance fields
.field private mStreamMeta:Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;

.field private mTrackIndex:I

.field private mTrackType:I


# direct methods
.method public constructor <init>(Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ksyun/media/player/misc/KSYTrackInfo;->mTrackType:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/ksyun/media/player/misc/KSYTrackInfo;->mTrackIndex:I

    .line 4
    iput-object p1, p0, Lcom/ksyun/media/player/misc/KSYTrackInfo;->mStreamMeta:Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;

    return-void
.end method


# virtual methods
.method public getFormat()Lcom/ksyun/media/player/misc/c;
    .locals 2

    new-instance v0, Lcom/ksyun/media/player/misc/KSYMediaFormat;

    iget-object v1, p0, Lcom/ksyun/media/player/misc/KSYTrackInfo;->mStreamMeta:Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;

    invoke-direct {v0, v1}, Lcom/ksyun/media/player/misc/KSYMediaFormat;-><init>(Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;)V

    return-object v0
.end method

.method public getInfoInline()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget v1, p0, Lcom/ksyun/media/player/misc/KSYTrackInfo;->mTrackType:I

    const/4 v2, 0x1

    const-string v3, ", "

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    const-string v4, ","

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    const-string v1, "UNKNOWN"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_0
    const-string v1, "EXTERNAL_TIMEDTEXT"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ksyun/media/player/misc/KSYTrackInfo;->mStreamMeta:Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;

    invoke-virtual {v1}, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->getCodecShortNameInline()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ksyun/media/player/misc/KSYTrackInfo;->mStreamMeta:Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;

    iget-object v1, v1, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "SUBTITLE"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v1, "TIMEDTEXT"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ksyun/media/player/misc/KSYTrackInfo;->mStreamMeta:Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;

    invoke-virtual {v1}, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->getCodecShortNameInline()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ksyun/media/player/misc/KSYTrackInfo;->mStreamMeta:Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;

    iget-object v1, v1, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string v1, "AUDIO"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-object v1, p0, Lcom/ksyun/media/player/misc/KSYTrackInfo;->mStreamMeta:Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;

    invoke-virtual {v1}, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->getCodecShortNameInline()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object v1, p0, Lcom/ksyun/media/player/misc/KSYTrackInfo;->mStreamMeta:Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;

    invoke-virtual {v1}, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->getBitrateInline()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lcom/ksyun/media/player/misc/KSYTrackInfo;->mStreamMeta:Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;

    invoke-virtual {v1}, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->getSampleRateInline()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const-string v1, "VIDEO"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget-object v1, p0, Lcom/ksyun/media/player/misc/KSYTrackInfo;->mStreamMeta:Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;

    invoke-virtual {v1}, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->getCodecShortNameInline()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-object v1, p0, Lcom/ksyun/media/player/misc/KSYTrackInfo;->mStreamMeta:Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;

    invoke-virtual {v1}, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->getBitrateInline()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget-object v1, p0, Lcom/ksyun/media/player/misc/KSYTrackInfo;->mStreamMeta:Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;

    invoke-virtual {v1}, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->getResolutionInline()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/misc/KSYTrackInfo;->mStreamMeta:Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->mLanguage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/player/misc/KSYTrackInfo;->mStreamMeta:Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;

    iget-object v0, v0, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->mLanguage:Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "und"

    return-object v0
.end method

.method public getTrackIndex()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/player/misc/KSYTrackInfo;->mTrackIndex:I

    return v0
.end method

.method public getTrackType()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/player/misc/KSYTrackInfo;->mTrackType:I

    return v0
.end method

.method public setMediaMeta(Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/misc/KSYTrackInfo;->mStreamMeta:Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;

    return-void
.end method

.method public setTrackIndex(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/player/misc/KSYTrackInfo;->mTrackIndex:I

    return-void
.end method

.method public setTrackType(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/player/misc/KSYTrackInfo;->mTrackType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ksyun/media/player/misc/KSYTrackInfo;->getInfoInline()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
