.class public Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;
.super Ljava/lang/Object;
.source "KSYProbeMediaInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;,
        Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;,
        Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYVideoCodecType;,
        Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;,
        Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;
    }
.end annotation


# static fields
.field private static KSY_AUDIO_BITRATE:Ljava/lang/String; = "audio_bitrate"

.field private static KSY_AUDIO_CHANNEL:Ljava/lang/String; = "audio_channel"

.field private static KSY_AUDIO_CODEC:Ljava/lang/String; = "audio_codec"

.field private static KSY_AUDIO_FRAME_SIZE:Ljava/lang/String; = "audio_frame_size"

.field private static KSY_AUDIO_SAMPLE_FORMAT:Ljava/lang/String; = "audio_sample_format"

.field private static KSY_AUDIO_SAMPLE_RATE:Ljava/lang/String; = "audio_sample_rate"

.field private static KSY_AUDIO_STREAM_NUMBER:Ljava/lang/String; = "audio_stream_num"

.field private static KSY_MEDIA_BITRATE:Ljava/lang/String; = "media_bitrate"

.field private static KSY_MEDIA_DURATION:Ljava/lang/String; = "media_duration"

.field private static KSY_MEDIA_FORMAT:Ljava/lang/String; = "media_format"

.field private static KSY_STREAM_ARRAY_LIST:Ljava/lang/String; = "ksy_streams"

.field private static KSY_STREAM_TYPE:Ljava/lang/String; = "stream_type"

.field private static KSY_VIDEO_CODEC:Ljava/lang/String; = "video_codec"

.field private static KSY_VIDEO_HEIGHT:Ljava/lang/String; = "video_height"

.field private static KSY_VIDEO_STREAM_NUMBER:Ljava/lang/String; = "video_stream_num"

.field private static KSY_VIDEO_WIDTH:Ljava/lang/String; = "video_width"


# instance fields
.field private mAudioStreamNum:I

.field private mAudioStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaBitrate:I

.field private mMediaDuration:J

.field private mMediaFormat:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

.field private mVideoStreamNum:I

