.class public final Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/nearby/NearbyAnchorViewModel;
.super Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorViewModel;
.source "NearbyAnchorViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/nearby/NearbyAnchorViewModel$Event;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorViewModel<",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/nearby/NearbyAnchorViewModel$Event;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000bB\t\u0008\u0007\u00a2\u0006\u0004\u0008\t\u0010\nR\u001a\u0010\u0008\u001a\u00020\u00038\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/nearby/NearbyAnchorViewModel;",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorViewModel;",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/nearby/NearbyAnchorViewModel$Event;",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;",
        "k",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;",
        "t",
        "()Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;",
        "anchorType",
        "<init>",
        "()V",
        "Event",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation

.annotation build Ll6/a;
.end annotation


# instance fields
.field private final k:Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Lu7/a;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorViewModel;-><init>()V

    .line 2
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;->NEARBY:Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/nearby/NearbyAnchorViewModel;->k:Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;

    return-void
.end method


# virtual methods
.method public t()Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/nearby/NearbyAnchorViewModel;->k:Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;

    return-object v0
.end method
