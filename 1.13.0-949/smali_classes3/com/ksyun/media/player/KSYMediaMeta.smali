.class public Lcom/ksyun/media/player/KSYMediaMeta;
.super Ljava/lang/Object;
.source "KSYMediaMeta.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;
    }
.end annotation


# static fields
.field public static final AV_CH_BACK_CENTER:J = 0x100L

.field public static final AV_CH_BACK_LEFT:J = 0x10L

.field public static final AV_CH_BACK_RIGHT:J = 0x20L

.field public static final AV_CH_FRONT_CENTER:J = 0x4L

.field public static final AV_CH_FRONT_LEFT:J = 0x1L

.field public static final AV_CH_FRONT_LEFT_OF_CENTER:J = 0x40L

.field public static final AV_CH_FRONT_RIGHT:J = 0x2L

.field public static final AV_CH_FRONT_RIGHT_OF_CENTER:J = 0x80L

.field public static final AV_CH_LAYOUT_2POINT1:J = 0xbL

.field public static final AV_CH_LAYOUT_2_1:J = 0x103L

.field public static final AV_CH_LAYOUT_2_2:J = 0x603L

.field public static final AV_CH_LAYOUT_3POINT1:J = 0xfL

.field public static final AV_CH_LAYOUT_4POINT0:J = 0x107L

.field public static final AV_CH_LAYOUT_4POINT1:J = 0x10fL

.field public static final AV_CH_LAYOUT_5POINT0:J = 0x607L

.field public static final AV_CH_LAYOUT_5POINT0_BACK:J = 0x37L

.field public static final AV_CH_LAYOUT_5POINT1:J = 0x60fL

.field public static final AV_CH_LAYOUT_5POINT1_BACK:J = 0x3fL

.field public static final AV_CH_LAYOUT_6POINT0:J = 0x707L

.field public static final AV_CH_LAYOUT_6POINT0_FRONT:J = 0x6c3L

.field public static final AV_CH_LAYOUT_6POINT1:J = 0x70fL

.field public static final AV_CH_LAYOUT_6POINT1_BACK:J = 0x13fL

.field public static final AV_CH_LAYOUT_6POINT1_FRONT:J = 0x6cbL

.field public static final AV_CH_LAYOUT_7POINT0:J = 0x637L

.field public static final AV_CH_LAYOUT_7POINT0_FRONT:J = 0x6c7L

.field public static final AV_CH_LAYOUT_7POINT1:J = 0x63fL

.field public static final AV_CH_LAYOUT_7POINT1_WIDE:J = 0x6cfL

.field public static final AV_CH_LAYOUT_7POINT1_WIDE_BACK:J = 0xffL

.field public static final AV_CH_LAYOUT_HEXAGONAL:J = 0x137L

.field public static final AV_CH_LAYOUT_MONO:J = 0x4L

.field public static final AV_CH_LAYOUT_OCTAGONAL:J = 0x737L

.field public static final AV_CH_LAYOUT_QUAD:J = 0x33L

.field public static final AV_CH_LAYOUT_STEREO:J = 0x3L

.field public static final AV_CH_LAYOUT_STEREO_DOWNMIX:J = 0x60000000L

.field public static final AV_CH_LAYOUT_SURROUND:J = 0x7L

.field public static final AV_CH_LOW_FREQUENCY:J = 0x8L

.field public static final AV_CH_LOW_FREQUENCY_2:J = 0x800000000L

.field public static final AV_CH_SIDE_LEFT:J = 0x200L

.field public static final AV_CH_SIDE_RIGHT:J = 0x400L

.field public static final AV_CH_STEREO_LEFT:J = 0x20000000L

.field public static final AV_CH_STEREO_RIGHT:J = 0x40000000L

.field public static final AV_CH_SURROUND_DIRECT_LEFT:J = 0x200000000L

.field public static final AV_CH_SURROUND_DIRECT_RIGHT:J = 0x400000000L

