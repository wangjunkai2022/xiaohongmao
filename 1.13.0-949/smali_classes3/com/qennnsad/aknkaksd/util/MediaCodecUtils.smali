.class public final Lcom/qennnsad/aknkaksd/util/MediaCodecUtils;
.super Ljava/lang/Object;
.source "MediaCodecUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaCodecUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaCodecUtils.kt\ncom/qennnsad/aknkaksd/util/MediaCodecUtils\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,84:1\n12708#2,2:85\n12708#2,2:87\n*S KotlinDebug\n*F\n+ 1 MediaCodecUtils.kt\ncom/qennnsad/aknkaksd/util/MediaCodecUtils\n*L\n31#1:85,2\n39#1:87,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0011\n\u0002\u0008\u0007\u0008\u00c0\u0002\u0018\u00002\u00020\u0001:\u0001\u001eB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u001a\u0010\t\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0014\u0010\u000b\u001a\u00020\u0007*\u00020\u00042\u0006\u0010\n\u001a\u00020\u0002H\u0007J\u000c\u0010\u000c\u001a\u00020\u0007*\u00020\u0004H\u0007J\u000c\u0010\r\u001a\u00020\u0007*\u00020\u0004H\u0007J\u0008\u0010\u000e\u001a\u00020\u0007H\u0007J\u0008\u0010\u000f\u001a\u00020\u0007H\u0007R\u0014\u0010\u0012\u001a\u00020\u00108\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u0011R\u0014\u0010\u0013\u001a\u00020\u00108\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0011R\u0014\u0010\u0014\u001a\u00020\u00108\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0011R\u0014\u0010\u0016\u001a\u00020\u00108\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0011R\u0014\u0010\u0017\u001a\u00020\u00108\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u0011R\u001d\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u00188\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0019\u001a\u0004\u0008\u0015\u0010\u001a\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/util/MediaCodecUtils;",
        "",
        "Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;",
        "mimeType",
        "Landroid/media/MediaCodecInfo;",
        "d",
        "c",
        "",
        "encoder",
        "b",
        "type",
        "a",
        "h",
        "i",
        "f",
        "g",
        "",
        "Ljava/lang/String;",
        "TAG",
        "EXYNOS_PREFIX",
        "INTEL_PREFIX",
        "e",
        "NVIDIA_PREFIX",
        "QCOM_PREFIX",
        "",
        "[Ljava/lang/String;",
        "()[Ljava/lang/String;",
        "SOFTWARE_IMPLEMENTATION_PREFIXES",
        "<init>",
        "()V",
        "VideoCodecMimeType",
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
.field public static final a:Lcom/qennnsad/aknkaksd/util/MediaCodecUtils;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final b:Ljava/lang/String; = "MediaCodecUtils"
    .annotation build Lm8/g;
    .end annotation
.end field

.field public static final c:Ljava/lang/String; = "OMX.Exynos."
    .annotation build Lm8/g;
    .end annotation
.end field

.field public static final d:Ljava/lang/String; = "OMX.Intel."
    .annotation build Lm8/g;
    .end annotation
.end field

.field public static final e:Ljava/lang/String; = "OMX.Nvidia."
    .annotation build Lm8/g;
    .end annotation
.end field

.field public static final f:Ljava/lang/String; = "OMX.qcom."
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final g:[Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/qennnsad/aknkaksd/util/MediaCodecUtils;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/util/MediaCodecUtils;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/util/MediaCodecUtils;->a:Lcom/qennnsad/aknkaksd/util/MediaCodecUtils;

    const-string v0, "OMX.google."

    const-string v1, "OMX.SEC."

    const-string v2, "c2.android"

    .line 1
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    sput-object v0, Lcom/qennnsad/aknkaksd/util/MediaCodecUtils;->g:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/media/MediaCodecInfo;Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;)Z
    .locals 5
    .param p0    # Landroid/media/MediaCodecInfo;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object p0

    const-string v0, "supportedTypes"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 3
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;->mimeType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method private final b(Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;Z)Landroid/media/MediaCodecInfo;
    .locals 10

    .line 1
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 2
    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-eq v4, p2, :cond_0

    goto :goto_3

    .line 4
    :cond_0
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "codecInfo.supportedTypes"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x1

    if-ge v6, v5, :cond_2

    aget-object v8, v4, v6

    .line 6
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;->mimeType()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_3

    return-object v3

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public static final c(Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;)Landroid/media/MediaCodecInfo;
    .locals 2
    .param p0    # Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    const-string v0, "mimeType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/qennnsad/aknkaksd/util/MediaCodecUtils;->a:Lcom/qennnsad/aknkaksd/util/MediaCodecUtils;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/qennnsad/aknkaksd/util/MediaCodecUtils;->b(Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;Z)Landroid/media/MediaCodecInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;)Landroid/media/MediaCodecInfo;
    .locals 2
    .param p0    # Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    const-string v0, "mimeType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/qennnsad/aknkaksd/util/MediaCodecUtils;->a:Lcom/qennnsad/aknkaksd/util/MediaCodecUtils;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/qennnsad/aknkaksd/util/MediaCodecUtils;->b(Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;Z)Landroid/media/MediaCodecInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final f()Z
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;->H265:Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/util/MediaCodecUtils;->c(Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;)Landroid/media/MediaCodecInfo;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/util/MediaCodecUtils;->h(Landroid/media/MediaCodecInfo;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static final g()Z
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;->H265:Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/util/MediaCodecUtils;->d(Lcom/qennnsad/aknkaksd/util/MediaCodecUtils$VideoCodecMimeType;)Landroid/media/MediaCodecInfo;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/util/MediaCodecUtils;->h(Landroid/media/MediaCodecInfo;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static final h(Landroid/media/MediaCodecInfo;)Z
    .locals 2
    .param p0    # Landroid/media/MediaCodecInfo;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isHardwareAccelerated()Z

    move-result p0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/qennnsad/aknkaksd/util/MediaCodecUtils;->i(Landroid/media/MediaCodecInfo;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final i(Landroid/media/MediaCodecInfo;)Z
    .locals 8
    .param p0    # Landroid/media/MediaCodecInfo;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isSoftwareOnly()Z

    move-result p0

    return p0

    .line 3
    :cond_0
    sget-object v0, Lcom/qennnsad/aknkaksd/util/MediaCodecUtils;->g:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 4
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "name"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v5, v4, v2, v6, v7}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method


# virtual methods
.method public final e()[Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/qennnsad/aknkaksd/util/MediaCodecUtils;->g:[Ljava/lang/String;

    return-object v0
.end method
