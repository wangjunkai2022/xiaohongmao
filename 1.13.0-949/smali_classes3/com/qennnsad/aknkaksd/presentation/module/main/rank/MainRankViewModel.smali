.class public final Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankViewModel;
.super Lcom/qennnsad/aknkaksd/presentation/common/l;
.source "MainRankViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankViewModel$Event;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/presentation/common/l<",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankViewModel$Event;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0011B\u0011\u0008\u0007\u0012\u0006\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0013\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0011\u0010\u000e\u001a\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankViewModel;",
        "Lcom/qennnsad/aknkaksd/presentation/common/l;",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankViewModel$Event;",
        "",
        "",
        "t",
        "()[Ljava/lang/String;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/y;",
        "e",
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/y;",
        "rankFlavorController",
        "",
        "s",
        "()I",
        "gameRankPagePosition",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/presentation/ui/main/y;)V",
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
.field private final e:Lcom/qennnsad/aknkaksd/presentation/ui/main/y;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/y;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/ui/main/y;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lu7/a;
    .end annotation

    const-string v0, "rankFlavorController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/common/l;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankViewModel;->e:Lcom/qennnsad/aknkaksd/presentation/ui/main/y;

    return-void
.end method


# virtual methods
.method public final s()I
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankViewModel;->e:Lcom/qennnsad/aknkaksd/presentation/ui/main/y;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/y;->b()I

    move-result v0

    return v0
.end method

.method public final t()[Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankViewModel;->e:Lcom/qennnsad/aknkaksd/presentation/ui/main/y;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/y;->e()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