.field public static final AV_CH_TOP_BACK_CENTER:J = 0x10000L

.field public static final AV_CH_TOP_BACK_LEFT:J = 0x8000L

.field public static final AV_CH_TOP_BACK_RIGHT:J = 0x20000L

.field public static final AV_CH_TOP_CENTER:J = 0x800L

.field public static final AV_CH_TOP_FRONT_CENTER:J = 0x2000L

.field public static final AV_CH_TOP_FRONT_LEFT:J = 0x1000L

.field public static final AV_CH_TOP_FRONT_RIGHT:J = 0x4000L

.field public static final AV_CH_WIDE_LEFT:J = 0x80000000L

.field public static final AV_CH_WIDE_RIGHT:J = 0x100000000L

.field public static final IJKM_KEY_AUDIO_CODEC:Ljava/lang/String; = "acodec"

.field public static final IJKM_KEY_AUDIO_STREAM:Ljava/lang/String; = "audio"

.field public static final IJKM_KEY_BITRATE:Ljava/lang/String; = "bitrate"

.field private static final IJKM_KEY_CHANNELS:Ljava/lang/String; = "channels"

.field public static final IJKM_KEY_CHANNEL_LAYOUT:Ljava/lang/String; = "channel_layout"

.field public static final IJKM_KEY_CODEC_LEVEL:Ljava/lang/String; = "codec_level"

.field public static final IJKM_KEY_CODEC_LONG_NAME:Ljava/lang/String; = "codec_long_name"

.field public static final IJKM_KEY_CODEC_NAME:Ljava/lang/String; = "codec_name"

.field public static final IJKM_KEY_CODEC_PIXEL_FORMAT:Ljava/lang/String; = "codec_pixel_format"

.field public static final IJKM_KEY_CODEC_PROFILE:Ljava/lang/String; = "codec_profile"

.field public static final IJKM_KEY_DURATION_US:Ljava/lang/String; = "duration_us"

.field public static final IJKM_KEY_FORMAT:Ljava/lang/String; = "format"

.field public static final IJKM_KEY_FPS_DEN:Ljava/lang/String; = "fps_den"

.field public static final IJKM_KEY_FPS_NUM:Ljava/lang/String; = "fps_num"

.field public static final IJKM_KEY_HEIGHT:Ljava/lang/String; = "height"

.field public static final IJKM_KEY_HTTP_ANALYZE_DNS:Ljava/lang/String; = "analyze_dns_time"

.field public static final IJKM_KEY_HTTP_CODE:Ljava/lang/String; = "http_code"

.field public static final IJKM_KEY_HTTP_CONNECT_TIME:Ljava/lang/String; = "connect_time"

.field public static final IJKM_KEY_HTTP_CONTENT_LENGHT:Ljava/lang/String; = "http_content_length"

.field public static final IJKM_KEY_HTTP_CONTENT_RANGE:Ljava/lang/String; = "http_content_range"

.field public static final IJKM_KEY_HTTP_FIRST_DATA_TIME:Ljava/lang/String; = "first_data_time"

.field public static final IJKM_KEY_HTTP_REDIRECT:Ljava/lang/String; = "http_redirect"

.field public static final IJKM_KEY_HTTP_X_CACHE:Ljava/lang/String; = "http_x_cache"

.field public static final IJKM_KEY_INFO_STREAM_TYPE:Ljava/lang/String; = "stream_type"

.field public static final IJKM_KEY_LANGUAGE:Ljava/lang/String; = "language"

.field public static final IJKM_KEY_OPEN_STREAM_COST:Ljava/lang/String; = "open_stream_cost"

.field public static final IJKM_KEY_PARSER_INFO_COST:Ljava/lang/String; = "parser_info_cost"

.field public static final IJKM_KEY_PARSER_INFO_STATUS:Ljava/lang/String; = "parser_info_status"

