.class final Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankViewModel$a;
.super Lkotlin/jvm/internal/Lambda;
.source "RoomSeatRankViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankViewModel;-><init>(Landroidx/lifecycle/SavedStateHandle;Lcom/qennnsad/aknkaksd/domain/usecase/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/paging/PagingSource<",
        "Ljava/lang/Integer;",
        "Lcom/qennnsad/aknkaksd/data/bean/RankItem;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/paging/PagingSource;",
        "",
        "Lcom/qennnsad/aknkaksd/data/bean/RankItem;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankViewModel;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankViewModel$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankViewModel;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/paging/PagingSource;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/paging/PagingSource<",
            "Ljava/lang/Integer;",
            "Lcom/qennnsad/aknkaksd/data/bean/RankItem;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/b;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankViewModel$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankViewModel;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankViewModel;->s(Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankViewModel;)Lcom/qennnsad/aknkaksd/domain/usecase/e;

    move-result-object v1

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankViewModel$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankViewModel;

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankViewModel;->v()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankViewModel$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankViewModel;

    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankViewModel;->t()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/b;-><init>(Lcom/qennnsad/aknkaksd/domain/usecase/e;Ljava/lang/String;Landroidx/lifecycle/MutableLiveData;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankViewModel$a;->invoke()Landroidx/paging/PagingSource;

    move-result-object v0

    return-object v0
.end method
