.class public final Lcom/qennnsad/aknkaksd/presentation/ui/main/MainViewModel;
.super Lcom/qennnsad/aknkaksd/presentation/common/l;
.source "MainViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/presentation/common/l<",
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/c;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001BA\u0008\u0007\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u00a2\u0006\u0004\u0008#\u0010$R%\u0010\n\u001a\u0010\u0012\u000c\u0012\n \u0005*\u0004\u0018\u00010\u00040\u00040\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\tR%\u0010\u000e\u001a\u0010\u0012\u000c\u0012\n \u0005*\u0004\u0018\u00010\u000b0\u000b0\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\u0007\u001a\u0004\u0008\r\u0010\tR\u001d\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000f8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006%"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/MainViewModel;",
        "Lcom/qennnsad/aknkaksd/presentation/common/l;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/c;",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "kotlin.jvm.PlatformType",
        "e",
        "Landroidx/lifecycle/MutableLiveData;",
        "u",
        "()Landroidx/lifecycle/MutableLiveData;",
        "isIm",
        "",
        "f",
        "t",
        "unreadCount",
        "Landroidx/lifecycle/LiveData;",
        "g",
        "Landroidx/lifecycle/LiveData;",
        "s",
        "()Landroidx/lifecycle/LiveData;",
        "indicatorVisibility",
        "Lg5/a;",
        "localDataManager",
        "Lcom/qennnsad/aknkaksd/domain/usecase/app/c;",
        "getAdConfigUseCase",
        "Lcom/qennnsad/aknkaksd/domain/usecase/app/w;",
        "syncPeeragePricesUseCase",
        "Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;",
        "syncGiftsUseCase",
        "Lcom/qennnsad/aknkaksd/domain/usecase/user/w;",
        "syncMeUserUseCase",
        "Lcom/qennnsad/aknkaksd/domain/usecase/user/e0;",
        "syncUserMoneyUseCase",
        "Lcom/qennnsad/aknkaksd/domain/usecase/room/i0;",
        "syncDepositOptionsUseCase",
        "<init>",
        "(Lg5/a;Lcom/qennnsad/aknkaksd/domain/usecase/app/c;Lcom/qennnsad/aknkaksd/domain/usecase/app/w;Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;Lcom/qennnsad/aknkaksd/domain/usecase/user/w;Lcom/qennnsad/aknkaksd/domain/usecase/user/e0;Lcom/qennnsad/aknkaksd/domain/usecase/room/i0;)V",
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
.field private final e:Landroidx/lifecycle/MutableLiveData;
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

.field private final f:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final g:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg5/a;Lcom/qennnsad/aknkaksd/domain/usecase/app/c;Lcom/qennnsad/aknkaksd/domain/usecase/app/w;Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;Lcom/qennnsad/aknkaksd/domain/usecase/user/w;Lcom/qennnsad/aknkaksd/domain/usecase/user/e0;Lcom/qennnsad/aknkaksd/domain/usecase/room/i0;)V
    .locals 3
    .param p1    # Lg5/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/qennnsad/aknkaksd/domain/usecase/app/c;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/qennnsad/aknkaksd/domain/usecase/app/w;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Lcom/qennnsad/aknkaksd/domain/usecase/user/w;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p6    # Lcom/qennnsad/aknkaksd/domain/usecase/user/e0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p7    # Lcom/qennnsad/aknkaksd/domain/usecase/room/i0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lu7/a;
    .end annotation

    const-string v0, "localDataManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getAdConfigUseCase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "syncPeeragePricesUseCase"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "syncGiftsUseCase"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "syncMeUserUseCase"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "syncUserMoneyUseCase"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "syncDepositOptionsUseCase"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/common/l;-><init>()V

    .line 2
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/MainViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 3
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/MainViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 4
    sget-object v2, Lcom/qennnsad/aknkaksd/presentation/ui/main/MainViewModel$h;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/MainViewModel$h;

    invoke-static {v0, v1, v2}, Lo4/m;->n(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function2;)Landroidx/lifecycle/LiveData;

    move-result-object v1

    iput-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/MainViewModel;->g:Landroidx/lifecycle/LiveData;

    .line 5
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/main/MainViewModel$a;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p0, p1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/MainViewModel$a;-><init>(Lcom/qennnsad/aknkaksd/domain/usecase/app/c;Lcom/qennnsad/aknkaksd/presentation/ui/main/MainViewModel;Lg5/a;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->j(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    .line 6
    new-instance p2, Lcom/qennnsad/aknkaksd/presentation/ui/main/MainViewModel$b;

    invoke-direct {p2, p3, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/MainViewModel$b;-><init>(Lcom/qennnsad/aknkaksd/domain/usecase/app/w;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, p2}, Lcom/qennnsad/aknkaksd/presentation/common/l;->j(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    .line 7
    new-instance p2, Lcom/qennnsad/aknkaksd/presentation/ui/main/MainViewModel$c;

    invoke-direct {p2, p4, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/MainViewModel$c;-><init>(Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, p2}, Lcom/qennnsad/aknkaksd/presentation/common/l;->j(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    .line 8
    new-instance p2, Lcom/qennnsad/aknkaksd/presentation/ui/main/MainViewModel$d;

    invoke-direct {p2, p5, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/MainViewModel$d;-><init>(Lcom/qennnsad/aknkaksd/domain/usecase/user/w;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, p2}, Lcom/qennnsad/aknkaksd/presentation/common/l;->j(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    .line 9
    new-instance p2, Lcom/qennnsad/aknkaksd/presentation/ui/main/MainViewModel$e;

    invoke-direct {p2, p6, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/MainViewModel$e;-><init>(Lcom/qennnsad/aknkaksd/domain/usecase/user/e0;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, p2}, Lcom/qennnsad/aknkaksd/presentation/common/l;->j(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    .line 10
    new-instance p2, Lcom/qennnsad/aknkaksd/presentation/ui/main/MainViewModel$f;

    invoke-direct {p2, p0, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/MainViewModel$f;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/MainViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, p2}, Lcom/qennnsad/aknkaksd/presentation/common/l;->j(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    .line 11
    new-instance p2, Lcom/qennnsad/aknkaksd/presentation/ui/main/MainViewModel$g;

    invoke-direct {p2, p7, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/MainViewModel$g;-><init>(Lcom/qennnsad/aknkaksd/domain/usecase/room/i0;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, p2}, Lcom/qennnsad/aknkaksd/presentation/common/l;->j(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    .line 12
    invoke-virtual {p1}, Lg5/a;->C()Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lb5/a;->h(Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final s()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/MainViewModel;->g:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final t()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/MainViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final u()Landroidx/lifecycle/MutableLiveData;
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

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/MainViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method