.field public static final IJKM_KEY_PREPARE_COST_TIME:Ljava/lang/String; = "prepare_cost"

.field public static final IJKM_KEY_PREPARE_READ_BYTES:Ljava/lang/String; = "prepare_read_bytes"

.field public static final IJKM_KEY_SAMPLE_RATE:Ljava/lang/String; = "sample_rate"

.field public static final IJKM_KEY_SAR_DEN:Ljava/lang/String; = "sar_den"

.field public static final IJKM_KEY_SAR_NUM:Ljava/lang/String; = "sar_num"

.field public static final IJKM_KEY_START_US:Ljava/lang/String; = "start_us"

.field public static final IJKM_KEY_STREAMID:Ljava/lang/String; = "streamId"

.field public static final IJKM_KEY_STREAMS:Ljava/lang/String; = "streams"

.field public static final IJKM_KEY_STREAM_INDEX:Ljava/lang/String; = "stream_index"

.field public static final IJKM_KEY_SUBTITLE_STREAM:Ljava/lang/String; = "subtitle"

.field public static final IJKM_KEY_TBR_DEN:Ljava/lang/String; = "tbr_den"

.field public static final IJKM_KEY_TBR_NUM:Ljava/lang/String; = "tbr_num"

.field public static final IJKM_KEY_TYPE:Ljava/lang/String; = "type"

.field public static final IJKM_KEY_VIDEO_CODEC:Ljava/lang/String; = "vcodec"

.field public static final IJKM_KEY_VIDEO_STREAM:Ljava/lang/String; = "video"

.field public static final IJKM_KEY_WIDTH:Ljava/lang/String; = "width"

.field public static final IJKM_VAL_TYPE__AUDIO:Ljava/lang/String; = "audio"

.field public static final IJKM_VAL_TYPE__EXTERNAL_TIMED_TEXT:Ljava/lang/String; = "external_timed_text"

.field public static final IJKM_VAL_TYPE__SUBTITLE:Ljava/lang/String; = "subtitle"

.field public static final IJKM_VAL_TYPE__UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final IJKM_VAL_TYPE__VIDEO:Ljava/lang/String; = "video"


# instance fields
.field public mACodec:Ljava/lang/String;

.field public mAnalyzeDnsTime:I

.field public mAudioStream:Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;

.field public mBitrate:J

.field public mDurationUS:J

.field public mFormat:Ljava/lang/String;

.field public mHttpCode:I

.field public mHttpConnectTime:I

.field public mHttpContentLength:Ljava/lang/String;

.field public mHttpContentRange:Ljava/lang/String;

.field public mHttpFirstDataTime:I

.field public mHttpRedirect:Ljava/lang/String;

.field public mHttpXCache:Ljava/lang/String;

.field public mMediaMeta:Landroid/os/Bundle;

.field public mOpenStreamCostTime:I

.field public mParserInfoStatus:I

.field public mPrepareCostTime:I

.field public mPrepareReadBytes:I

.field public mStartUS:J

.field public mStreamId:Ljava/lang/String;

.field public mStreamType:Ljava/lang/String;

.field public final mStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;",
            ">;"
        }
    .end annotation
.end field

.field public mVCodec:Ljava/lang/String;

.field public mVideoStream:Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/player/KSYMediaMeta;->mStreams:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/ksyun/media/player/KSYMediaMeta;->mHttpConnectTime:I

    .line 4
    iput v0, p0, Lcom/ksyun/media/player/KSYMediaMeta;->mHttpFirstDataTime:I

    return-void
.end method

