.class public final Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType$a;
.super Ljava/lang/Object;
.source "DistrictType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType$a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0014\u0010\u0005\u001a\u00020\u0002*\u0004\u0018\u00010\u00022\u0006\u0010\u0004\u001a\u00020\u0003\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType$a;",
        "",
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;",
        "",
        "userId",
        "a",
        "<init>",
        "()V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;Ljava/lang/String;)Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;
    .locals 2
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "userId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType$a$a;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 2
    invoke-static {p2}, Lz4/a;->d(Ljava/lang/String;)Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;

    move-result-object p1

    :cond_1
    return-object p1
.end method
