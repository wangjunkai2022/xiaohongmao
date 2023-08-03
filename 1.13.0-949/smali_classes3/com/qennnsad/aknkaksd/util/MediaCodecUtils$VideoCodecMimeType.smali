.class public final enum Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;
.super Ljava/lang/Enum;
.source "MediaCodecUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/util/MediaCodecUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoCodecMimeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010\u0003\u001a\u00020\u0002R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010\u0005j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;",
        "",
        "",
        "mimeType",
        "a",
        "Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "VP8",
        "VP9",
        "H264",
        "H265",
        "AV1",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final enum AV1:Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;

.field public static final enum H264:Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;

.field public static final enum H265:Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;

.field public static final enum VP8:Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;

.field public static final enum VP9:Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;

.field private static final synthetic b:[Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;

    const-string v1, "VP8"

    const/4 v2, 0x0

    const-string v3, "video/x-vnd.on2.vp8"

    invoke-direct {v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;->VP8:Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;

    const-string v1, "VP9"

    const/4 v2, 0x1

    const-string v3, "video/x-vnd.on2.vp9"

    invoke-direct {v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;->VP9:Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;

    .line 3
    new-instance v0, Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;

    const-string v1, "H264"

    const/4 v2, 0x2

    const-string v3, "video/avc"

    invoke-direct {v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;->H264:Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;

    .line 4
    new-instance v0, Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;

    const-string v1, "H265"

    const/4 v2, 0x3

    const-string v3, "video/hevc"

    invoke-direct {v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;->H265:Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;

    .line 5
    new-instance v0, Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;

    const-string v1, "AV1"

    const/4 v2, 0x4

    const-string v3, "video/av01"

    invoke-direct {v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;->AV1:Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;

    invoke-static {}, Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;->a()[Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;

    move-result-object v0

    sput-object v0, Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;->b:[Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;->a:Ljava/lang/String;

    return-void
.end method

.method private static final synthetic a()[Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;

    sget-object v1, Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;->VP8:Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;->VP9:Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;->H264:Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;->H265:Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;->AV1:Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;
    .locals 1

    const-class v0, Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;

    return-object p0
.end method

.method public static values()[Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;
    .locals 1

    sget-object v0, Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;->b:[Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;

    return-object v0
.end method


# virtual methods
.method public final mimeType()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;->a:Ljava/lang/String;

    return-object v0
.end method
