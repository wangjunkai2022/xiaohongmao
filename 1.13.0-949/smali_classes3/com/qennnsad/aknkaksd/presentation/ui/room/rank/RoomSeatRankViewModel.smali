.class public final Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankViewModel;
.super Lcom/qennnsad/aknkaksd/presentation/common/l;
.source "RoomSeatRankViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankViewModel$Event;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/presentation/common/l<",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankViewModel$Event;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001!B\u0019\u0008\u0007\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u001f\u0010 R\u0014\u0010\u0006\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010\u0005R\u0017\u0010\u000c\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR%\u0010\u0014\u001a\u0010\u0012\u000c\u0012\n \u000f*\u0004\u0018\u00010\u000e0\u000e0\r8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R#\u0010\u001c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\u00160\u00158\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\""
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankViewModel;",
        "Lcom/qennnsad/aknkaksd/presentation/common/l;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankViewModel$Event;",
        "Lcom/qennnsad/aknkaksd/domain/usecase/e;",
        "e",
        "Lcom/qennnsad/aknkaksd/domain/usecase/e;",
        "getRankSeatUseCase",
        "",
        "f",
        "Ljava/lang/String;",
        "v",
        "()Ljava/lang/String;",
        "roomId",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "kotlin.jvm.PlatformType",
        "g",
        "Landroidx/lifecycle/MutableLiveData;",
        "t",
        "()Landroidx/lifecycle/MutableLiveData;",
        "loadingPaging",
        "Lkotlinx/coroutines/flow/i;",
        "Landroidx/paging/PagingData;",
        "Lcom/qennnsad/aknkaksd/data/bean/RankItem;",
        "h",
        "Lkotlinx/coroutines/flow/i;",
        "u",
        "()Lkotlinx/coroutines/flow/i;",
        "ranks",
        "Landroidx/lifecycle/SavedStateHandle;",
        "state",
        "<init>",
        "(Landroidx/lifecycle/SavedStateHandle;Lcom/qennnsad/aknkaksd/domain/usecase/e;)V",
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
.field private final e:Lcom/qennnsad/aknkaksd/domain/usecase/e;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final f:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final g:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final h:Lkotlinx/coroutines/flow/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/i<",
            "Landroidx/paging/PagingData<",
            "Lcom/qennnsad/aknkaksd/data/bean/RankItem;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;Lcom/qennnsad/aknkaksd/domain/usecase/e;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/SavedStateHandle;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/qennnsad/aknkaksd/domain/usecase/e;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lu7/a;
    .end annotation

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getRankSeatUseCase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/common/l;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankViewModel;->e:Lcom/qennnsad/aknkaksd/domain/usecase/e;

    const-string p2, "room_id"

    .line 3
    invoke-virtual {p1, p2}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankViewModel;->f:Ljava/lang/String;

    .line 4
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 5
    new-instance p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankViewModel$a;

    invoke-direct {p1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankViewModel$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankViewModel;)V

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/u;->b(Lkotlin/jvm/functions/Function0;)Landroidx/paging/Pager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/paging/Pager;->getFlow()Lkotlinx/coroutines/flow/i;

    move-result-object p1

    .line 6
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/s0;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/paging/CachedPagingDataKt;->cachedIn(Lkotlinx/coroutines/flow/i;Lkotlinx/coroutines/s0;)Lkotlinx/coroutines/flow/i;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankViewModel;->h:Lkotlinx/coroutines/flow/i;

    return-void
.end method

.method public static final synthetic s(Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankViewModel;)Lcom/qennnsad/aknkaksd/domain/usecase/e;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankViewModel;->e:Lcom/qennnsad/aknkaksd/domain/usecase/e;

    return-object p0
.end method


# virtual methods
.method public final t()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final u()Lkotlinx/coroutines/flow/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/i<",
            "Landroidx/paging/PagingData<",
            "Lcom/qennnsad/aknkaksd/data/bean/RankItem;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankViewModel;->h:Lkotlinx/coroutines/flow/i;

    return-object v0
.end method

.method public final v()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankViewModel;->f:Ljava/lang/String;

    return-object v0
.end method
