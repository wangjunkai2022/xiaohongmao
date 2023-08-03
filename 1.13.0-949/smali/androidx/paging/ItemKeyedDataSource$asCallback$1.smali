.class public final Landroidx/paging/ItemKeyedDataSource$asCallback$1;
.super Landroidx/paging/ItemKeyedDataSource$LoadCallback;
.source "ItemKeyedDataSource.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/ItemKeyedDataSource;->asCallback(Lkotlinx/coroutines/q;)Landroidx/paging/ItemKeyedDataSource$asCallback$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/paging/ItemKeyedDataSource$LoadCallback<",
        "TValue;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "androidx/paging/ItemKeyedDataSource$asCallback$1",
        "Landroidx/paging/ItemKeyedDataSource$LoadCallback;",
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
.field final synthetic $this_asCallback:Lkotlinx/coroutines/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/q<",
            "Landroidx/paging/DataSource$BaseResult<",
            "TValue;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/paging/ItemKeyedDataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/ItemKeyedDataSource<",
            "TKey;TValue;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/coroutines/q;Landroidx/paging/ItemKeyedDataSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/q<",
            "-",
            "Landroidx/paging/DataSource$BaseResult<",
            "TValue;>;>;",
            "Landroidx/paging/ItemKeyedDataSource<",
            "TKey;TValue;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/paging/ItemKeyedDataSource$asCallback$1;->$this_asCallback:Lkotlinx/coroutines/q;

    iput-object p2, p0, Landroidx/paging/ItemKeyedDataSource$asCallback$1;->this$0:Landroidx/paging/ItemKeyedDataSource;

    invoke-direct {p0}, Landroidx/paging/ItemKeyedDataSource$LoadCallback;-><init>()V

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
            "+TValue;>;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/paging/ItemKeyedDataSource$asCallback$1;->$this_asCallback:Lkotlinx/coroutines/q;

    .line 2
    new-instance v9, Landroidx/paging/DataSource$BaseResult;

    .line 3
    iget-object v1, p0, Landroidx/paging/ItemKeyedDataSource$asCallback$1;->this$0:Landroidx/paging/ItemKeyedDataSource;

    invoke-virtual {v1, p1}, Landroidx/paging/ItemKeyedDataSource;->getPrevKey$paging_common(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    .line 4
    iget-object v1, p0, Landroidx/paging/ItemKeyedDataSource$asCallback$1;->this$0:Landroidx/paging/ItemKeyedDataSource;

    invoke-virtual {v1, p1}, Landroidx/paging/ItemKeyedDataSource;->getNextKey$paging_common(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p1

    .line 5
    invoke-direct/range {v1 .. v8}, Landroidx/paging/DataSource$BaseResult;-><init>(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v9}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
