.class final Landroidx/paging/OffsettingListUpdateCallback;
.super Ljava/lang/Object;
.source "NullPaddedListDiffHelper.kt"

# interfaces
.implements Landroidx/recyclerview/widget/ListUpdateCallback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0006\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0005J\"\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00032\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0018\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0003H\u0016J\u0018\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0003H\u0016J\u0018\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0003H\u0016R\u000e\u0010\u0004\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Landroidx/paging/OffsettingListUpdateCallback;",
        "Landroidx/recyclerview/widget/ListUpdateCallback;",
        "offset",
        "",
        "callback",
        "(ILandroidx/recyclerview/widget/ListUpdateCallback;)V",
        "onChanged",
        "",
        "position",
        "count",
        "payload",
        "",
        "onInserted",
        "onMoved",
        "fromPosition",
        "toPosition",
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
.field private final callback:Landroidx/recyclerview/widget/ListUpdateCallback;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final offset:I


# direct methods
.method public constructor <init>(ILandroidx/recyclerview/widget/ListUpdateCallback;)V
    .locals 1
    .param p2    # Landroidx/recyclerview/widget/ListUpdateCallback;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroidx/paging/OffsettingListUpdateCallback;->offset:I

    .line 3
    iput-object p2, p0, Landroidx/paging/OffsettingListUpdateCallback;->callback:Landroidx/recyclerview/widget/ListUpdateCallback;

    return-void
.end method


# virtual methods
.method public onChanged(IILjava/lang/Object;)V
    .locals 2
    .param p3    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/paging/OffsettingListUpdateCallback;->callback:Landroidx/recyclerview/widget/ListUpdateCallback;

    iget v1, p0, Landroidx/paging/OffsettingListUpdateCallback;->offset:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1, p2, p3}, Landroidx/recyclerview/widget/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public onInserted(II)V
    .locals 2

    iget-object v0, p0, Landroidx/paging/OffsettingListUpdateCallback;->callback:Landroidx/recyclerview/widget/ListUpdateCallback;

    iget v1, p0, Landroidx/paging/OffsettingListUpdateCallback;->offset:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1, p2}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    return-void
.end method

.method public onMoved(II)V
    .locals 2

    iget-object v0, p0, Landroidx/paging/OffsettingListUpdateCallback;->callback:Landroidx/recyclerview/widget/ListUpdateCallback;

    iget v1, p0, Landroidx/paging/OffsettingListUpdateCallback;->offset:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-interface {v0, p1, p2}, Landroidx/recyclerview/widget/ListUpdateCallback;->onMoved(II)V

    return-void
.end method

.method public onRemoved(II)V
    .locals 2

    iget-object v0, p0, Landroidx/paging/OffsettingListUpdateCallback;->callback:Landroidx/recyclerview/widget/ListUpdateCallback;

    iget v1, p0, Landroidx/paging/OffsettingListUpdateCallback;->offset:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1, p2}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    return-void
.end method
