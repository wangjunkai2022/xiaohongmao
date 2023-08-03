.class public Lcom/ksyun/media/player/misc/KSYMediaFormat;
.super Ljava/lang/Object;
.source "KSYMediaFormat.java"

# interfaces
.implements Lcom/ksyun/media/player/misc/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/media/player/misc/KSYMediaFormat$a;
    }
.end annotation


# static fields
.field public static final CODEC_NAME_H264:Ljava/lang/String; = "h264"

.field public static final KEY_IJK_BIT_RATE_UI:Ljava/lang/String; = "ijk-bit-rate-ui"

.field public static final KEY_IJK_CHANNEL_UI:Ljava/lang/String; = "ijk-channel-ui"

.field public static final KEY_IJK_CODEC_LONG_NAME_UI:Ljava/lang/String; = "ijk-codec-long-name-ui"

.field public static final KEY_IJK_CODEC_PIXEL_FORMAT_UI:Ljava/lang/String; = "ijk-pixel-format-ui"

.field public static final KEY_IJK_CODEC_PROFILE_LEVEL_UI:Ljava/lang/String; = "ijk-profile-level-ui"

.field public static final KEY_IJK_FRAME_RATE_UI:Ljava/lang/String; = "ijk-frame-rate-ui"

.field public static final KEY_IJK_RESOLUTION_UI:Ljava/lang/String; = "ijk-resolution-ui"

.field public static final KEY_IJK_SAMPLE_RATE_UI:Ljava/lang/String; = "ijk-sample-rate-ui"

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ksyun/media/player/misc/KSYMediaFormat$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mMediaFormat:Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ksyun/media/player/misc/KSYMediaFormat;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/ksyun/media/player/misc/KSYMediaFormat;->d:Ljava/util/Map;

    new-instance v1, Lcom/ksyun/media/player/misc/KSYMediaFormat$1;

    invoke-direct {v1, p0}, Lcom/ksyun/media/player/misc/KSYMediaFormat$1;-><init>(Lcom/ksyun/media/player/misc/KSYMediaFormat;)V

    const-string v2, "ijk-codec-long-name-ui"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Lcom/ksyun/media/player/misc/KSYMediaFormat$2;

    invoke-direct {v1, p0}, Lcom/ksyun/media/player/misc/KSYMediaFormat$2;-><init>(Lcom/ksyun/media/player/misc/KSYMediaFormat;)V

    const-string v2, "ijk-bit-rate-ui"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Lcom/ksyun/media/player/misc/KSYMediaFormat$3;

    invoke-direct {v1, p0}, Lcom/ksyun/media/player/misc/KSYMediaFormat$3;-><init>(Lcom/ksyun/media/player/misc/KSYMediaFormat;)V

    const-string v2, "ijk-profile-level-ui"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, Lcom/ksyun/media/player/misc/KSYMediaFormat$4;

    invoke-direct {v1, p0}, Lcom/ksyun/media/player/misc/KSYMediaFormat$4;-><init>(Lcom/ksyun/media/player/misc/KSYMediaFormat;)V

    const-string v2, "ijk-pixel-format-ui"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Lcom/ksyun/media/player/misc/KSYMediaFormat$5;

    invoke-direct {v1, p0}, Lcom/ksyun/media/player/misc/KSYMediaFormat$5;-><init>(Lcom/ksyun/media/player/misc/KSYMediaFormat;)V

    const-string v2, "ijk-resolution-ui"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v1, Lcom/ksyun/media/player/misc/KSYMediaFormat$6;

    invoke-direct {v1, p0}, Lcom/ksyun/media/player/misc/KSYMediaFormat$6;-><init>(Lcom/ksyun/media/player/misc/KSYMediaFormat;)V

    const-string v2, "ijk-frame-rate-ui"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v1, Lcom/ksyun/media/player/misc/KSYMediaFormat$7;

    invoke-direct {v1, p0}, Lcom/ksyun/media/player/misc/KSYMediaFormat$7;-><init>(Lcom/ksyun/media/player/misc/KSYMediaFormat;)V

    const-string v2, "ijk-sample-rate-ui"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v1, Lcom/ksyun/media/player/misc/KSYMediaFormat$8;

    invoke-direct {v1, p0}, Lcom/ksyun/media/player/misc/KSYMediaFormat$8;-><init>(Lcom/ksyun/media/player/misc/KSYMediaFormat;)V

    const-string v2, "ijk-channel-ui"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iput-object p1, p0, Lcom/ksyun/media/player/misc/KSYMediaFormat;->mMediaFormat:Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;

    return-void
.end method


# virtual methods
.method public getInteger(Ljava/lang/String;)I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/misc/KSYMediaFormat;->mMediaFormat:Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->getInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/misc/KSYMediaFormat;->mMediaFormat:Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    sget-object v0, Lcom/ksyun/media/player/misc/KSYMediaFormat;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ksyun/media/player/misc/KSYMediaFormat$a;

    .line 4
    invoke-virtual {p1, p0}, Lcom/ksyun/media/player/misc/KSYMediaFormat$a;->b(Lcom/ksyun/media/player/misc/KSYMediaFormat;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/ksyun/media/player/misc/KSYMediaFormat;->mMediaFormat:Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/KSYMediaMeta$KSYStreamMeta;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