.method public static parse(Landroid/os/Bundle;)Lcom/ksyun/media/player/KSYMediaMeta;
    .locals 11

    const-string v0, "first_data_time"

    const-string v1, "connect_time"

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v2, Lcom/ksyun/media/player/KSYMediaMeta;

    invoke-direct {v2}, Lcom/ksyun/media/player/KSYMediaMeta;-><init>()V

    .line 2
    iput-object p0, v2, Lcom/ksyun/media/player/KSYMediaMeta;->mMediaMeta:Landroid/os/Bundle;

    const-string p0, "format"

    .line 3
    invoke-virtual {v2, p0}, Lcom/ksyun/media/player/KSYMediaMeta;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/ksyun/media/player/KSYMediaMeta;->mFormat:Ljava/lang/String;

    const-string p0, "duration_us"

    .line 4
    invoke-virtual {v2, p0}, Lcom/ksyun/media/player/KSYMediaMeta;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/ksyun/media/player/KSYMediaMeta;->mDurationUS:J

    const-string p0, "start_us"

    .line 5
    invoke-virtual {v2, p0}, Lcom/ksyun/media/player/KSYMediaMeta;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/ksyun/media/player/KSYMediaMeta;->mStartUS:J

    const-string p0, "bitrate"

    .line 6
    invoke-virtual {v2, p0}, Lcom/ksyun/media/player/KSYMediaMeta;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/ksyun/media/player/KSYMediaMeta;->mBitrate:J

    const-string v3, "video"

    const/4 v4, -0x1

    .line 7
    invoke-virtual {v2, v3, v4}, Lcom/ksyun/media/player/KSYMediaMeta;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "audio"

    .line 8
    invoke-virtual {v2, v6, v4}, Lcom/ksyun/media/player/KSYMediaMeta;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v7, "http_x_cache"

    .line 9
    invoke-virtual {v2, v7}, Lcom/ksyun/media/player/KSYMediaMeta;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/ksyun/media/player/KSYMediaMeta;->mFormat:Ljava/lang/String;

    const-string v7, "http_redirect"

    .line 10
    invoke-virtual {v2, v7}, Lcom/ksyun/media/player/KSYMediaMeta;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/ksyun/media/player/KSYMediaMeta;->mHttpRedirect:Ljava/lang/String;

    const-string v7, "http_content_range"

    .line 11
    invoke-virtual {v2, v7}, Lcom/ksyun/media/player/KSYMediaMeta;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/ksyun/media/player/KSYMediaMeta;->mHttpContentRange:Ljava/lang/String;

    const-string v7, "http_content_length"

    .line 12
    invoke-virtual {v2, v7}, Lcom/ksyun/media/player/KSYMediaMeta;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/ksyun/media/player/KSYMediaMeta;->mHttpContentLength:Ljava/lang/String;

    const-string v7, "analyze_dns_time"

    const/4 v8, 0x0

    .line 13
    invoke-virtual {v2, v7, v8}, Lcom/ksyun/media/player/KSYMediaMeta;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v2, Lcom/ksyun/media/player/KSYMediaMeta;->mAnalyzeDnsTime:I

    const-string v7, "http_code"

    .line 14
    invoke-virtual {v2, v7, v8}, Lcom/ksyun/media/player/KSYMediaMeta;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v2, Lcom/ksyun/media/player/KSYMediaMeta;->mHttpCode:I

    const-string v7, "streamId"

    .line 15
    invoke-virtual {v2, v7}, Lcom/ksyun/media/player/KSYMediaMeta;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/ksyun/media/player/KSYMediaMeta;->mStreamId:Ljava/lang/String;

    .line 16
    :try_start_0
    invoke-virtual {v2, v1}, Lcom/ksyun/media/player/KSYMediaMeta;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 17
    invoke-virtual {v2, v1}, Lcom/ksyun/media/player/KSYMediaMeta;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18
    new-instance v7, Ljava/lang/Double;

    invoke-direct {v7, v1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Double;->intValue()I

    move-result v1

    iput v1, v2, Lcom/ksyun/media/player/KSYMediaMeta;->mHttpConnectTime:I

    .line 19
    :cond_1
    invoke-virtual {v2, v0}, Lcom/ksyun/media/player/KSYMediaMeta;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 20
    invoke-virtual {v2, v0}, Lcom/ksyun/media/player/KSYMediaMeta;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, v0}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v0

    iput v0, v2, Lcom/ksyun/media/player/KSYMediaMeta;->mHttpFirstDataTime:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 22
    :catch_0
    iput v8, v2, Lcom/ksyun/media/player/KSYMediaMeta;->mHttpConnectTime:I

    .line 23
    iput v8, v2, Lcom/ksyun/media/player/KSYMediaMeta;->mHttpFirstDataTime:I

    :cond_2
    :goto_0
    const-string v0, "prepare_cost"

    .line 24
    invoke-virtual {v2, v0, v8}, Lcom/ksyun/media/player/KSYMediaMeta;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v2, Lcom/ksyun/media/player/KSYMediaMeta;->mPrepareCostTime:I

    const-string v0, "prepare_read_bytes"

    .line 25
    invoke-virtual {v2, v0, v8}, Lcom/ksyun/media/player/KSYMediaMeta;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v2, Lcom/ksyun/media/player/KSYMediaMeta;->mPrepareReadBytes:I

    const-string v0, "open_stream_cost"

    .line 26
    invoke-virtual {v2, v0, v8}, Lcom/ksyun/media/player/KSYMediaMeta;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v2, Lcom/ksyun/media/player/KSYMediaMeta;->mOpenStreamCostTime:I

    const-string v0, "parser_info_status"

    .line 27
    invoke-virtual {v2, v0, v8}, Lcom/ksyun/media/player/KSYMediaMeta;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v2, Lcom/ksyun/media/player/KSYMediaMeta;->mParserInfoStatus:I

    const-string v0, "stream_type"

    .line 28
    invoke-virtual {v2, v0}, Lcom/ksyun/media/player/KSYMediaMeta;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/ksyun/media/player/KSYMediaMeta;->mStreamType:Ljava/lang/String;

    const-string v0, "vcodec"

    .line 29
    invoke-virtual {v2, v0}, Lcom/ksyun/media/player/KSYMediaMeta;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/ksyun/media/player/KSYMediaMeta;->mVCodec:Ljava/lang/String;

    const-string v0, "acodec"

    .line 30
    invoke-virtual {v2, v0}, Lcom/ksyun/media/player/KSYMediaMeta;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/ksyun/media/player/KSYMediaMeta;->mACodec:Ljava/lang/String;

    const-string v0, "streams"

    .line 31
    invoke-virtual {v2, v0}, Lcom/ksyun/media/player/KSYMediaMeta;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_3

    return-object v2

    .line 32
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const-string v7, "stream_index"

    .line 33
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 34
    new-instance v8, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;

    invoke-direct {v8, v7}, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;-><init>(I)V

    .line 35
    iput-object v1, v8, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->mMeta:Landroid/os/Bundle;

    const-string v1, "type"

    .line 36
    invoke-virtual {v8, v1}, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->mType:Ljava/lang/String;

    const-string v1, "language"

    .line 37
    invoke-virtual {v8, v1}, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->mLanguage:Ljava/lang/String;

    .line 38
    iget-object v1, v8, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->mType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    const-string v1, "codec_name"

    .line 39
    invoke-virtual {v8, v1}, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->mCodecName:Ljava/lang/String;

    const-string v1, "codec_profile"

    .line 40
    invoke-virtual {v8, v1}, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->mCodecProfile:Ljava/lang/String;

    const-string v1, "codec_long_name"

    .line 41
    invoke-virtual {v8, v1}, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->mCodecLongName:Ljava/lang/String;

    .line 42
    invoke-virtual {v8, p0}, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v9, v1

    iput-wide v9, v8, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->mBitrate:J

    .line 43
    iget-object v1, v8, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->mType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "width"

    .line 44
    invoke-virtual {v8, v1}, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v8, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->mWidth:I

    const-string v1, "height"

    .line 45
    invoke-virtual {v8, v1}, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v8, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->mHeight:I

    const-string v1, "fps_num"

    .line 46
    invoke-virtual {v8, v1}, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v8, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->mFpsNum:I

    const-string v1, "fps_den"

    .line 47
    invoke-virtual {v8, v1}, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v8, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->mFpsDen:I

    const-string v1, "tbr_num"

    .line 48
    invoke-virtual {v8, v1}, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v8, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->mTbrNum:I

    const-string v1, "tbr_den"

    .line 49
    invoke-virtual {v8, v1}, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v8, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->mTbrDen:I

    const-string v1, "sar_num"

    .line 50
    invoke-virtual {v8, v1}, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v8, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->mSarNum:I

    const-string v1, "sar_den"

    .line 51
    invoke-virtual {v8, v1}, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v8, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->mSarDen:I

    if-ne v5, v7, :cond_7

    .line 52
    iput-object v8, v2, Lcom/ksyun/media/player/KSYMediaMeta;->mVideoStream:Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;

    goto :goto_2

    .line 53
    :cond_6
    iget-object v1, v8, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->mType:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "sample_rate"

    .line 54
    invoke-virtual {v8, v1}, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v8, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->mSampleRate:I

    const-string v1, "channel_layout"

    .line 55
    invoke-virtual {v8, v1}, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v8, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->mChannelLayout:J

    const-string v1, "channels"

    .line 56
    invoke-virtual {v8, v1}, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v8, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->mChannelNumber:I

    if-ne v4, v7, :cond_7

    .line 57
    iput-object v8, v2, Lcom/ksyun/media/player/KSYMediaMeta;->mAudioStream:Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;

    .line 58
    :cond_7
    :goto_2
    iget-object v1, v2, Lcom/ksyun/media/player/KSYMediaMeta;->mStreams:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_8
    return-object v2
