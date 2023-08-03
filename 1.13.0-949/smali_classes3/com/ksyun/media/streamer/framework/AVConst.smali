.class public Lcom/ksyun/media/streamer/framework/AVConst;
.super Ljava/lang/Object;
.source "AVConst.java"


# static fields
.field public static final AV_SAMPLE_FMT_DBL:I = 0x4

.field public static final AV_SAMPLE_FMT_DBLP:I = 0x9

.field public static final AV_SAMPLE_FMT_FLT:I = 0x3

.field public static final AV_SAMPLE_FMT_FLTP:I = 0x8

.field public static final AV_SAMPLE_FMT_S16:I = 0x1

.field public static final AV_SAMPLE_FMT_S16P:I = 0x6

.field public static final AV_SAMPLE_FMT_S32:I = 0x2

.field public static final AV_SAMPLE_FMT_S32P:I = 0x7

.field public static final AV_SAMPLE_FMT_U8:I = 0x0

.field public static final AV_SAMPLE_FMT_U8P:I = 0x5

.field public static final CODEC_ID_AAC:I = 0x100

.field public static final CODEC_ID_AVC:I = 0x1

.field public static final CODEC_ID_GIF:I = 0x3

.field public static final CODEC_ID_HEVC:I = 0x2

.field public static final CODEC_ID_MPEG4:I = 0x4

.field public static final CODEC_ID_NONE:I = 0x0

.field public static final FLAG_B_FRAME:I = 0x10

.field public static final FLAG_CODEC_CONFIG:I = 0x2

.field public static final FLAG_DETACH_NATIVE_MODULE:I = 0x10000

.field public static final FLAG_END_OF_STREAM:I = 0x4

.field public static final FLAG_KEY_FRAME:I = 0x1

.field public static final FLAG_P_FRAME:I = 0x8

.field public static final MEDIA_TYPE_AUDIO:I = 0x2

.field public static final MEDIA_TYPE_NONE:I = 0x0

.field public static final MEDIA_TYPE_VIDEO:I = 0x1

.field public static final PIX_FMT_ARGB:I = 0x4

.field public static final PIX_FMT_BGR8:I = 0x6

.field public static final PIX_FMT_I420:I = 0x3

.field public static final PIX_FMT_NONE:I = 0x0

.field public static final PIX_FMT_NV21:I = 0x1

.field public static final PIX_FMT_RGBA:I = 0x5

.field public static final PIX_FMT_YV12:I = 0x2

.field public static final PROFILE_AAC_HE:I = 0x4

.field public static final PROFILE_AAC_HE_V2:I = 0x1c

.field public static final PROFILE_AAC_LOW:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBytesPerSample(I)I
    .locals 4

    if-eqz p0, :cond_2

    const/4 v0, 0x4

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v2, 0x3

    if-eq p0, v2, :cond_1

    const/16 v2, 0x8

    if-eq p0, v0, :cond_0

    const/4 v3, 0x5

    if-eq p0, v3, :cond_2

    const/4 v3, 0x7

    if-eq p0, v3, :cond_1

    if-eq p0, v2, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
