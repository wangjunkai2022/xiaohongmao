.class public final Landroidx/paging/DistinctListsDiffDispatcher;
.super Ljava/lang/Object;
.source "NullPaddedListDiffHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J8\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u0001H\u0002J4\u0010\r\u001a\u00020\u0004\"\u0008\u0008\u0000\u0010\u000e*\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0\u00102\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/paging/DistinctListsDiffDispatcher;",
        "",
        "()V",
        "dispatchChange",
        "",
        "callback",
        "Landroidx/recyclerview/widget/ListUpdateCallback;",
        "startBoundary",
        "",
        "endBoundary",
        "start",
        "end",
        "payload",
        "dispatchDiff",
        "T",
        "oldList",
        "Landroidx/paging/NullPaddedList;",
        "newList",
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


# static fields
.field public static final INSTANCE:Landroidx/paging/DistinctListsDiffDispatcher;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/paging/DistinctListsDiffDispatcher;

    invoke-direct {v0}, Landroidx/paging/DistinctListsDiffDispatcher;-><init>()V

    sput-object v0, Landroidx/paging/DistinctListsDiffDispatcher;->INSTANCE:Landroidx/paging/DistinctListsDiffDispatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final dispatchChange(Landroidx/recyclerview/widget/ListUpdateCallback;IIIILjava/lang/Object;)V
    .locals 0

    sub-int/2addr p2, p4

    if-lez p2, :cond_0

    .line 1
    invoke-interface {p1, p4, p2, p6}, Landroidx/recyclerview/widget/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    :cond_0
    sub-int/2addr p5, p3

    if-lez p5, :cond_1

    .line 2
    invoke-interface {p1, p3, p5, p6}, Landroidx/recyclerview/widget/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final dispatchDiff(Landroidx/recyclerview/widget/ListUpdateCallback;Landroidx/paging/NullPaddedList;Landroidx/paging/NullPaddedList;)V
    .locals 10
    .param p1    # Landroidx/recyclerview/widget/ListUpdateCallback;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/paging/NullPaddedList;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Landroidx/paging/NullPaddedList;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/recyclerview/widget/ListUpdateCallback;",
            "Landroidx/paging/NullPaddedList<",
            "TT;>;",
            "Landroidx/paging/NullPaddedList<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oldList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p2}, Landroidx/paging/NullPaddedList;->getPlaceholdersBefore()I

    move-result v0

    invoke-interface {p3}, Landroidx/paging/NullPaddedList;->getPlaceholdersBefore()I

    move-result v1

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3
    invoke-interface {p2}, Landroidx/paging/NullPaddedList;->getPlaceholdersBefore()I

    move-result v1

    invoke-interface {p2}, Landroidx/paging/NullPaddedList;->getStorageCount()I

    move-result v2

    add-int/2addr v1, v2

    .line 4
    invoke-interface {p3}, Landroidx/paging/NullPaddedList;->getPlaceholdersBefore()I

    move-result v2

    invoke-interface {p3}, Landroidx/paging/NullPaddedList;->getStorageCount()I

    move-result v3

    add-int/2addr v2, v3

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int v2, v1, v0

    if-lez v2, :cond_0

    .line 6
    invoke-interface {p1, v0, v2}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    .line 7
    invoke-interface {p1, v0, v2}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    .line 8
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 10
    invoke-interface {p2}, Landroidx/paging/NullPaddedList;->getPlaceholdersBefore()I

    move-result v1

    invoke-interface {p3}, Landroidx/paging/NullPaddedList;->getSize()I

    move-result v3

    invoke-static {v1, v3}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v7

    .line 11
    invoke-interface {p2}, Landroidx/paging/NullPaddedList;->getPlaceholdersBefore()I

    move-result v1

    invoke-interface {p2}, Landroidx/paging/NullPaddedList;->getStorageCount()I

    move-result v3

    add-int/2addr v1, v3

    invoke-interface {p3}, Landroidx/paging/NullPaddedList;->getSize()I

    move-result v3

    invoke-static {v1, v3}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v8

    .line 12
    sget-object v9, Landroidx/paging/DiffingChangePayload;->ITEM_TO_PLACEHOLDER:Landroidx/paging/DiffingChangePayload;

    move-object v3, p0

    move-object v4, p1

    move v5, v2

    move v6, v0

    .line 13
    invoke-direct/range {v3 .. v9}, Landroidx/paging/DistinctListsDiffDispatcher;->dispatchChange(Landroidx/recyclerview/widget/ListUpdateCallback;IIIILjava/lang/Object;)V

    .line 14
    invoke-interface {p3}, Landroidx/paging/NullPaddedList;->getPlaceholdersBefore()I

    move-result v1

    invoke-interface {p2}, Landroidx/paging/NullPaddedList;->getSize()I

    move-result v3

    invoke-static {v1, v3}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v7

    .line 15
    invoke-interface {p3}, Landroidx/paging/NullPaddedList;->getPlaceholdersBefore()I

    move-result v1

    invoke-interface {p3}, Landroidx/paging/NullPaddedList;->getStorageCount()I

    move-result v3

    add-int/2addr v1, v3

    invoke-interface {p2}, Landroidx/paging/NullPaddedList;->getSize()I

    move-result v3

    invoke-static {v1, v3}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v8

    .line 16
    sget-object v9, Landroidx/paging/DiffingChangePayload;->PLACEHOLDER_TO_ITEM:Landroidx/paging/DiffingChangePayload;

    move-object v3, p0

    .line 17
    invoke-direct/range {v3 .. v9}, Landroidx/paging/DistinctListsDiffDispatcher;->dispatchChange(Landroidx/recyclerview/widget/ListUpdateCallback;IIIILjava/lang/Object;)V

    .line 18
    invoke-interface {p3}, Landroidx/paging/NullPaddedList;->getSize()I

    move-result p3

    invoke-interface {p2}, Landroidx/paging/NullPaddedList;->getSize()I

    move-result v0

    sub-int/2addr p3, v0

    if-lez p3, :cond_1

    .line 19
    invoke-interface {p2}, Landroidx/paging/NullPaddedList;->getSize()I

    move-result p2

    invoke-interface {p1, p2, p3}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    goto :goto_0

    :cond_1
    if-gez p3, :cond_2

    .line 20
    invoke-interface {p2}, Landroidx/paging/NullPaddedList;->getSize()I

    move-result p2

    add-int/2addr p2, p3

    neg-int p3, p3

    invoke-interface {p1, p2, p3}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    :cond_2
    :goto_0
    return-void
.end method
