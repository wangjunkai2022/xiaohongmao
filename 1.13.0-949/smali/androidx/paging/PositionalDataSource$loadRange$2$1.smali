.class public final Landroidx/paging/PositionalDataSource$loadRange$2$1;
.super Landroidx/paging/PositionalDataSource$LoadRangeCallback;
.source "PositionalDataSource.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/PositionalDataSource;->loadRange(Landroidx/paging/PositionalDataSource$LoadRangeParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/paging/PositionalDataSource$LoadRangeCallback<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "androidx/paging/PositionalDataSource$loadRange$2$1",
        "Landroidx/paging/PositionalDataSource$LoadRangeCallback;",
        "onResult",
        "",
        "data",
        "",
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
.field final synthetic $cont:Lkotlinx/coroutines/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/q<",
            "Landroidx/paging/DataSource$BaseResult<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic $params:Landroidx/paging/PositionalDataSource$LoadRangeParams;

.field final synthetic this$0:Landroidx/paging/PositionalDataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/PositionalDataSource<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/paging/PositionalDataSource$LoadRangeParams;Landroidx/paging/PositionalDataSource;Lkotlinx/coroutines/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PositionalDataSource$LoadRangeParams;",
            "Landroidx/paging/PositionalDataSource<",
            "TT;>;",
            "Lkotlinx/coroutines/q<",
            "-",
            "Landroidx/paging/DataSource$BaseResult<",
            "TT;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/paging/PositionalDataSource$loadRange$2$1;->$params:Landroidx/paging/PositionalDataSource$LoadRangeParams;

    iput-object p2, p0, Landroidx/paging/PositionalDataSource$loadRange$2$1;->this$0:Landroidx/paging/PositionalDataSource;

    iput-object p3, p0, Landroidx/paging/PositionalDataSource$loadRange$2$1;->$cont:Lkotlinx/coroutines/q;

    invoke-direct {p0}, Landroidx/paging/PositionalDataSource$LoadRangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/util/List;)V
    .locals 10
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/paging/PositionalDataSource$loadRange$2$1;->$params:Landroidx/paging/PositionalDataSource$LoadRangeParams;

    iget v0, v0, Landroidx/paging/PositionalDataSource$LoadRangeParams;->startPosition:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    move-object v3, v0

    .line 2
    iget-object v0, p0, Landroidx/paging/PositionalDataSource$loadRange$2$1;->this$0:Landroidx/paging/PositionalDataSource;

    invoke-virtual {v0}, Landroidx/paging/DataSource;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Landroidx/paging/PositionalDataSource$loadRange$2$1;->$cont:Lkotlinx/coroutines/q;

    sget-object v0, Landroidx/paging/DataSource$BaseResult;->Companion:Landroidx/paging/DataSource$BaseResult$Companion;

    invoke-virtual {v0}, Landroidx/paging/DataSource$BaseResult$Companion;->empty$paging_common()Landroidx/paging/DataSource$BaseResult;

    move-result-object v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    .line 3
    :cond_1
    iget-object v0, p0, Landroidx/paging/PositionalDataSource$loadRange$2$1;->$cont:Lkotlinx/coroutines/q;

    .line 4
    new-instance v9, Landroidx/paging/DataSource$BaseResult;

    .line 5
    iget-object v1, p0, Landroidx/paging/PositionalDataSource$loadRange$2$1;->$params:Landroidx/paging/PositionalDataSource$LoadRangeParams;

    iget v1, v1, Landroidx/paging/PositionalDataSource$LoadRangeParams;->startPosition:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p1

    .line 6
    invoke-direct/range {v1 .. v8}, Landroidx/paging/DataSource$BaseResult;-><init>(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 7
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v9}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
