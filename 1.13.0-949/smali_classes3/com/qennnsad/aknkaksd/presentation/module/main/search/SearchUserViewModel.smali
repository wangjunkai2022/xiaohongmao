.class public final Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;
.super Lcom/qennnsad/aknkaksd/presentation/common/l;
.source "SearchUserViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/presentation/common/l<",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/search/e;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchUserViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchUserViewModel.kt\ncom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel\n+ 2 Merge.kt\nkotlinx/coroutines/flow/FlowKt__MergeKt\n*L\n1#1,71:1\n190#2:72\n*S KotlinDebug\n*F\n+ 1 SearchUserViewModel.kt\ncom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel\n*L\n39#1:72\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B9\u0008\u0007\u0012\u0006\u00107\u001a\u000206\u0012\u0006\u0010\u000f\u001a\u00020\n\u0012\u0006\u00109\u001a\u000208\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\u0006\u0010\u0017\u001a\u00020\u0014\u0012\u0006\u0010\u001b\u001a\u00020\u0018\u00a2\u0006\u0004\u0008:\u0010;J\u001c\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00032\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u001c\u0010\t\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00032\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005R\u0017\u0010\u000f\u001a\u00020\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u001f\u0010\"\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001d0\u001c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!R%\u0010)\u001a\u0010\u0012\u000c\u0012\n $*\u0004\u0018\u00010\u00030\u00030#8\u0006\u00a2\u0006\u000c\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(R#\u00101\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020,0+0*8\u0006\u00a2\u0006\u000c\n\u0004\u0008-\u0010.\u001a\u0004\u0008/\u00100R%\u00105\u001a\u0010\u0012\u000c\u0012\n $*\u0004\u0018\u000102020#8\u0006\u00a2\u0006\u000c\n\u0004\u00083\u0010&\u001a\u0004\u00084\u0010(\u00a8\u0006<"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;",
        "Lcom/qennnsad/aknkaksd/presentation/common/l;",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/search/e;",
        "",
        "userId",
        "Lkotlin/Function0;",
        "",
        "onSuccess",
        "w",
        "C",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "e",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "B",
        "()Lcom/qennnsad/aknkaksd/data/repository/m;",
        "sourceFactory",
        "Lcom/qennnsad/aknkaksd/domain/usecase/anchor/p;",
        "g",
        "Lcom/qennnsad/aknkaksd/domain/usecase/anchor/p;",
        "getPageListForSearchUseCase",
        "Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g;",
        "h",
        "Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g;",
        "followUserUseCase",
        "Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;",
        "i",
        "Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;",
        "unfollowUserUseCase",
        "Lkotlinx/coroutines/flow/t;",
        "Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;",
        "j",
        "Lkotlinx/coroutines/flow/t;",
        "x",
        "()Lkotlinx/coroutines/flow/t;",
        "currentUser",
        "Landroidx/lifecycle/MutableLiveData;",
        "kotlin.jvm.PlatformType",
        "k",
        "Landroidx/lifecycle/MutableLiveData;",
        "A",
        "()Landroidx/lifecycle/MutableLiveData;",
        "searchQuery",
        "Lkotlinx/coroutines/flow/i;",
        "Landroidx/paging/PagingData;",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;",
        "l",
        "Lkotlinx/coroutines/flow/i;",
        "y",
        "()Lkotlinx/coroutines/flow/i;",
        "displayList",
        "",
        "m",
        "z",
        "loadingPaging",
        "Lg5/a;",
        "localDataManager",
        "Lx4/a;",
        "analytics",
        "<init>",
        "(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;Lx4/a;Lcom/qennnsad/aknkaksd/domain/usecase/anchor/p;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;)V",
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
.field private final e:Lcom/qennnsad/aknkaksd/data/repository/m;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final f:Lx4/a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final g:Lcom/qennnsad/aknkaksd/domain/usecase/anchor/p;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final h:Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final i:Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final j:Lkotlinx/coroutines/flow/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/t<",
            "Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final k:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final l:Lkotlinx/coroutines/flow/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/i<",
            "Landroidx/paging/PagingData<",
            "Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final m:Landroidx/lifecycle/MutableLiveData;
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


# direct methods
.method public constructor <init>(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;Lx4/a;Lcom/qennnsad/aknkaksd/domain/usecase/anchor/p;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;)V
    .locals 1
    .param p1    # Lg5/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/qennnsad/aknkaksd/data/repository/m;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lx4/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lcom/qennnsad/aknkaksd/domain/usecase/anchor/p;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p6    # Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lu7/a;
    .end annotation

    const-string v0, "localDataManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getPageListForSearchUseCase"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "followUserUseCase"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unfollowUserUseCase"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/common/l;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;->e:Lcom/qennnsad/aknkaksd/data/repository/m;

    .line 3
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;->f:Lx4/a;

    .line 4
    iput-object p4, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;->g:Lcom/qennnsad/aknkaksd/domain/usecase/anchor/p;

    .line 5
    iput-object p5, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;->h:Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g;

    .line 6
    iput-object p6, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;->i:Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;

    .line 7
    iget-object p1, p1, Lg5/a;->g:Lkotlinx/coroutines/flow/t;

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;->j:Lkotlinx/coroutines/flow/t;

    .line 8
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    const-string p2, ""

    invoke-direct {p1, p2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    .line 9
    invoke-static {p1}, Landroidx/lifecycle/FlowLiveDataConversions;->asFlow(Landroidx/lifecycle/LiveData;)Lkotlinx/coroutines/flow/i;

    move-result-object p1

    .line 10
    new-instance p2, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel$special$$inlined$flatMapLatest$1;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;)V

    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/k;->b2(Lkotlinx/coroutines/flow/i;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/i;

    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;->l:Lkotlinx/coroutines/flow/i;

    .line 12
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static final synthetic s(Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;)Lx4/a;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;->f:Lx4/a;

    return-object p0
.end method

.method public static final synthetic t(Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;)Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;->h:Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g;

    return-object p0
.end method

.method public static final synthetic u(Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;)Lcom/qennnsad/aknkaksd/domain/usecase/anchor/p;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;->g:Lcom/qennnsad/aknkaksd/domain/usecase/anchor/p;

    return-object p0
.end method

.method public static final synthetic v(Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;)Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;->i:Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;

    return-object p0
.end method


# virtual methods
.method public final A()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final B()Lcom/qennnsad/aknkaksd/data/repository/m;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;->e:Lcom/qennnsad/aknkaksd/data/repository/m;

    return-object v0
.end method

.method public final C(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSuccess"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/l;->d()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel$d;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->k(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final w(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSuccess"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/l;->d()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel$c;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->k(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final x()Lkotlinx/coroutines/flow/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/t<",
            "Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;->j:Lkotlinx/coroutines/flow/t;

    return-object v0
.end method

.method public final y()Lkotlinx/coroutines/flow/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/i<",
            "Landroidx/paging/PagingData<",
            "Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;->l:Lkotlinx/coroutines/flow/i;

    return-object v0
.end method

.method public final z()Landroidx/lifecycle/MutableLiveData;
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

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method
