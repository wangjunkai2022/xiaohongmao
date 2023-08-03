.class public final Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorViewModel;
.super Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorViewModel;
.source "FollowedAnchorViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorViewModel$Event;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorViewModel<",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorViewModel$Event;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFollowedAnchorViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FollowedAnchorViewModel.kt\ncom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorViewModel\n+ 2 Merge.kt\nkotlinx/coroutines/flow/FlowKt__MergeKt\n*L\n1#1,36:1\n190#2:37\n*S KotlinDebug\n*F\n+ 1 FollowedAnchorViewModel.kt\ncom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorViewModel\n*L\n26#1:37\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001 B\u0019\u0008\u0007\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u001e\u0010\u001fR\u0014\u0010\u0006\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010\u0005R\u001a\u0010\u000c\u001a\u00020\u00078\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR,\u0010\u0016\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000e0\r8\u0016X\u0096\u0004\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u0012\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0012\u0010\u0013R\u001c\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001a\u00a8\u0006!"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorViewModel;",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorViewModel;",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorViewModel$Event;",
        "Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f;",
        "k",
        "Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f;",
        "getFollowAnchorUseCase",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;",
        "l",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;",
        "t",
        "()Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;",
        "anchorType",
        "Lkotlinx/coroutines/flow/i;",
        "Landroidx/paging/PagingData;",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l;",
        "m",
        "Lkotlinx/coroutines/flow/i;",
        "u",
        "()Lkotlinx/coroutines/flow/i;",
        "getDisplayList$annotations",
        "()V",
        "displayList",
        "",
        "Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;",
        "n",
        "Ljava/util/List;",
        "banners",
        "Lg5/a;",
        "localDataManager",
        "<init>",
        "(Lg5/a;Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f;)V",
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
.field private final k:Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final l:Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final m:Lkotlinx/coroutines/flow/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/i<",
            "Landroidx/paging/PagingData<",
            "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg5/a;Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f;)V
    .locals 2
    .param p1    # Lg5/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lu7/a;
    .end annotation

    const-string v0, "localDataManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getFollowAnchorUseCase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorViewModel;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorViewModel;->k:Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f;

    .line 3
    sget-object p2, Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;->FOLLOW:Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorViewModel;->l:Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;

    .line 4
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorViewModel;->y()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-static {p2}, Landroidx/lifecycle/FlowLiveDataConversions;->asFlow(Landroidx/lifecycle/LiveData;)Lkotlinx/coroutines/flow/i;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/flow/k;->g0(Lkotlinx/coroutines/flow/i;)Lkotlinx/coroutines/flow/i;

    move-result-object p2

    .line 5
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorViewModel$special$$inlined$flatMapLatest$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorViewModel$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorViewModel;)V

    invoke-static {p2, v0}, Lkotlinx/coroutines/flow/k;->b2(Lkotlinx/coroutines/flow/i;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/i;

    move-result-object p2

    .line 6
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/s0;

    move-result-object v0

    invoke-static {p2, v0}, Landroidx/paging/CachedPagingDataKt;->cachedIn(Lkotlinx/coroutines/flow/i;Lkotlinx/coroutines/s0;)Lkotlinx/coroutines/flow/i;

    move-result-object p2

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorViewModel;->m:Lkotlinx/coroutines/flow/i;

    .line 7
    invoke-virtual {p1}, Lg5/a;->b()Lcom/qennnsad/aknkaksd/data/bean/AdConfigBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/AdConfigBean;->getFollowedAnchors()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorViewModel;->n:Ljava/util/List;

    return-void
.end method

.method public static final synthetic C(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorViewModel;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorViewModel;->n:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic D(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorViewModel;)Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorViewModel;->k:Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f;

    return-object p0
.end method

.method public static synthetic v()V
    .locals 0

    return-void
.end method


# virtual methods
.method public t()Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorViewModel;->l:Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;

    return-object v0
.end method

.method public u()Lkotlinx/coroutines/flow/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/i<",
            "Landroidx/paging/PagingData<",
            "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorViewModel;->m:Lkotlinx/coroutines/flow/i;

    return-object v0
.end method