.end method


# virtual methods
.method public getAnalyzeDnsTime()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/player/KSYMediaMeta;->mAnalyzeDnsTime:I

    return v0
.end method

.method public getAudioCodec()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaMeta;->mACodec:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectTime()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/player/KSYMediaMeta;->mHttpConnectTime:I

    return v0
.end method

.method public getDurationInline()Ljava/lang/String;
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/ksyun/media/player/KSYMediaMeta;->mDurationUS:J

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    .line 2
    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    .line 3
    div-long v4, v0, v2

    .line 4
    rem-long/2addr v0, v2

    .line 5
    div-long v6, v4, v2

    .line 6
    rem-long/2addr v4, v2

    .line 7
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v3, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v3, v1

    const-string v0, "%02d:%02d:%02d"

    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstDataTime()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/player/KSYMediaMeta;->mHttpFirstDataTime:I

    return v0
.end method

.method public getHttpCode()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/player/KSYMediaMeta;->mHttpCode:I

    return v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/ksyun/media/player/KSYMediaMeta;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Lcom/ksyun/media/player/KSYMediaMeta;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    .line 4
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return p2
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/ksyun/media/player/KSYMediaMeta;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Lcom/ksyun/media/player/KSYMediaMeta;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide p2

    .line 4
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    return-wide p2
.end method

.method public getOpenStreamCostTime()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/player/KSYMediaMeta;->mOpenStreamCostTime:I

    return v0
.end method

.method public getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaMeta;->mMediaMeta:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getParserInfoStatus()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/player/KSYMediaMeta;->mParserInfoStatus:I

    return v0
.end method

.method public getPrepareCostTime()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/player/KSYMediaMeta;->mPrepareCostTime:I

    return v0
.end method

.method public getPrepareReadBytes()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/player/KSYMediaMeta;->mPrepareReadBytes:I

    return v0
.end method

.method public getStreamId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaMeta;->mStreamId:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaMeta;->mStreamType:Ljava/lang/String;

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaMeta;->mMediaMeta:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getVideoCodec()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaMeta;->mVCodec:Ljava/lang/String;

    return-object v0
.end method
