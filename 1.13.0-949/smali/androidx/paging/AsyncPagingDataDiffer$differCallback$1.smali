.class public final Landroidx/paging/AsyncPagingDataDiffer$differCallback$1;
.super Ljava/lang/Object;
.source "AsyncPagingDataDiffer.kt"

# interfaces
.implements Landroidx/paging/DifferCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/AsyncPagingDataDiffer;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Landroidx/recyclerview/widget/ListUpdateCallback;Lkotlinx/coroutines/n0;Lkotlinx/coroutines/n0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0018\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "androidx/paging/AsyncPagingDataDiffer$differCallback$1",
        "Landroidx/paging/DifferCallback;",
        "onChanged",
        "",
        "position",
        "",
        "count",
        "onInserted",
        "onRemoved",
        "paging-runtime_release"
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
.field final synthetic this$0:Landroidx/paging/AsyncPagingDataDiffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/AsyncPagingDataDiffer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/paging/AsyncPagingDataDiffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/AsyncPagingDataDiffer<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/paging/AsyncPagingDataDiffer$differCallback$1;->this$0:Landroidx/paging/AsyncPagingDataDiffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(II)V
    .locals 2

    if-lez p2, :cond_0

    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer$differCallback$1;->this$0:Landroidx/paging/AsyncPagingDataDiffer;

    invoke-static {v0}, Landroidx/paging/AsyncPagingDataDiffer;->access$getUpdateCallback$p(Landroidx/paging/AsyncPagingDataDiffer;)Landroidx/recyclerview/widget/ListUpdateCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Landroidx/recyclerview/widget/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onInserted(II)V
    .locals 1

    if-lez p2, :cond_0

    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer$differCallback$1;->this$0:Landroidx/paging/AsyncPagingDataDiffer;

    invoke-static {v0}, Landroidx/paging/AsyncPagingDataDiffer;->access$getUpdateCallback$p(Landroidx/paging/AsyncPagingDataDiffer;)Landroidx/recyclerview/widget/ListUpdateCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    :cond_0
    return-void
.end method

.method public onRemoved(II)V
    .locals 1

    if-lez p2, :cond_0

    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer$differCallback$1;->this$0:Landroidx/paging/AsyncPagingDataDiffer;

    invoke-static {v0}, Landroidx/paging/AsyncPagingDataDiffer;->access$getUpdateCallback$p(Landroidx/paging/AsyncPagingDataDiffer;)Landroidx/recyclerview/widget/ListUpdateCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    :cond_0
    return-void
.end method
