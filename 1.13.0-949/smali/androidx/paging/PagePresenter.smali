.class public final Landroidx/paging/PagePresenter;
.super Ljava/lang/Object;
.source "PagePresenter.kt"

# interfaces
.implements Landroidx/paging/NullPaddedList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/paging/PagePresenter$Companion;,
        Landroidx/paging/PagePresenter$ProcessPageEventCallback;,
        Landroidx/paging/PagePresenter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/paging/NullPaddedList<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPagePresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PagePresenter.kt\nandroidx/paging/PagePresenter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,346:1\n1#2:347\n1358#3:348\n1444#3,5:349\n12731#4,2:354\n*S KotlinDebug\n*F\n+ 1 PagePresenter.kt\nandroidx/paging/PagePresenter\n*L\n68#1:348\n68#1:349,5\n222#1:354,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 7*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003:\u000278B\u0013\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0008J\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001b\u001a\u00020\u0008H\u0002J\u001e\u0010\u001e\u001a\u00020\u001d2\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00028\u00000 2\u0006\u0010!\u001a\u00020\"H\u0002J\u0010\u0010#\u001a\u00020\u00082\u0006\u0010$\u001a\u00020%H\u0002J\u0015\u0010&\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u001b\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\'J\u0015\u0010(\u001a\u00028\u00002\u0006\u0010)\u001a\u00020\u0008H\u0016\u00a2\u0006\u0002\u0010\'J\u0006\u0010*\u001a\u00020+J\u001e\u0010,\u001a\u00020\u001d2\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00052\u0006\u0010!\u001a\u00020\"H\u0002J\u001c\u0010.\u001a\u00020\u001d2\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00028\u0000002\u0006\u0010!\u001a\u00020\"J\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u00028\u000002J\u0008\u00103\u001a\u000204H\u0016J\u0018\u00105\u001a\u00020\u0008*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u000f06H\u0002R\u0014\u0010\u0007\u001a\u00020\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\nR\u001a\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u000f0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u0008@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\nR\u001e\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u0008@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\nR\u0014\u0010\u0015\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\nR\u001e\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u0008@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\n\u00a8\u00069"
    }
    d2 = {
        "Landroidx/paging/PagePresenter;",
        "T",
        "",
        "Landroidx/paging/NullPaddedList;",
        "insertEvent",
        "Landroidx/paging/PageEvent$Insert;",
        "(Landroidx/paging/PageEvent$Insert;)V",
        "originalPageOffsetFirst",
        "",
        "getOriginalPageOffsetFirst",
        "()I",
        "originalPageOffsetLast",
        "getOriginalPageOffsetLast",
        "pages",
        "",
        "Landroidx/paging/TransformablePage;",
        "<set-?>",
        "placeholdersAfter",
        "getPlaceholdersAfter",
        "placeholdersBefore",
        "getPlaceholdersBefore",
        "size",
        "getSize",
        "storageCount",
        "getStorageCount",
        "accessHintForPresenterIndex",
        "Landroidx/paging/ViewportHint$Access;",
        "index",
        "checkIndex",
        "",
        "dropPages",
        "drop",
        "Landroidx/paging/PageEvent$Drop;",
        "callback",
        "Landroidx/paging/PagePresenter$ProcessPageEventCallback;",
        "dropPagesWithOffsets",
        "pageOffsetsToDrop",
        "Lkotlin/ranges/IntRange;",
        "get",
        "(I)Ljava/lang/Object;",
        "getFromStorage",
        "localIndex",
        "initializeHint",
        "Landroidx/paging/ViewportHint$Initial;",
        "insertPage",
        "insert",
        "processEvent",
        "pageEvent",
        "Landroidx/paging/PageEvent;",
        "snapshot",
        "Landroidx/paging/ItemSnapshotList;",
        "toString",
        "",
        "fullCount",
        "",
        "Companion",
        "ProcessPageEventCallback",
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


# static fields
.field public static final Companion:Landroidx/paging/PagePresenter$Companion;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final INITIAL:Landroidx/paging/PagePresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/PagePresenter<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# instance fields
.field private final pages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/paging/TransformablePage<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private placeholdersAfter:I

.field private placeholdersBefore:I

.field private storageCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/paging/PagePresenter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/paging/PagePresenter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/paging/PagePresenter;->Companion:Landroidx/paging/PagePresenter$Companion;

    new-instance v0, Landroidx/paging/PagePresenter;

    sget-object v1, Landroidx/paging/PageEvent$Insert;->Companion:Landroidx/paging/PageEvent$Insert$Companion;

    invoke-virtual {v1}, Landroidx/paging/PageEvent$Insert$Companion;->getEMPTY_REFRESH_LOCAL()Landroidx/paging/PageEvent$Insert;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/paging/PagePresenter;-><init>(Landroidx/paging/PageEvent$Insert;)V

    sput-object v0, Landroidx/paging/PagePresenter;->INITIAL:Landroidx/paging/PagePresenter;

    return-void
.end method

.method public constructor <init>(Landroidx/paging/PageEvent$Insert;)V
    .locals 1
    .param p1    # Landroidx/paging/PageEvent$Insert;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PageEvent$Insert<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "insertEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroidx/paging/PageEvent$Insert;->getPages()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/paging/PagePresenter;->pages:Ljava/util/List;

    .line 3
    invoke-virtual {p1}, Landroidx/paging/PageEvent$Insert;->getPages()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/paging/PagePresenter;->fullCount(Ljava/util/List;)I

    move-result v0

    iput v0, p0, Landroidx/paging/PagePresenter;->storageCount:I

    .line 4
    invoke-virtual {p1}, Landroidx/paging/PageEvent$Insert;->getPlaceholdersBefore()I

    move-result v0

    iput v0, p0, Landroidx/paging/PagePresenter;->placeholdersBefore:I

    .line 5
    invoke-virtual {p1}, Landroidx/paging/PageEvent$Insert;->getPlaceholdersAfter()I

    move-result p1

    iput p1, p0, Landroidx/paging/PagePresenter;->placeholdersAfter:I

    return-void
.end method

.method public static final synthetic access$getINITIAL$cp()Landroidx/paging/PagePresenter;
    .locals 1

    sget-object v0, Landroidx/paging/PagePresenter;->INITIAL:Landroidx/paging/PagePresenter;

    return-object v0
.end method

.method private final checkIndex(I)V
    .locals 3

    if-ltz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroidx/paging/PagePresenter;->getSize()I

    move-result v0

    if-ge p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/paging/PagePresenter;->getSize()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final dropPages(Landroidx/paging/PageEvent$Drop;Landroidx/paging/PagePresenter$ProcessPageEventCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PageEvent$Drop<",
            "TT;>;",
            "Landroidx/paging/PagePresenter$ProcessPageEventCallback;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/paging/PagePresenter;->getSize()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroidx/paging/PageEvent$Drop;->getLoadType()Landroidx/paging/LoadType;

    move-result-object v1

    sget-object v2, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    .line 3
    invoke-virtual {p0}, Landroidx/paging/PagePresenter;->getPlaceholdersBefore()I

    move-result v1

    .line 4
    new-instance v4, Lkotlin/ranges/IntRange;

    invoke-virtual {p1}, Landroidx/paging/PageEvent$Drop;->getMinPageOffset()I

    move-result v5

    invoke-virtual {p1}, Landroidx/paging/PageEvent$Drop;->getMaxPageOffset()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-direct {p0, v4}, Landroidx/paging/PagePresenter;->dropPagesWithOffsets(Lkotlin/ranges/IntRange;)I

    move-result v4

    .line 5
    invoke-virtual {p0}, Landroidx/paging/PagePresenter;->getStorageCount()I

    move-result v5

    sub-int/2addr v5, v4

    iput v5, p0, Landroidx/paging/PagePresenter;->storageCount:I

    .line 6
    invoke-virtual {p1}, Landroidx/paging/PageEvent$Drop;->getPlaceholdersRemaining()I

    move-result v4

    iput v4, p0, Landroidx/paging/PagePresenter;->placeholdersBefore:I

    .line 7
    invoke-virtual {p0}, Landroidx/paging/PagePresenter;->getSize()I

    move-result v4

    sub-int/2addr v4, v0

    if-lez v4, :cond_0

    .line 8
    invoke-interface {p2, v3, v4}, Landroidx/paging/PagePresenter$ProcessPageEventCallback;->onInserted(II)V

    goto :goto_0

    :cond_0
    if-gez v4, :cond_1

    neg-int v0, v4

    .line 9
    invoke-interface {p2, v3, v0}, Landroidx/paging/PagePresenter$ProcessPageEventCallback;->onRemoved(II)V

    :cond_1
    :goto_0
    add-int/2addr v1, v4

    .line 10
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 11
    invoke-virtual {p1}, Landroidx/paging/PageEvent$Drop;->getPlaceholdersRemaining()I

    move-result p1

    sub-int/2addr p1, v0

    if-lez p1, :cond_2

    .line 12
    invoke-interface {p2, v0, p1}, Landroidx/paging/PagePresenter$ProcessPageEventCallback;->onChanged(II)V

    .line 13
    :cond_2
    sget-object p1, Landroidx/paging/LoadState$NotLoading;->Companion:Landroidx/paging/LoadState$NotLoading$Companion;

    invoke-virtual {p1}, Landroidx/paging/LoadState$NotLoading$Companion;->getIncomplete$paging_common()Landroidx/paging/LoadState$NotLoading;

    move-result-object p1

    .line 14
    invoke-interface {p2, v2, v3, p1}, Landroidx/paging/PagePresenter$ProcessPageEventCallback;->onStateUpdate(Landroidx/paging/LoadType;ZLandroidx/paging/LoadState;)V

    goto :goto_3

    .line 15
    :cond_3
    invoke-virtual {p0}, Landroidx/paging/PagePresenter;->getPlaceholdersAfter()I

    move-result v1

    .line 16
    new-instance v2, Lkotlin/ranges/IntRange;

    invoke-virtual {p1}, Landroidx/paging/PageEvent$Drop;->getMinPageOffset()I

    move-result v4

    invoke-virtual {p1}, Landroidx/paging/PageEvent$Drop;->getMaxPageOffset()I

    move-result v5

    invoke-direct {v2, v4, v5}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-direct {p0, v2}, Landroidx/paging/PagePresenter;->dropPagesWithOffsets(Lkotlin/ranges/IntRange;)I

    move-result v2

    .line 17
    invoke-virtual {p0}, Landroidx/paging/PagePresenter;->getStorageCount()I

    move-result v4

    sub-int/2addr v4, v2

    iput v4, p0, Landroidx/paging/PagePresenter;->storageCount:I

    .line 18
    invoke-virtual {p1}, Landroidx/paging/PageEvent$Drop;->getPlaceholdersRemaining()I

    move-result v2

    iput v2, p0, Landroidx/paging/PagePresenter;->placeholdersAfter:I

    .line 19
    invoke-virtual {p0}, Landroidx/paging/PagePresenter;->getSize()I

    move-result v2

    sub-int/2addr v2, v0

    if-lez v2, :cond_4

    .line 20
    invoke-interface {p2, v0, v2}, Landroidx/paging/PagePresenter$ProcessPageEventCallback;->onInserted(II)V

    goto :goto_1

    :cond_4
    if-gez v2, :cond_5

    add-int/2addr v0, v2

    neg-int v4, v2

    .line 21
    invoke-interface {p2, v0, v4}, Landroidx/paging/PagePresenter$ProcessPageEventCallback;->onRemoved(II)V

    :cond_5
    :goto_1
    if-gez v2, :cond_6

    neg-int v0, v2

    .line 22
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    .line 23
    :goto_2
    invoke-virtual {p1}, Landroidx/paging/PageEvent$Drop;->getPlaceholdersRemaining()I

    move-result v2

    sub-int/2addr v1, v0

    sub-int/2addr v2, v1

    if-lez v2, :cond_7

    .line 24
    invoke-virtual {p0}, Landroidx/paging/PagePresenter;->getSize()I

    move-result v0

    invoke-virtual {p1}, Landroidx/paging/PageEvent$Drop;->getPlaceholdersRemaining()I

    move-result p1

    sub-int/2addr v0, p1

    .line 25
    invoke-interface {p2, v0, v2}, Landroidx/paging/PagePresenter$ProcessPageEventCallback;->onChanged(II)V

    .line 26
    :cond_7
    sget-object p1, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    .line 27
    sget-object v0, Landroidx/paging/LoadState$NotLoading;->Companion:Landroidx/paging/LoadState$NotLoading$Companion;

    invoke-virtual {v0}, Landroidx/paging/LoadState$NotLoading$Companion;->getIncomplete$paging_common()Landroidx/paging/LoadState$NotLoading;

    move-result-object v0

    .line 28
    invoke-interface {p2, p1, v3, v0}, Landroidx/paging/PagePresenter$ProcessPageEventCallback;->onStateUpdate(Landroidx/paging/LoadType;ZLandroidx/paging/LoadState;)V

    :goto_3
    return-void
.end method

.method private final dropPagesWithOffsets(Lkotlin/ranges/IntRange;)I
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/paging/PagePresenter;->pages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/paging/TransformablePage;

    .line 4
    invoke-virtual {v3}, Landroidx/paging/TransformablePage;->getOriginalPageOffsets()[I

    move-result-object v4

    .line 5
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    aget v7, v4, v6

    .line 6
    invoke-virtual {p1, v7}, Lkotlin/ranges/IntRange;->contains(I)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_0

    .line 7
    invoke-virtual {v3}, Landroidx/paging/TransformablePage;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    .line 8
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return v2
.end method

.method private final fullCount(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/paging/TransformablePage<",
            "TT;>;>;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/paging/TransformablePage;

    invoke-virtual {v1}, Landroidx/paging/TransformablePage;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private final getOriginalPageOffsetFirst()I
    .locals 1

    iget-object v0, p0, Landroidx/paging/PagePresenter;->pages:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/paging/TransformablePage;

    invoke-virtual {v0}, Landroidx/paging/TransformablePage;->getOriginalPageOffsets()[I

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->minOrNull([I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private final getOriginalPageOffsetLast()I
    .locals 1

    iget-object v0, p0, Landroidx/paging/PagePresenter;->pages:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/paging/TransformablePage;

    invoke-virtual {v0}, Landroidx/paging/TransformablePage;->getOriginalPageOffsets()[I

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->maxOrNull([I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private final insertPage(Landroidx/paging/PageEvent$Insert;Landroidx/paging/PagePresenter$ProcessPageEventCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PageEvent$Insert<",
            "TT;>;",
            "Landroidx/paging/PagePresenter$ProcessPageEventCallback;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroidx/paging/PageEvent$Insert;->getPages()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/paging/PagePresenter;->fullCount(Ljava/util/List;)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroidx/paging/PagePresenter;->getSize()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Landroidx/paging/PageEvent$Insert;->getLoadType()Landroidx/paging/LoadType;

    move-result-object v2

    sget-object v3, Landroidx/paging/PagePresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto/16 :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/paging/PagePresenter;->getPlaceholdersAfter()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 5
    invoke-virtual {p0}, Landroidx/paging/PagePresenter;->getPlaceholdersBefore()I

    move-result v3

    invoke-virtual {p0}, Landroidx/paging/PagePresenter;->getStorageCount()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v4, v0, v2

    add-int v5, v3, v2

    .line 6
    iget-object v6, p0, Landroidx/paging/PagePresenter;->pages:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {p1}, Landroidx/paging/PageEvent$Insert;->getPages()Ljava/util/List;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 7
    invoke-virtual {p0}, Landroidx/paging/PagePresenter;->getStorageCount()I

    move-result v6

    add-int/2addr v6, v0

    iput v6, p0, Landroidx/paging/PagePresenter;->storageCount:I

    .line 8
    invoke-virtual {p1}, Landroidx/paging/PageEvent$Insert;->getPlaceholdersAfter()I

    move-result v0

    iput v0, p0, Landroidx/paging/PagePresenter;->placeholdersAfter:I

    .line 9
    invoke-interface {p2, v3, v2}, Landroidx/paging/PagePresenter$ProcessPageEventCallback;->onChanged(II)V

    .line 10
    invoke-interface {p2, v5, v4}, Landroidx/paging/PagePresenter$ProcessPageEventCallback;->onInserted(II)V

    .line 11
    invoke-virtual {p0}, Landroidx/paging/PagePresenter;->getSize()I

    move-result v0

    sub-int/2addr v0, v1

    sub-int/2addr v0, v4

    if-lez v0, :cond_1

    .line 12
    invoke-virtual {p0}, Landroidx/paging/PagePresenter;->getSize()I

    move-result v1

    sub-int/2addr v1, v0

    .line 13
    invoke-interface {p2, v1, v0}, Landroidx/paging/PagePresenter$ProcessPageEventCallback;->onInserted(II)V

    goto :goto_0

    :cond_1
    if-gez v0, :cond_4

    .line 14
    invoke-virtual {p0}, Landroidx/paging/PagePresenter;->getSize()I

    move-result v1

    neg-int v0, v0

    invoke-interface {p2, v1, v0}, Landroidx/paging/PagePresenter$ProcessPageEventCallback;->onRemoved(II)V

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p0}, Landroidx/paging/PagePresenter;->getPlaceholdersBefore()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 16
    invoke-virtual {p0}, Landroidx/paging/PagePresenter;->getPlaceholdersBefore()I

    move-result v3

    sub-int/2addr v3, v2

    sub-int v4, v0, v2

    .line 17
    iget-object v5, p0, Landroidx/paging/PagePresenter;->pages:Ljava/util/List;

    invoke-virtual {p1}, Landroidx/paging/PageEvent$Insert;->getPages()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v7, v6}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 18
    invoke-virtual {p0}, Landroidx/paging/PagePresenter;->getStorageCount()I

    move-result v5

    add-int/2addr v5, v0

    iput v5, p0, Landroidx/paging/PagePresenter;->storageCount:I

    .line 19
    invoke-virtual {p1}, Landroidx/paging/PageEvent$Insert;->getPlaceholdersBefore()I

    move-result v0

    iput v0, p0, Landroidx/paging/PagePresenter;->placeholdersBefore:I

    .line 20
    invoke-interface {p2, v3, v2}, Landroidx/paging/PagePresenter$ProcessPageEventCallback;->onChanged(II)V

    .line 21
    invoke-interface {p2, v7, v4}, Landroidx/paging/PagePresenter$ProcessPageEventCallback;->onInserted(II)V

    .line 22
    invoke-virtual {p0}, Landroidx/paging/PagePresenter;->getSize()I

    move-result v0

    sub-int/2addr v0, v1

    sub-int/2addr v0, v4

    if-lez v0, :cond_3

    .line 23
    invoke-interface {p2, v7, v0}, Landroidx/paging/PagePresenter$ProcessPageEventCallback;->onInserted(II)V

    goto :goto_0

    :cond_3
    if-gez v0, :cond_4

    neg-int v0, v0

    .line 24
    invoke-interface {p2, v7, v0}, Landroidx/paging/PagePresenter$ProcessPageEventCallback;->onRemoved(II)V

    .line 25
    :cond_4
    :goto_0
    invoke-virtual {p1}, Landroidx/paging/PageEvent$Insert;->getSourceLoadStates()Landroidx/paging/LoadStates;

    move-result-object v0

    .line 26
    invoke-virtual {p1}, Landroidx/paging/PageEvent$Insert;->getMediatorLoadStates()Landroidx/paging/LoadStates;

    move-result-object p1

    .line 27
    invoke-interface {p2, v0, p1}, Landroidx/paging/PagePresenter$ProcessPageEventCallback;->onStateUpdate(Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V

    return-void

    .line 28
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final accessHintForPresenterIndex(I)Landroidx/paging/ViewportHint$Access;
    .locals 8
    .annotation build Lm8/g;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/paging/PagePresenter;->getPlaceholdersBefore()I

    move-result v0

    sub-int v0, p1, v0

    const/4 v1, 0x0

    move v3, v0

    .line 2
    :goto_0
    iget-object v0, p0, Landroidx/paging/PagePresenter;->pages:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/paging/TransformablePage;

    invoke-virtual {v0}, Landroidx/paging/TransformablePage;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_0

    iget-object v0, p0, Landroidx/paging/PagePresenter;->pages:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/paging/PagePresenter;->pages:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/paging/TransformablePage;

    invoke-virtual {v0}, Landroidx/paging/TransformablePage;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v3, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/paging/PagePresenter;->pages:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/paging/TransformablePage;

    .line 5
    invoke-virtual {p0}, Landroidx/paging/PagePresenter;->getPlaceholdersBefore()I

    move-result v0

    sub-int v4, p1, v0

    .line 6
    invoke-virtual {p0}, Landroidx/paging/PagePresenter;->getSize()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0}, Landroidx/paging/PagePresenter;->getPlaceholdersAfter()I

    move-result p1

    sub-int/2addr v0, p1

    add-int/lit8 v5, v0, -0x1

    .line 7
    invoke-direct {p0}, Landroidx/paging/PagePresenter;->getOriginalPageOffsetFirst()I

    move-result v6

    .line 8
    invoke-direct {p0}, Landroidx/paging/PagePresenter;->getOriginalPageOffsetLast()I

    move-result v7

    .line 9
    invoke-virtual/range {v2 .. v7}, Landroidx/paging/TransformablePage;->viewportHintFor(IIIII)Landroidx/paging/ViewportHint$Access;

    move-result-object p1

    return-object p1
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroidx/paging/PagePresenter;->checkIndex(I)V

    .line 2
    invoke-virtual {p0}, Landroidx/paging/PagePresenter;->getPlaceholdersBefore()I

    move-result v0

    sub-int/2addr p1, v0

    if-ltz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/paging/PagePresenter;->getStorageCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/paging/PagePresenter;->getFromStorage(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFromStorage(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/paging/PagePresenter;->pages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Landroidx/paging/PagePresenter;->pages:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/paging/TransformablePage;

    invoke-virtual {v2}, Landroidx/paging/TransformablePage;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, p1, :cond_0

    goto :goto_1

    :cond_0
    sub-int/2addr p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_1
    :goto_1
    iget-object v0, p0, Landroidx/paging/PagePresenter;->pages:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/paging/TransformablePage;

    invoke-virtual {v0}, Landroidx/paging/TransformablePage;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPlaceholdersAfter()I
    .locals 1

    iget v0, p0, Landroidx/paging/PagePresenter;->placeholdersAfter:I

    return v0
.end method

.method public getPlaceholdersBefore()I
    .locals 1

    iget v0, p0, Landroidx/paging/PagePresenter;->placeholdersBefore:I

    return v0
.end method

.method public getSize()I
    .locals 2

    invoke-virtual {p0}, Landroidx/paging/PagePresenter;->getPlaceholdersBefore()I

    move-result v0

    invoke-virtual {p0}, Landroidx/paging/PagePresenter;->getStorageCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/paging/PagePresenter;->getPlaceholdersAfter()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getStorageCount()I
    .locals 1

    iget v0, p0, Landroidx/paging/PagePresenter;->storageCount:I

    return v0
.end method

.method public final initializeHint()Landroidx/paging/ViewportHint$Initial;
    .locals 4
    .annotation build Lm8/g;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/paging/PagePresenter;->getStorageCount()I

    move-result v0

    .line 2
    new-instance v1, Landroidx/paging/ViewportHint$Initial;

    .line 3
    div-int/lit8 v0, v0, 0x2

    .line 4
    invoke-direct {p0}, Landroidx/paging/PagePresenter;->getOriginalPageOffsetFirst()I

    move-result v2

    .line 5
    invoke-direct {p0}, Landroidx/paging/PagePresenter;->getOriginalPageOffsetLast()I

    move-result v3

    .line 6
    invoke-direct {v1, v0, v0, v2, v3}, Landroidx/paging/ViewportHint$Initial;-><init>(IIII)V

    return-object v1
.end method

.method public final processEvent(Landroidx/paging/PageEvent;Landroidx/paging/PagePresenter$ProcessPageEventCallback;)V
    .locals 1
    .param p1    # Landroidx/paging/PageEvent;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/paging/PagePresenter$ProcessPageEventCallback;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PageEvent<",
            "TT;>;",
            "Landroidx/paging/PagePresenter$ProcessPageEventCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "pageEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Landroidx/paging/PageEvent$Insert;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/paging/PageEvent$Insert;

    invoke-direct {p0, p1, p2}, Landroidx/paging/PagePresenter;->insertPage(Landroidx/paging/PageEvent$Insert;Landroidx/paging/PagePresenter$ProcessPageEventCallback;)V

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p1, Landroidx/paging/PageEvent$Drop;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/paging/PageEvent$Drop;

    invoke-direct {p0, p1, p2}, Landroidx/paging/PagePresenter;->dropPages(Landroidx/paging/PageEvent$Drop;Landroidx/paging/PagePresenter$ProcessPageEventCallback;)V

    goto :goto_0

    .line 3
    :cond_1
    instance-of v0, p1, Landroidx/paging/PageEvent$LoadStateUpdate;

    if-eqz v0, :cond_2

    .line 4
    check-cast p1, Landroidx/paging/PageEvent$LoadStateUpdate;

    invoke-virtual {p1}, Landroidx/paging/PageEvent$LoadStateUpdate;->getSource()Landroidx/paging/LoadStates;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroidx/paging/PageEvent$LoadStateUpdate;->getMediator()Landroidx/paging/LoadStates;

    move-result-object p1

    .line 6
    invoke-interface {p2, v0, p1}, Landroidx/paging/PagePresenter$ProcessPageEventCallback;->onStateUpdate(Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final snapshot()Landroidx/paging/ItemSnapshotList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/paging/ItemSnapshotList<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/paging/PagePresenter;->getPlaceholdersBefore()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroidx/paging/PagePresenter;->getPlaceholdersAfter()I

    move-result v1

    .line 3
    iget-object v2, p0, Landroidx/paging/PagePresenter;->pages:Ljava/util/List;

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 6
    check-cast v4, Landroidx/paging/TransformablePage;

    .line 7
    invoke-virtual {v4}, Landroidx/paging/TransformablePage;->getData()Ljava/util/List;

    move-result-object v4

    .line 8
    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 9
    :cond_0
    new-instance v2, Landroidx/paging/ItemSnapshotList;

    invoke-direct {v2, v0, v1, v3}, Landroidx/paging/ItemSnapshotList;-><init>(IILjava/util/List;)V

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 10
    .annotation build Lm8/g;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/paging/PagePresenter;->getStorageCount()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Landroidx/paging/PagePresenter;->getFromStorage(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3f

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/paging/PagePresenter;->getPlaceholdersBefore()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " placeholders), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/paging/PagePresenter;->getPlaceholdersAfter()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " placeholders)]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
