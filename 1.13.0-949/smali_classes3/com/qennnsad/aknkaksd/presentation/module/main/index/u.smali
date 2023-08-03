.class public final Lcom/qennnsad/aknkaksd/presentation/module/main/index/u;
.super Lcom/qennnsad/aknkaksd/presentation/module/main/index/a;
.source "AnchorTypeData.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/module/main/index/u;",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/index/a;",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vip/VipAnchorFragment;",
        "d",
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


# static fields
.field public static final c:Lcom/qennnsad/aknkaksd/presentation/module/main/index/u;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/main/index/u;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/index/u;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/presentation/module/main/index/u;->c:Lcom/qennnsad/aknkaksd/presentation/module/main/index/u;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;->VIP:Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;

    const v1, 0x7f130257

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/qennnsad/aknkaksd/presentation/module/main/index/a;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Landroidx/fragment/app/Fragment;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/index/u;->d()Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vip/VipAnchorFragment;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vip/VipAnchorFragment;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vip/VipAnchorFragment;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vip/VipAnchorFragment;-><init>()V

    return-object v0
.end method
