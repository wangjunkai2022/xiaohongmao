.class public Lcom/ksyun/media/player/misc/KSYQosInfo;
.super Ljava/lang/Object;
.source "KSYQosInfo.java"


# static fields
.field public static final AUDIO_BUFFER_BYTE:Ljava/lang/String; = "audio_buffer_byte"

.field public static final AUDIO_BUFFER_TIME:Ljava/lang/String; = "audio_buffer_time"

.field public static final AUDIO_TOTAL_DATA_SIZE:Ljava/lang/String; = "audio_total_data_size"

.field public static final TOTAL_DATA_BYTES:Ljava/lang/String; = "total_data_bytes"

.field public static final VIDEO_BUFFER_BYTE:Ljava/lang/String; = "video_buffer_byte"

.field public static final VIDEO_BUFFER_TIME:Ljava/lang/String; = "video_buffer_time"

.field public static final VIDEO_TOTAL_DATA_SIZE:Ljava/lang/String; = "video_total_data_size"


# instance fields
.field public audioBufferByteLength:I

.field public audioBufferTimeLength:I

.field public audioTotalDataSize:J

.field public totalDataSize:J

.field public videoBufferByteLength:I

.field public videoBufferTimeLength:I

.field public videoTotalDataSize:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ksyun/media/player/misc/KSYQosInfo;->audioBufferByteLength:I

    .line 3
    iput v0, p0, Lcom/ksyun/media/player/misc/KSYQosInfo;->audioBufferTimeLength:I

    const-wide/16 v1, 0x0

    .line 4
    iput-wide v1, p0, Lcom/ksyun/media/player/misc/KSYQosInfo;->audioTotalDataSize:J

    .line 5
    iput v0, p0, Lcom/ksyun/media/player/misc/KSYQosInfo;->videoBufferByteLength:I

    .line 6
    iput v0, p0, Lcom/ksyun/media/player/misc/KSYQosInfo;->videoBufferTimeLength:I

    .line 7
    iput-wide v1, p0, Lcom/ksyun/media/player/misc/KSYQosInfo;->videoTotalDataSize:J

    .line 8
    iput-wide v1, p0, Lcom/ksyun/media/player/misc/KSYQosInfo;->totalDataSize:J

    return-void
.end method
