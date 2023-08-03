.class public final Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel;
.super Lcom/im/freechat/base/a;
.source "DataUsageViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel$Directions;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/im/freechat/base/a<",
        "Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel$Directions;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDataUsageViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DataUsageViewModel.kt\ncom/im/freechat/ui/settings/data_usage/DataUsageViewModel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,43:1\n1#2:44\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001+B\u001f\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0006\u0010\u0015\u001a\u00020\u0012\u00a2\u0006\u0004\u0008)\u0010*J\u0006\u0010\u0004\u001a\u00020\u0003J\u0006\u0010\u0005\u001a\u00020\u0003J\u0014\u0010\t\u001a\u00020\u00032\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R#\u0010\u001c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\u00060\u00168\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR#\u0010 \u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001d0\u00060\u00168\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u0019\u001a\u0004\u0008\u001f\u0010\u001bR%\u0010(\u001a\u0010\u0012\u000c\u0012\n #*\u0004\u0018\u00010\"0\"0!8\u0006\u00a2\u0006\u000c\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'\u00a8\u0006,"
    }
    d2 = {
        "Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel;",
        "Lcom/im/freechat/base/a;",
        "Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel$Directions;",
        "Lkotlinx/coroutines/j2;",
        "n",
        "o",
        "",
        "Lcom/im/freechat/domain/CacheFileType;",
        "types",
        "m",
        "Lcom/im/freechat/domain/usecase/settings/c;",
        "c",
        "Lcom/im/freechat/domain/usecase/settings/c;",
        "getNetworkStatisticInteractor",
        "Lcom/im/freechat/domain/usecase/settings/b;",
        "d",
        "Lcom/im/freechat/domain/usecase/settings/b;",
        "getCacheStorageUsageInteractor",
        "Lcom/im/freechat/domain/usecase/settings/a;",
        "e",
        "Lcom/im/freechat/domain/usecase/settings/a;",
        "deleteCacheByTypeInteractor",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/im/freechat/domain/m;",
        "f",
        "Landroidx/lifecycle/MutableLiveData;",
        "q",
        "()Landroidx/lifecycle/MutableLiveData;",
        "networkStatistics",
        "Lcom/im/freechat/domain/r;",
        "g",
        "p",
        "cacheStorageStatistics",
        "Landroidx/lifecycle/LiveData;",
        "",
        "kotlin.jvm.PlatformType",
        "h",
        "Landroidx/lifecycle/LiveData;",
        "r",
        "()Landroidx/lifecycle/LiveData;",
        "totalCacheStorageUsage",
        "<init>",
        "(Lcom/im/freechat/domain/usecase/settings/c;Lcom/im/freechat/domain/usecase/settings/b;Lcom/im/freechat/domain/usecase/settings/a;)V",
        "Directions",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final c:Lcom/im/freechat/domain/usecase/settings/c;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Lcom/im/freechat/domain/usecase/settings/b;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final e:Lcom/im/freechat/domain/usecase/settings/a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final f:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/im/freechat/domain/m;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final g:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/im/freechat/domain/r;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final h:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/im/freechat/domain/usecase/settings/c;Lcom/im/freechat/domain/usecase/settings/b;Lcom/im/freechat/domain/usecase/settings/a;)V
    .locals 1
    .param p1    # Lcom/im/freechat/domain/usecase/settings/c;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/domain/usecase/settings/b;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/im/freechat/domain/usecase/settings/a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "getNetworkStatisticInteractor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getCacheStorageUsageInteractor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deleteCacheByTypeInteractor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/base/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel;->c:Lcom/im/freechat/domain/usecase/settings/c;

    .line 3
    iput-object p2, p0, Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel;->d:Lcom/im/freechat/domain/usecase/settings/b;

    .line 4
    iput-object p3, p0, Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel;->e:Lcom/im/freechat/domain/usecase/settings/a;

    .line 5
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 6
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 7
    sget-object p2, Lcom/im/freechat/ui/settings/data_usage/j;->a:Lcom/im/freechat/ui/settings/data_usage/j;

    invoke-static {p1, p2}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    const-string p2, "map(cacheStorageStatisti\u2026Of { it.totalSize }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel;->h:Landroidx/lifecycle/LiveData;

    .line 8
    invoke-virtual {p0}, Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel;->o()Lkotlinx/coroutines/j2;

    return-void
.end method

.method public static synthetic i(Ljava/util/List;)Ljava/lang/Long;
    .locals 0

    invoke-static {p0}, Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel;->s(Ljava/util/List;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic j(Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel;)Lcom/im/freechat/domain/usecase/settings/a;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel;->e:Lcom/im/freechat/domain/usecase/settings/a;

    return-object p0
.end method

.method public static final synthetic k(Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel;)Lcom/im/freechat/domain/usecase/settings/b;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel;->d:Lcom/im/freechat/domain/usecase/settings/b;

    return-object p0
.end method

.method public static final synthetic l(Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel;)Lcom/im/freechat/domain/usecase/settings/c;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel;->c:Lcom/im/freechat/domain/usecase/settings/c;

    return-object p0
.end method

.method private static final s(Ljava/util/List;)Ljava/lang/Long;
    .locals 4

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/im/freechat/domain/r;

    invoke-virtual {v2}, Lcom/im/freechat/domain/r;->h()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final m(Ljava/util/List;)Lkotlinx/coroutines/j2;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/im/freechat/domain/CacheFileType;",
            ">;)",
            "Lkotlinx/coroutines/j2;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "types"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel$a;-><init>(Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0}, Lcom/im/freechat/base/a;->c(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    move-result-object p1

    return-object p1
.end method

.method public final n()Lkotlinx/coroutines/j2;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel$b;-><init>(Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0}, Lcom/im/freechat/base/a;->c(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    move-result-object v0

    return-object v0
.end method

.method public final o()Lkotlinx/coroutines/j2;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel$c;-><init>(Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0}, Lcom/im/freechat/base/a;->c(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    move-result-object v0

    return-object v0
.end method

.method public final p()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/im/freechat/domain/r;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final q()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/im/freechat/domain/m;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final r()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel;->h:Landroidx/lifecycle/LiveData;

    return-object v0
.end method
