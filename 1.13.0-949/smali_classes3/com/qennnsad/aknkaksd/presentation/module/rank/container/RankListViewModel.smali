.class public final Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel;
.super Lcom/qennnsad/aknkaksd/presentation/common/l;
.source "RankListViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel$Event;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/presentation/common/l<",
        "Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel$Event;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0008\u0010\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001 B\u0019\u0008\u0007\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u001e\u0010\u001fR\u0014\u0010\u0006\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0017\u0010\u0010\u001a\u00020\u000b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR\u001d\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u0017\u0010\u0019\u001a\u00020\u000b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\r\u001a\u0004\u0008\u0018\u0010\u000fR\u0011\u0010\u001b\u001a\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u000fR\u0011\u0010\u001d\u001a\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u000f\u00a8\u0006!"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel;",
        "Lcom/qennnsad/aknkaksd/presentation/common/l;",
        "Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel$Event;",
        "Landroidx/lifecycle/SavedStateHandle;",
        "e",
        "Landroidx/lifecycle/SavedStateHandle;",
        "state",
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/y;",
        "f",
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/y;",
        "rankFlavorController",
        "",
        "g",
        "I",
        "v",
        "()I",
        "rootPosition",
        "",
        "h",
        "[Ljava/lang/Integer;",
        "w",
        "()[Ljava/lang/Integer;",
        "titles",
        "i",
        "t",
        "getBackground",
        "u",
        "rankPagesCount",
        "s",
        "gameRankPagePosition",
        "<init>",
        "(Landroidx/lifecycle/SavedStateHandle;Lcom/qennnsad/aknkaksd/presentation/ui/main/y;)V",
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
.field private final e:Landroidx/lifecycle/SavedStateHandle;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final f:Lcom/qennnsad/aknkaksd/presentation/ui/main/y;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final g:I

.field private final h:[Ljava/lang/Integer;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final i:I


# direct methods
.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;Lcom/qennnsad/aknkaksd/presentation/ui/main/y;)V
    .locals 3
    .param p1    # Landroidx/lifecycle/SavedStateHandle;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/qennnsad/aknkaksd/presentation/ui/main/y;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lu7/a;
    .end annotation

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rankFlavorController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/common/l;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel;->e:Landroidx/lifecycle/SavedStateHandle;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel;->f:Lcom/qennnsad/aknkaksd/presentation/ui/main/y;

    const-string v0, "root_position"

    .line 4
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel;->g:I

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0x7f130415

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f130454

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x7f13044f

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0x7f130337

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 9
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel;->h:[Ljava/lang/Integer;

    .line 10
    invoke-virtual {p2, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/y;->a(I)I

    move-result p1

    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel;->i:I

    return-void
.end method


# virtual methods
.method public final s()I
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel;->f:Lcom/qennnsad/aknkaksd/presentation/ui/main/y;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/y;->b()I

    move-result v0

    return v0
.end method

.method public final t()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel;->i:I

    return v0
.end method

.method public final u()I
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel;->f:Lcom/qennnsad/aknkaksd/presentation/ui/main/y;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/y;->c()I

    move-result v0

    return v0
.end method

.method public final v()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel;->g:I

    return v0
.end method

.method public final w()[Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel;->h:[Ljava/lang/Integer;

    return-object v0
.end method
