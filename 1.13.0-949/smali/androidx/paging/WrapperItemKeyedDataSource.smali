.class public final Landroidx/paging/WrapperItemKeyedDataSource;
.super Landroidx/paging/ItemKeyedDataSource;
.source "WrapperItemKeyedDataSource.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/paging/ItemKeyedDataSource<",
        "TK;TB;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u0008\u0008\u0001\u0010\u0003*\u00020\u0002*\u0008\u0008\u0002\u0010\u0004*\u00020\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00040\u0005B9\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005\u0012\u001e\u0010\u0007\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00020\t0\u0008\u00a2\u0006\u0002\u0010\nJ\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u001a\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00028\u00020\t2\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00010\tJ\u0015\u0010\u0015\u001a\u00028\u00002\u0006\u0010\u0016\u001a\u00028\u0002H\u0016\u00a2\u0006\u0002\u0010\u0017J\u0008\u0010\u0018\u001a\u00020\u0011H\u0016J$\u0010\u0019\u001a\u00020\u00112\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001b2\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00020\u001dH\u0016J$\u0010\u001e\u001a\u00020\u00112\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001b2\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00020\u001dH\u0016J$\u0010\u001f\u001a\u00020\u00112\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00028\u00000 2\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00020!H\u0016J\u0010\u0010\"\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016R\u0014\u0010\u000b\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\rR\u001a\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00000\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R&\u0010\u0007\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Landroidx/paging/WrapperItemKeyedDataSource;",
        "K",
        "",
        "A",
        "B",
        "Landroidx/paging/ItemKeyedDataSource;",
        "source",
        "listFunction",
        "Landroidx/arch/core/util/Function;",
        "",
        "(Landroidx/paging/ItemKeyedDataSource;Landroidx/arch/core/util/Function;)V",
        "isInvalid",
        "",
        "()Z",
        "keyMap",
        "Ljava/util/IdentityHashMap;",
        "addInvalidatedCallback",
        "",
        "onInvalidatedCallback",
        "Landroidx/paging/DataSource$InvalidatedCallback;",
        "convertWithStashedKeys",
        "getKey",
        "item",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "invalidate",
        "loadAfter",
        "params",
        "Landroidx/paging/ItemKeyedDataSource$LoadParams;",
        "callback",
        "Landroidx/paging/ItemKeyedDataSource$LoadCallback;",
        "loadBefore",
        "loadInitial",
        "Landroidx/paging/ItemKeyedDataSource$LoadInitialParams;",
        "Landroidx/paging/ItemKeyedDataSource$LoadInitialCallback;",
        "removeInvalidatedCallback",
        "paging-common"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final keyMap:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "TB;TK;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final listFunction:Landroidx/arch/core/util/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/arch/core/util/Function<",
            "Ljava/util/List<",
            "TA;>;",
            "Ljava/util/List<",
            "TB;>;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final source:Landroidx/paging/ItemKeyedDataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/ItemKeyedDataSource<",
            "TK;TA;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/paging/ItemKeyedDataSource;Landroidx/arch/core/util/Function;)V
    .locals 1
    .param p1    # Landroidx/paging/ItemKeyedDataSource;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/arch/core/util/Function;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/ItemKeyedDataSource<",
            "TK;TA;>;",
            "Landroidx/arch/core/util/Function<",
            "Ljava/util/List<",
            "TA;>;",
            "Ljava/util/List<",
            "TB;>;>;)V"
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listFunction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/paging/ItemKeyedDataSource;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/paging/WrapperItemKeyedDataSource;->source:Landroidx/paging/ItemKeyedDataSource;

    .line 3
    iput-object p2, p0, Landroidx/paging/WrapperItemKeyedDataSource;->listFunction:Landroidx/arch/core/util/Function;

    .line 4
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Landroidx/paging/WrapperItemKeyedDataSource;->keyMap:Ljava/util/IdentityHashMap;

    return-void
.end method


# virtual methods
.method public addInvalidatedCallback(Landroidx/paging/DataSource$InvalidatedCallback;)V
    .locals 1
    .param p1    # Landroidx/paging/DataSource$InvalidatedCallback;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "onInvalidatedCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/paging/WrapperItemKeyedDataSource;->source:Landroidx/paging/ItemKeyedDataSource;

    invoke-virtual {v0, p1}, Landroidx/paging/DataSource;->addInvalidatedCallback(Landroidx/paging/DataSource$InvalidatedCallback;)V

    return-void
.end method