.field private mVideoStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ksyun/media/player/KSYLibraryManager;->getLocalLibraryPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "ksyplayer"

    const-string v2, "ksylive"

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v2}, Lcom/ksyun/media/player/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {v1}, Lcom/ksyun/media/player/e;->a(Ljava/lang/String;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/ksyun/media/player/KSYLibraryManager;->getLocalLibraryPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/ksyun/media/player/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-static {}, Lcom/ksyun/media/player/KSYLibraryManager;->getLocalLibraryPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ksyun/media/player/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->mVideoStreams:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->mAudioStreams:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->mAudioStreamNum:I

    .line 5
    iput v0, p0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->mVideoStreamNum:I

    return-void
.end method

.method private native _native_getMediaInfo(Ljava/lang/String;ILjava/lang/String;I)Landroid/os/Bundle;
.end method

.method private native _native_thumbnail(Landroid/graphics/Bitmap;Ljava/lang/String;JIII)I
.end method

.method private resetInternalData()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->mAudioStreamNum:I

    .line 2
    iput v0, p0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->mVideoStreamNum:I

    .line 3
    iput v0, p0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->mMediaBitrate:I

    .line 4
    sget-object v0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;->KSY_FORMAT_NULL:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

    iput-object v0, p0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->mMediaFormat:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->mAudioStreams:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->mVideoStreams:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getAudioStreamCount()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->mAudioStreamNum:I

    return v0
.end method

.method public getAudioStreams()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->mAudioStreams:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMediaBitrate()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->mMediaBitrate:I

    return v0
.end method

.method public getMediaDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->mMediaDuration:J

    return-wide v0
.end method

.method public getMediaFormat()Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->mMediaFormat:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

    return-object v0
.end method

.method public getVideoStreamCount()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->mVideoStreamNum:I

    return v0
.end method

.method public getVideoStreams()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->mVideoStreams:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVideoThumbnailAtTime(Ljava/lang/String;JII)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->getVideoThumbnailAtTime(Ljava/lang/String;JIIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getVideoThumbnailAtTime(Ljava/lang/String;JIIZ)Landroid/graphics/Bitmap;
    .locals 19

    move-object/from16 v8, p0

    move/from16 v0, p4

    move/from16 v1, p5

    .line 2
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v9, 0x0

    if-nez v2, :cond_9

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-ltz v4, :cond_9

    if-ltz v0, :cond_9

    if-gez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    if-lez v0, :cond_1

    if-lez v1, :cond_1

    .line 3
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v4, p1

    :goto_0
    move v13, v0

    move v14, v1

    move-object/from16 v17, v2

    goto :goto_4

    :cond_1
    const/4 v2, 0x5

    const/4 v3, 0x1

    move-object/from16 v4, p1

    .line 4
    invoke-virtual {v8, v4, v2, v9, v3}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->probeMediaInfo(Ljava/lang/String;ILjava/util/Map;Z)V

    .line 5
    iget v2, v8, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->mVideoStreamNum:I

    const/4 v3, 0x0

    if-lez v2, :cond_2

    .line 6
    iget-object v2, v8, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->mVideoStreams:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v2}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;->getVideoWidth()I

    move-result v3

    .line 8
    invoke-virtual {v2}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;->getVideoHeight()I

    move-result v2

    move/from16 v18, v3

    move v3, v2

    move/from16 v2, v18

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-lez v3, :cond_6

    if-lez v2, :cond_6

    if-gtz v0, :cond_4

    if-lez v1, :cond_3

    goto :goto_2

    :cond_3
    move v0, v2

    move v1, v3

    goto :goto_3

    :cond_4
    :goto_2
    if-lez v0, :cond_5

    mul-int v1, v0, v3

    .line 9
    div-int/2addr v1, v2

    goto :goto_3

    :cond_5
    mul-int v0, v1, v2

    .line 10
    div-int/2addr v0, v3

    .line 11
    :goto_3
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    :cond_6
    move v13, v0

    move v14, v1

    move-object/from16 v17, v9

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move v5, v13

    move v6, v14

    move/from16 v7, p6

    .line 12
    invoke-direct/range {v0 .. v7}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->_native_thumbnail(Landroid/graphics/Bitmap;Ljava/lang/String;JIII)I

    move-result v0

    if-lez v0, :cond_7

    rsub-int v0, v0, 0x168

    int-to-float v0, v0

    .line 13
    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    .line 14
    invoke-virtual {v15, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x1

    move-object/from16 v10, v17

    .line 15
    invoke-static/range {v10 .. v16}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 16
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0

    :cond_7
    if-gez v0, :cond_8

    return-object v9

    :cond_8
    return-object v17

    :cond_9
    :goto_5
    return-object v9
.end method

.method public probeMediaInfo(Ljava/lang/String;ILjava/util/Map;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->resetInternalData()V

    if-eqz p3, :cond_2

    .line 2
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "\r\n"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    .line 12
    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->_native_getMediaInfo(Ljava/lang/String;ILjava/lang/String;I)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    .line 13
    :cond_3
    invoke-static {}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;->values()[Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

    move-result-object p2

    sget-object p3, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->KSY_MEDIA_FORMAT:Ljava/lang/String;

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    aget-object p2, p2, p3

    iput-object p2, p0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->mMediaFormat:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

    .line 14
    sget-object p2, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->KSY_MEDIA_BITRATE:Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->mMediaBitrate:I

    .line 15
    sget-object p2, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->KSY_MEDIA_DURATION:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->mMediaDuration:J

    .line 16
    sget-object p2, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->KSY_VIDEO_STREAM_NUMBER:Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->mVideoStreamNum:I

    .line 17
    sget-object p2, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->KSY_AUDIO_STREAM_NUMBER:Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->mAudioStreamNum:I

    .line 18
    sget-object p2, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->KSY_STREAM_ARRAY_LIST:Ljava/lang/String;

    .line 19
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    .line 20
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 21
    sget-object p3, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->KSY_STREAM_TYPE:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 22
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    .line 23
    :cond_6
    new-instance v0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;

    invoke-direct {v0, p0}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;-><init>(Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;)V

    const-string v1, "video"

    .line 24
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 25
    invoke-static {}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYVideoCodecType;->values()[Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYVideoCodecType;

    move-result-object p3

    sget-object v1, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->KSY_VIDEO_CODEC:Ljava/lang/String;

    invoke-virtual {p2, v1, p4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    aget-object p3, p3, v1

    invoke-static {v0, p3}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;->access$002(Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYVideoCodecType;)Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYVideoCodecType;

    .line 26
    sget-object p3, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->KSY_VIDEO_WIDTH:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-static {v0, p3}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;->access$102(Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;I)I

    .line 27
    sget-object p3, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->KSY_VIDEO_HEIGHT:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {v0, p2}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;->access$202(Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;I)I

    .line 28
    iget-object p2, p0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->mVideoStreams:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    const-string v1, "audio"

    .line 29
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 30
    invoke-static {}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;->values()[Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    move-result-object p3

    sget-object v1, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->KSY_AUDIO_CODEC:Ljava/lang/String;

    invoke-virtual {p2, v1, p4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    aget-object p3, p3, v1

    invoke-static {v0, p3}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;->access$302(Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;)Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    .line 31
    sget-object p3, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->KSY_AUDIO_BITRATE:Ljava/lang/String;

    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    invoke-static {v0, p3}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;->access$402(Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;I)I

    .line 32
    sget-object p3, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->KSY_AUDIO_CHANNEL:Ljava/lang/String;

    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    invoke-static {v0, p3}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;->access$502(Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;I)I

    .line 33
    invoke-static {}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;->values()[Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;

    move-result-object p3

    sget-object v1, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->KSY_AUDIO_SAMPLE_FORMAT:Ljava/lang/String;

    invoke-virtual {p2, v1, p4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    aget-object p3, p3, v1

    invoke-static {v0, p3}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;->access$602(Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;)Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;

    .line 34
    sget-object p3, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->KSY_AUDIO_SAMPLE_RATE:Ljava/lang/String;

    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    invoke-static {v0, p3}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;->access$702(Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;I)I

    .line 35
    sget-object p3, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->KSY_AUDIO_FRAME_SIZE:Ljava/lang/String;

    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    invoke-static {v0, p2}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;->access$802(Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYProbeMediaData;I)I

    .line 36
    iget-object p2, p0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;->mAudioStreams:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_8
    return-void
.end method