.method public final convertWithStashedKeys(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TA;>;)",
            "Ljava/util/List<",
            "TB;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Landroidx/paging/DataSource;->Companion:Landroidx/paging/DataSource$Companion;

    iget-object v1, p0, Landroidx/paging/WrapperItemKeyedDataSource;->listFunction:Landroidx/arch/core/util/Function;

    invoke-virtual {v0, v1, p1}, Landroidx/paging/DataSource$Companion;->convert$paging_common(Landroidx/arch/core/util/Function;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/paging/WrapperItemKeyedDataSource;->keyMap:Ljava/util/IdentityHashMap;

    monitor-enter v1

    const/4 v2, 0x0

    .line 3
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_1

    :goto_0
    add-int/lit8 v4, v2, 0x1

    .line 4
    iget-object v5, p0, Landroidx/paging/WrapperItemKeyedDataSource;->keyMap:Ljava/util/IdentityHashMap;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Landroidx/paging/WrapperItemKeyedDataSource;->source:Landroidx/paging/ItemKeyedDataSource;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroidx/paging/ItemKeyedDataSource;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-le v4, v3, :cond_0

    goto :goto_1

    :cond_0
    move v2, v4

    goto :goto_0

    .line 5
    :cond_1
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1
.end method

.method public getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TK;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/paging/WrapperItemKeyedDataSource;->keyMap:Ljava/util/IdentityHashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/paging/WrapperItemKeyedDataSource;->keyMap:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "keyMap[item]!!"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public invalidate()V
    .locals 1

    iget-object v0, p0, Landroidx/paging/WrapperItemKeyedDataSource;->source:Landroidx/paging/ItemKeyedDataSource;

    invoke-virtual {v0}, Landroidx/paging/DataSource;->invalidate()V

    return-void
.end method

.method public isInvalid()Z
    .locals 1

    iget-object v0, p0, Landroidx/paging/WrapperItemKeyedDataSource;->source:Landroidx/paging/ItemKeyedDataSource;

    invoke-virtual {v0}, Landroidx/paging/DataSource;->isInvalid()Z

    move-result v0

    return v0
.end method

.method public loadAfter(Landroidx/paging/ItemKeyedDataSource$LoadParams;Landroidx/paging/ItemKeyedDataSource$LoadCallback;)V
    .locals 2
    .param p1    # Landroidx/paging/ItemKeyedDataSource$LoadParams;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/paging/ItemKeyedDataSource$LoadCallback;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/ItemKeyedDataSource$LoadParams<",
            "TK;>;",
            "Landroidx/paging/ItemKeyedDataSource$LoadCallback<",
            "TB;>;)V"
        }
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/paging/WrapperItemKeyedDataSource;->source:Landroidx/paging/ItemKeyedDataSource;

    .line 2
    new-instance v1, Landroidx/paging/WrapperItemKeyedDataSource$loadAfter$1;

    invoke-direct {v1, p2, p0}, Landroidx/paging/WrapperItemKeyedDataSource$loadAfter$1;-><init>(Landroidx/paging/ItemKeyedDataSource$LoadCallback;Landroidx/paging/WrapperItemKeyedDataSource;)V

    .line 3
    invoke-virtual {v0, p1, v1}, Landroidx/paging/ItemKeyedDataSource;->loadAfter(Landroidx/paging/ItemKeyedDataSource$LoadParams;Landroidx/paging/ItemKeyedDataSource$LoadCallback;)V

    return-void
.end method

.method public loadBefore(Landroidx/paging/ItemKeyedDataSource$LoadParams;Landroidx/paging/ItemKeyedDataSource$LoadCallback;)V
    .locals 2
    .param p1    # Landroidx/paging/ItemKeyedDataSource$LoadParams;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/paging/ItemKeyedDataSource$LoadCallback;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/ItemKeyedDataSource$LoadParams<",
            "TK;>;",
            "Landroidx/paging/ItemKeyedDataSource$LoadCallback<",
            "TB;>;)V"
        }
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/paging/WrapperItemKeyedDataSource;->source:Landroidx/paging/ItemKeyedDataSource;

    .line 2
    new-instance v1, Landroidx/paging/WrapperItemKeyedDataSource$loadBefore$1;

    invoke-direct {v1, p2, p0}, Landroidx/paging/WrapperItemKeyedDataSource$loadBefore$1;-><init>(Landroidx/paging/ItemKeyedDataSource$LoadCallback;Landroidx/paging/WrapperItemKeyedDataSource;)V

    .line 3
    invoke-virtual {v0, p1, v1}, Landroidx/paging/ItemKeyedDataSource;->loadBefore(Landroidx/paging/ItemKeyedDataSource$LoadParams;Landroidx/paging/ItemKeyedDataSource$LoadCallback;)V

    return-void
.end method

.method public loadInitial(Landroidx/paging/ItemKeyedDataSource$LoadInitialParams;Landroidx/paging/ItemKeyedDataSource$LoadInitialCallback;)V
    .locals 2
    .param p1    # Landroidx/paging/ItemKeyedDataSource$LoadInitialParams;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/paging/ItemKeyedDataSource$LoadInitialCallback;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/ItemKeyedDataSource$LoadInitialParams<",
            "TK;>;",
            "Landroidx/paging/ItemKeyedDataSource$LoadInitialCallback<",
            "TB;>;)V"
        }
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/paging/WrapperItemKeyedDataSource;->source:Landroidx/paging/ItemKeyedDataSource;

    .line 2
    new-instance v1, Landroidx/paging/WrapperItemKeyedDataSource$loadInitial$1;

    invoke-direct {v1, p2, p0}, Landroidx/paging/WrapperItemKeyedDataSource$loadInitial$1;-><init>(Landroidx/paging/ItemKeyedDataSource$LoadInitialCallback;Landroidx/paging/WrapperItemKeyedDataSource;)V

    .line 3
    invoke-virtual {v0, p1, v1}, Landroidx/paging/ItemKeyedDataSource;->loadInitial(Landroidx/paging/ItemKeyedDataSource$LoadInitialParams;Landroidx/paging/ItemKeyedDataSource$LoadInitialCallback;)V

    return-void
.end method

.method public removeInvalidatedCallback(Landroidx/paging/DataSource$InvalidatedCallback;)V
    .locals 1
    .param p1    # Landroidx/paging/DataSource$InvalidatedCallback;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "onInvalidatedCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/paging/WrapperItemKeyedDataSource;->source:Landroidx/paging/ItemKeyedDataSource;

    invoke-virtual {v0, p1}, Landroidx/paging/DataSource;->removeInvalidatedCallback(Landroidx/paging/DataSource$InvalidatedCallback;)V

    return-void
.end method
