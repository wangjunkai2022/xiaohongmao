.class public final Landroidx/paging/PagedStorage;
.super Ljava/util/AbstractList;
.source "PagedStorage.kt"

# interfaces
.implements Landroidx/paging/LegacyPageFetcher$KeyProvider;
.implements Landroidx/paging/NullPaddedList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/paging/PagedStorage$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TT;>;",
        "Landroidx/paging/LegacyPageFetcher$KeyProvider<",
        "Ljava/lang/Object;",
        ">;",
        "Landroidx/paging/NullPaddedList<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPagedStorage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PagedStorage.kt\nandroidx/paging/PagedStorage\n*L\n1#1,360:1\n152#1,15:361\n*S KotlinDebug\n*F\n+ 1 PagedStorage.kt\nandroidx/paging/PagedStorage\n*L\n173#1:361,15\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0011\n\u0002\u0010!\n\u0002\u0008\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0000\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u00032\u0008\u0012\u0004\u0012\u00020\u00020\u00042\u0008\u0012\u0004\u0012\u0002H\u00010\u0005:\u0001YB\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0006B)\u0008\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0010\u0010\t\u001a\u000c\u0012\u0002\u0008\u0003\u0012\u0004\u0012\u00028\u00000\n\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\u000cB\u0015\u0008\u0012\u0012\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000\u00a2\u0006\u0002\u0010\u000eJ+\u00100\u001a\u0002012\u0010\u0010\t\u001a\u000c\u0012\u0002\u0008\u0003\u0012\u0004\u0012\u00028\u00000\n2\n\u0008\u0002\u00102\u001a\u0004\u0018\u000103H\u0000\u00a2\u0006\u0002\u00084J\u0018\u00105\u001a\u0004\u0018\u00018\u00002\u0006\u00106\u001a\u00020\u0008H\u0096\u0002\u00a2\u0006\u0002\u00107J\u0015\u00108\u001a\u00028\u00002\u0006\u00109\u001a\u00020\u0008H\u0016\u00a2\u0006\u0002\u00107J\u001a\u0010:\u001a\u000e\u0012\u0002\u0008\u0003\u0012\u0004\u0012\u00028\u0000\u0018\u00010;2\u0006\u0010<\u001a\u00020=JD\u0010>\u001a\u0002012\u0006\u0010\u0007\u001a\u00020\u00082\u0010\u0010\t\u001a\u000c\u0012\u0002\u0008\u0003\u0012\u0004\u0012\u00028\u00000\n2\u0006\u0010\u000b\u001a\u00020\u00082\u0006\u0010(\u001a\u00020\u00082\u0006\u00102\u001a\u0002032\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010H\u0007J:\u0010>\u001a\u0002012\u0006\u0010\u0007\u001a\u00020\u00082\u0010\u0010\t\u001a\u000c\u0012\u0002\u0008\u0003\u0012\u0004\u0012\u00028\u00000\n2\u0006\u0010\u000b\u001a\u00020\u00082\u0006\u0010(\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J \u0010?\u001a\u00020\u00102\u0006\u0010@\u001a\u00020\u00082\u0006\u0010A\u001a\u00020\u00082\u0006\u0010B\u001a\u00020\u0008H\u0002J\u0016\u0010C\u001a\u00020\u00102\u0006\u0010@\u001a\u00020\u00082\u0006\u0010A\u001a\u00020\u0008J\u0016\u0010D\u001a\u00020\u00102\u0006\u0010@\u001a\u00020\u00082\u0006\u0010A\u001a\u00020\u0008J+\u0010E\u001a\u0002012\u0010\u0010\t\u001a\u000c\u0012\u0002\u0008\u0003\u0012\u0004\u0012\u00028\u00000\n2\n\u0008\u0002\u00102\u001a\u0004\u0018\u000103H\u0000\u00a2\u0006\u0002\u0008FJ\u001e\u0010G\u001a\u00020\u00102\u0006\u0010@\u001a\u00020\u00082\u0006\u0010A\u001a\u00020\u00082\u0006\u0010H\u001a\u00020\u0008J\u000c\u0010I\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000J\u0008\u0010J\u001a\u00020KH\u0016J`\u0010L\u001a\u0002HM\"\u0004\u0008\u0001\u0010M2\u0006\u00109\u001a\u00020\u00082B\u0008\u0004\u0010N\u001a<\u0012\u001d\u0012\u001b\u0012\u0002\u0008\u0003\u0012\u0004\u0012\u00028\u00000\n\u00a2\u0006\u000c\u0008P\u0012\u0008\u0008Q\u0012\u0004\u0008\u0008(\t\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008P\u0012\u0008\u0008Q\u0012\u0004\u0008\u0008(R\u0012\u0004\u0012\u0002HM0OH\u0082\u0008\u00a2\u0006\u0002\u0010SJ-\u0010T\u001a\u00020\u00102\u0006\u0010U\u001a\u00020\u00102\u0006\u0010@\u001a\u00020\u00082\u0006\u0010A\u001a\u00020\u00082\u0006\u00102\u001a\u000203H\u0000\u00a2\u0006\u0002\u0008VJ-\u0010W\u001a\u00020\u00102\u0006\u0010U\u001a\u00020\u00102\u0006\u0010@\u001a\u00020\u00082\u0006\u0010A\u001a\u00020\u00082\u0006\u00102\u001a\u000203H\u0000\u00a2\u0006\u0002\u0008XR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u00028\u00008@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R$\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u00088F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u000e\u0010\u001a\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001b\u001a\u00028\u00008@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u0013R\u0011\u0010\u001d\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u0017R\u0016\u0010\u001f\u001a\u0004\u0018\u00010\u00028VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010\u0013R\u001e\u0010!\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0002\u0008\u0003\u0012\u0004\u0012\u00028\u00000\n0\"X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010$\u001a\u00020\u00082\u0006\u0010#\u001a\u00020\u0008@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\u0017R\u001e\u0010&\u001a\u00020\u00082\u0006\u0010#\u001a\u00020\u0008@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010\u0017R\u001e\u0010(\u001a\u00020\u00082\u0006\u0010#\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010\u0017R\u0016\u0010*\u001a\u0004\u0018\u00010\u00028VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010\u0013R\u0014\u0010,\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010\u0017R\u001e\u0010.\u001a\u00020\u00082\u0006\u0010#\u001a\u00020\u0008@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u0010\u0017\u00a8\u0006Z"
    }
    d2 = {
        "Landroidx/paging/PagedStorage;",
        "T",
        "",
        "Ljava/util/AbstractList;",
        "Landroidx/paging/LegacyPageFetcher$KeyProvider;",
        "Landroidx/paging/NullPaddedList;",
        "()V",
        "leadingNulls",
        "",
        "page",
        "Landroidx/paging/PagingSource$LoadResult$Page;",
        "trailingNulls",
        "(ILandroidx/paging/PagingSource$LoadResult$Page;I)V",
        "other",
        "(Landroidx/paging/PagedStorage;)V",
        "counted",
        "",
        "firstLoadedItem",
        "getFirstLoadedItem$paging_common",
        "()Ljava/lang/Object;",
        "value",
        "lastLoadAroundIndex",
        "getLastLoadAroundIndex",
        "()I",
        "setLastLoadAroundIndex",
        "(I)V",
        "lastLoadAroundLocalIndex",
        "lastLoadedItem",
        "getLastLoadedItem$paging_common",
        "middleOfLoadedRange",
        "getMiddleOfLoadedRange",
        "nextKey",
        "getNextKey",
        "pages",
        "",
        "<set-?>",
        "placeholdersAfter",
        "getPlaceholdersAfter",
        "placeholdersBefore",
        "getPlaceholdersBefore",
        "positionOffset",
        "getPositionOffset",
        "prevKey",
        "getPrevKey",
        "size",
        "getSize",
        "storageCount",
        "getStorageCount",
        "appendPage",
        "",
        "callback",
        "Landroidx/paging/PagedStorage$Callback;",
        "appendPage$paging_common",
        "get",
        "index",
        "(I)Ljava/lang/Object;",
        "getFromStorage",
        "localIndex",
        "getRefreshKeyInfo",
        "Landroidx/paging/PagingState;",
        "config",
        "Landroidx/paging/PagedList$Config;",
        "init",
        "needsTrim",
        "maxSize",
        "requiredRemaining",
        "localPageIndex",
        "needsTrimFromEnd",
        "needsTrimFromFront",
        "prependPage",
        "prependPage$paging_common",
        "shouldPreTrimNewPage",
        "countToBeAdded",
        "snapshot",
        "toString",
        "",
        "traversePages",
        "V",
        "onLastPage",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "pageInternalIndex",
        "(ILkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "trimFromEnd",
        "insertNulls",
        "trimFromEnd$paging_common",
        "trimFromFront",
        "trimFromFront$paging_common",
        "Callback",
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
.field private counted:Z

.field private lastLoadAroundLocalIndex:I

.field private final pages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/paging/PagingSource$LoadResult$Page<",
            "*TT;>;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private placeholdersAfter:I

.field private placeholdersBefore:I

.field private positionOffset:I

.field private storageCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/paging/PagedStorage;->pages:Ljava/util/List;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/paging/PagedStorage;->counted:Z

    return-void
.end method

.method public constructor <init>(ILandroidx/paging/PagingSource$LoadResult$Page;I)V
    .locals 7
    .param p2    # Landroidx/paging/PagingSource$LoadResult$Page;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/paging/PagingSource$LoadResult$Page<",
            "*TT;>;I)V"
        }
    .end annotation

    const-string v0, "page"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Landroidx/paging/PagedStorage;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    .line 5
    invoke-direct/range {v1 .. v6}, Landroidx/paging/PagedStorage;->init(ILandroidx/paging/PagingSource$LoadResult$Page;IIZ)V

    return-void
.end method

.method private constructor <init>(Landroidx/paging/PagedStorage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PagedStorage<",
            "TT;>;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/paging/PagedStorage;->pages:Ljava/util/List;

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Landroidx/paging/PagedStorage;->counted:Z

    .line 9
    iget-object v1, p1, Landroidx/paging/PagedStorage;->pages:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    invoke-virtual {p1}, Landroidx/paging/PagedStorage;->getPlaceholdersBefore()I

    move-result v0

    iput v0, p0, Landroidx/paging/PagedStorage;->placeholdersBefore:I

    .line 11
    invoke-virtual {p1}, Landroidx/paging/PagedStorage;->getPlaceholdersAfter()I

    move-result v0

    iput v0, p0, Landroidx/paging/PagedStorage;->placeholdersAfter:I

    .line 12
    iget v0, p1, Landroidx/paging/PagedStorage;->positionOffset:I

    iput v0, p0, Landroidx/paging/PagedStorage;->positionOffset:I

    .line 13
    iget-boolean v0, p1, Landroidx/paging/PagedStorage;->counted:Z

    iput-boolean v0, p0, Landroidx/paging/PagedStorage;->counted:Z

    .line 14
    invoke-virtual {p1}, Landroidx/paging/PagedStorage;->getStorageCount()I

    move-result v0

    iput v0, p0, Landroidx/paging/PagedStorage;->storageCount:I

    .line 15
    iget p1, p1, Landroidx/paging/PagedStorage;->lastLoadAroundLocalIndex:I

    iput p1, p0, Landroidx/paging/PagedStorage;->lastLoadAroundLocalIndex:I

    return-void
.end method

.method public static final synthetic access$getPages$p(Landroidx/paging/PagedStorage;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/paging/PagedStorage;->pages:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic appendPage$paging_common$default(Landroidx/paging/PagedStorage;Landroidx/paging/PagingSource$LoadResult$Page;Landroidx/paging/PagedStorage$Callback;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/paging/PagedStorage;->appendPage$paging_common(Landroidx/paging/PagingSource$LoadResult$Page;Landroidx/paging/PagedStorage$Callback;)V

    return-void
.end method

.method private final init(ILandroidx/paging/PagingSource$LoadResult$Page;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/paging/PagingSource$LoadResult$Page<",
            "*TT;>;IIZ)V"
        }
    .end annotation

    .line 1
    iput p1, p0, Landroidx/paging/PagedStorage;->placeholdersBefore:I

    .line 2
    iget-object p1, p0, Landroidx/paging/PagedStorage;->pages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 3
    iget-object p1, p0, Landroidx/paging/PagedStorage;->pages:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iput p3, p0, Landroidx/paging/PagedStorage;->placeholdersAfter:I

    .line 5
    iput p4, p0, Landroidx/paging/PagedStorage;->positionOffset:I

    .line 6
    invoke-virtual {p2}, Landroidx/paging/PagingSource$LoadResult$Page;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Landroidx/paging/PagedStorage;->storageCount:I

    .line 7
    iput-boolean p5, p0, Landroidx/paging/PagedStorage;->counted:Z

    .line 8
    invoke-virtual {p2}, Landroidx/paging/PagingSource$LoadResult$Page;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroidx/paging/PagedStorage;->lastLoadAroundLocalIndex:I

    return-void
.end method

.method public static synthetic init$default(Landroidx/paging/PagedStorage;ILandroidx/paging/PagingSource$LoadResult$Page;IILandroidx/paging/PagedStorage$Callback;ZILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    const/4 p6, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    move v6, p6

    :goto_0
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroidx/paging/PagedStorage;->init(ILandroidx/paging/PagingSource$LoadResult$Page;IILandroidx/paging/PagedStorage$Callback;Z)V

    return-void
.end method

.method private final needsTrim(III)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/paging/PagedStorage;->pages:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 2
    invoke-virtual {p0}, Landroidx/paging/PagedStorage;->getStorageCount()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 3
    iget-object p1, p0, Landroidx/paging/PagedStorage;->pages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/paging/PagedStorage;->getStorageCount()I

    move-result p1

    invoke-virtual {p3}, Landroidx/paging/PagingSource$LoadResult$Page;->getData()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p1, p3

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static synthetic prependPage$paging_common$default(Landroidx/paging/PagedStorage;Landroidx/paging/PagingSource$LoadResult$Page;Landroidx/paging/PagedStorage$Callback;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/paging/PagedStorage;->prependPage$paging_common(Landroidx/paging/PagingSource$LoadResult$Page;Landroidx/paging/PagedStorage$Callback;)V

    return-void
.end method

.method private final traversePages(ILkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(I",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/paging/PagingSource$LoadResult$Page<",
            "*TT;>;-",
            "Ljava/lang/Integer;",
            "+TV;>;)TV;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroidx/paging/PagedStorage;->access$getPages$p(Landroidx/paging/PagedStorage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-static {p0}, Landroidx/paging/PagedStorage;->access$getPages$p(Landroidx/paging/PagedStorage;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/paging/PagingSource$LoadResult$Page;

    invoke-virtual {v2}, Landroidx/paging/PagingSource$LoadResult$Page;->getData()Ljava/util/List;

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
    invoke-static {p0}, Landroidx/paging/PagedStorage;->access$getPages$p(Landroidx/paging/PagedStorage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final appendPage$paging_common(Landroidx/paging/PagingSource$LoadResult$Page;Landroidx/paging/PagedStorage$Callback;)V
    .locals 4
    .param p1    # Landroidx/paging/PagingSource$LoadResult$Page;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/paging/PagedStorage$Callback;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PagingSource$LoadResult$Page<",
            "*TT;>;",
            "Landroidx/paging/PagedStorage$Callback;",
            ")V"
        }
    .end annotation

    const-string v0, "page"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroidx/paging/PagingSource$LoadResult$Page;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Landroidx/paging/PagedStorage;->pages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0}, Landroidx/paging/PagedStorage;->getStorageCount()I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/paging/PagedStorage;->storageCount:I

    .line 4
    invoke-virtual {p0}, Landroidx/paging/PagedStorage;->getPlaceholdersAfter()I

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    sub-int v1, v0, p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/paging/PagedStorage;->getPlaceholdersAfter()I

    move-result v2

    sub-int/2addr v2, p1

    iput v2, p0, Landroidx/paging/PagedStorage;->placeholdersAfter:I

    :cond_1
    if-nez p2, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Landroidx/paging/PagedStorage;->getPlaceholdersBefore()I

    move-result v2

    invoke-virtual {p0}, Landroidx/paging/PagedStorage;->getStorageCount()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v0

    .line 7
    invoke-interface {p2, v2, p1, v1}, Landroidx/paging/PagedStorage$Callback;->onPageAppended(III)V

    :goto_0
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/paging/PagedStorage;->getPlaceholdersBefore()I

    move-result v0

    sub-int v0, p1, v0

    if-ltz p1, :cond_2

    .line 2
    invoke-virtual {p0}, Landroidx/paging/PagedStorage;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    if-ltz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/paging/PagedStorage;->getStorageCount()I

    move-result p1

    if-lt v0, p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/paging/PagedStorage;->getFromStorage(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1

    .line 5
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/paging/PagedStorage;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getFirstLoadedItem$paging_common()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Landroidx/paging/PagedStorage;->pages:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/paging/PagingSource$LoadResult$Page;

    invoke-virtual {v0}, Landroidx/paging/PagingSource$LoadResult$Page;->getData()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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
    invoke-static {p0}, Landroidx/paging/PagedStorage;->access$getPages$p(Landroidx/paging/PagedStorage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-static {p0}, Landroidx/paging/PagedStorage;->access$getPages$p(Landroidx/paging/PagedStorage;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/paging/PagingSource$LoadResult$Page;

    invoke-virtual {v2}, Landroidx/paging/PagingSource$LoadResult$Page;->getData()Ljava/util/List;

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
    invoke-static {p0}, Landroidx/paging/PagedStorage;->access$getPages$p(Landroidx/paging/PagedStorage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 4
    invoke-virtual {v0}, Landroidx/paging/PagingSource$LoadResult$Page;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getLastLoadAroundIndex()I
    .locals 2

    invoke-virtual {p0}, Landroidx/paging/PagedStorage;->getPlaceholdersBefore()I

    move-result v0

    iget v1, p0, Landroidx/paging/PagedStorage;->lastLoadAroundLocalIndex:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final getLastLoadedItem$paging_common()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Landroidx/paging/PagedStorage;->pages:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/paging/PagingSource$LoadResult$Page;

    invoke-virtual {v0}, Landroidx/paging/PagingSource$LoadResult$Page;->getData()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getMiddleOfLoadedRange()I
    .locals 2

    invoke-virtual {p0}, Landroidx/paging/PagedStorage;->getPlaceholdersBefore()I

    move-result v0

    invoke-virtual {p0}, Landroidx/paging/PagedStorage;->getStorageCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getNextKey()Ljava/lang/Object;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/paging/PagedStorage;->counted:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/paging/PagedStorage;->getPlaceholdersAfter()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/paging/PagedStorage;->pages:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/paging/PagingSource$LoadResult$Page;

    invoke-virtual {v0}, Landroidx/paging/PagingSource$LoadResult$Page;->getNextKey()Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public getPlaceholdersAfter()I
    .locals 1

    iget v0, p0, Landroidx/paging/PagedStorage;->placeholdersAfter:I

    return v0
.end method

.method public getPlaceholdersBefore()I
    .locals 1

    iget v0, p0, Landroidx/paging/PagedStorage;->placeholdersBefore:I

    return v0
.end method

.method public final getPositionOffset()I
    .locals 1

    iget v0, p0, Landroidx/paging/PagedStorage;->positionOffset:I

    return v0
.end method

.method public getPrevKey()Ljava/lang/Object;
    .locals 2
    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/paging/PagedStorage;->counted:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/paging/PagedStorage;->getPlaceholdersBefore()I

    move-result v0

    iget v1, p0, Landroidx/paging/PagedStorage;->positionOffset:I

    add-int/2addr v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/paging/PagedStorage;->pages:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/paging/PagingSource$LoadResult$Page;

    invoke-virtual {v0}, Landroidx/paging/PagingSource$LoadResult$Page;->getPrevKey()Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public final getRefreshKeyInfo(Landroidx/paging/PagedList$Config;)Landroidx/paging/PagingState;
    .locals 13
    .param p1    # Landroidx/paging/PagedList$Config;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PagedList$Config;",
            ")",
            "Landroidx/paging/PagingState<",
            "*TT;>;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/paging/PagedStorage;->pages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Landroidx/paging/PagingState;

    .line 3
    iget-object v1, p0, Landroidx/paging/PagedStorage;->pages:Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Landroidx/paging/PagedStorage;->getLastLoadAroundIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 5
    new-instance v12, Landroidx/paging/PagingConfig;

    .line 6
    iget v4, p1, Landroidx/paging/PagedList$Config;->pageSize:I

    .line 7
    iget v5, p1, Landroidx/paging/PagedList$Config;->prefetchDistance:I

    .line 8
    iget-boolean v6, p1, Landroidx/paging/PagedList$Config;->enablePlaceholders:Z

    .line 9
    iget v7, p1, Landroidx/paging/PagedList$Config;->initialLoadSizeHint:I

    .line 10
    iget v8, p1, Landroidx/paging/PagedList$Config;->maxSize:I

    const/4 v9, 0x0

    const/16 v10, 0x20

    const/4 v11, 0x0

    move-object v3, v12

    .line 11
    invoke-direct/range {v3 .. v11}, Landroidx/paging/PagingConfig;-><init>(IIZIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 12
    invoke-virtual {p0}, Landroidx/paging/PagedStorage;->getPlaceholdersBefore()I

    move-result p1

    .line 13
    invoke-direct {v0, v1, v2, v12, p1}, Landroidx/paging/PagingState;-><init>(Ljava/util/List;Ljava/lang/Integer;Landroidx/paging/PagingConfig;I)V

    return-object v0
.end method

.method public getSize()I
    .locals 2

    invoke-virtual {p0}, Landroidx/paging/PagedStorage;->getPlaceholdersBefore()I

    move-result v0

    invoke-virtual {p0}, Landroidx/paging/PagedStorage;->getStorageCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/paging/PagedStorage;->getPlaceholdersAfter()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getStorageCount()I
    .locals 1

    iget v0, p0, Landroidx/paging/PagedStorage;->storageCount:I

    return v0
.end method

.method public final init(ILandroidx/paging/PagingSource$LoadResult$Page;IILandroidx/paging/PagedStorage$Callback;Z)V
    .locals 6
    .param p2    # Landroidx/paging/PagingSource$LoadResult$Page;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Landroidx/paging/PagedStorage$Callback;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/paging/PagingSource$LoadResult$Page<",
            "*TT;>;II",
            "Landroidx/paging/PagedStorage$Callback;",
            "Z)V"
        }
    .end annotation

    const-string v0, "page"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    .line 9
    invoke-direct/range {v0 .. v5}, Landroidx/paging/PagedStorage;->init(ILandroidx/paging/PagingSource$LoadResult$Page;IIZ)V

    .line 10
    invoke-virtual {p0}, Landroidx/paging/PagedStorage;->size()I

    move-result p1

    invoke-interface {p5, p1}, Landroidx/paging/PagedStorage$Callback;->onInitialized(I)V

    return-void
.end method

.method public final needsTrimFromEnd(II)Z
    .locals 1

    iget-object v0, p0, Landroidx/paging/PagedStorage;->pages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroidx/paging/PagedStorage;->needsTrim(III)Z

    move-result p1

    return p1
.end method

.method public final needsTrimFromFront(II)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/paging/PagedStorage;->needsTrim(III)Z

    move-result p1

    return p1
.end method

.method public final prependPage$paging_common(Landroidx/paging/PagingSource$LoadResult$Page;Landroidx/paging/PagedStorage$Callback;)V
    .locals 3
    .param p1    # Landroidx/paging/PagingSource$LoadResult$Page;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/paging/PagedStorage$Callback;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PagingSource$LoadResult$Page<",
            "*TT;>;",
            "Landroidx/paging/PagedStorage$Callback;",
            ")V"
        }
    .end annotation

    const-string v0, "page"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroidx/paging/PagingSource$LoadResult$Page;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Landroidx/paging/PagedStorage;->pages:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Landroidx/paging/PagedStorage;->getStorageCount()I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/paging/PagedStorage;->storageCount:I

    .line 4
    invoke-virtual {p0}, Landroidx/paging/PagedStorage;->getPlaceholdersBefore()I

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    sub-int/2addr v0, p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/paging/PagedStorage;->getPlaceholdersBefore()I

    move-result v1

    sub-int/2addr v1, p1

    iput v1, p0, Landroidx/paging/PagedStorage;->placeholdersBefore:I

    .line 6
    :cond_1
    iget v1, p0, Landroidx/paging/PagedStorage;->positionOffset:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroidx/paging/PagedStorage;->positionOffset:I

    if-nez p2, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroidx/paging/PagedStorage;->getPlaceholdersBefore()I

    move-result v1

    invoke-interface {p2, v1, p1, v0}, Landroidx/paging/PagedStorage$Callback;->onPagePrepended(III)V

    :goto_0
    return-void
.end method

.method public final bridge remove(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/paging/PagedStorage;->removeAt(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge removeAt(I)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final setLastLoadAroundIndex(I)V
    .locals 2

    invoke-virtual {p0}, Landroidx/paging/PagedStorage;->getPlaceholdersBefore()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroidx/paging/PagedStorage;->getStorageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    iput p1, p0, Landroidx/paging/PagedStorage;->lastLoadAroundLocalIndex:I

    return-void
.end method

.method public final shouldPreTrimNewPage(III)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/paging/PagedStorage;->getStorageCount()I

    move-result v0

    add-int/2addr v0, p3

    const/4 p3, 0x1

    if-le v0, p1, :cond_0

    .line 2
    iget-object p1, p0, Landroidx/paging/PagedStorage;->pages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, p3, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/paging/PagedStorage;->getStorageCount()I

    move-result p1

    if-lt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    return p3
.end method

.method public final bridge size()I
    .locals 1

    invoke-virtual {p0}, Landroidx/paging/PagedStorage;->getSize()I

    move-result v0

    return v0
.end method

.method public final snapshot()Landroidx/paging/PagedStorage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/paging/PagedStorage<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Landroidx/paging/PagedStorage;

    invoke-direct {v0, p0}, Landroidx/paging/PagedStorage;-><init>(Landroidx/paging/PagedStorage;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11
    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "leading "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/paging/PagedStorage;->getPlaceholdersBefore()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", storage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/paging/PagedStorage;->getStorageCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", trailing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/paging/PagedStorage;->getPlaceholdersAfter()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2
    iget-object v2, p0, Landroidx/paging/PagedStorage;->pages:Ljava/util/List;

    const-string v3, " "

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final trimFromEnd$paging_common(ZIILandroidx/paging/PagedStorage$Callback;)Z
    .locals 5
    .param p4    # Landroidx/paging/PagedStorage$Callback;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0, p2, p3}, Landroidx/paging/PagedStorage;->needsTrimFromEnd(II)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 2
    iget-object v2, p0, Landroidx/paging/PagedStorage;->pages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 3
    invoke-virtual {v2}, Landroidx/paging/PagingSource$LoadResult$Page;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 4
    invoke-virtual {p0}, Landroidx/paging/PagedStorage;->getStorageCount()I

    move-result v3

    sub-int/2addr v3, v2

    iput v3, p0, Landroidx/paging/PagedStorage;->storageCount:I

    goto :goto_0

    .line 5
    :cond_0
    iget p2, p0, Landroidx/paging/PagedStorage;->lastLoadAroundLocalIndex:I

    invoke-virtual {p0}, Landroidx/paging/PagedStorage;->getStorageCount()I

    move-result p3

    sub-int/2addr p3, v3

    invoke-static {p2, p3}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p2

    iput p2, p0, Landroidx/paging/PagedStorage;->lastLoadAroundLocalIndex:I

    if-lez v1, :cond_2

    .line 6
    invoke-virtual {p0}, Landroidx/paging/PagedStorage;->getPlaceholdersBefore()I

    move-result p2

    invoke-virtual {p0}, Landroidx/paging/PagedStorage;->getStorageCount()I

    move-result p3

    add-int/2addr p2, p3

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p0}, Landroidx/paging/PagedStorage;->getPlaceholdersAfter()I

    move-result p1

    add-int/2addr p1, v1

    iput p1, p0, Landroidx/paging/PagedStorage;->placeholdersAfter:I

    .line 8
    invoke-interface {p4, p2, v1}, Landroidx/paging/PagedStorage$Callback;->onPagesSwappedToPlaceholder(II)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-interface {p4, p2, v1}, Landroidx/paging/PagedStorage$Callback;->onPagesRemoved(II)V

    :cond_2
    :goto_1
    if-lez v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public final trimFromFront$paging_common(ZIILandroidx/paging/PagedStorage$Callback;)Z
    .locals 4
    .param p4    # Landroidx/paging/PagedStorage$Callback;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0, p2, p3}, Landroidx/paging/PagedStorage;->needsTrimFromFront(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    iget-object v2, p0, Landroidx/paging/PagedStorage;->pages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 3
    invoke-virtual {v2}, Landroidx/paging/PagingSource$LoadResult$Page;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 4
    invoke-virtual {p0}, Landroidx/paging/PagedStorage;->getStorageCount()I

    move-result v3

    sub-int/2addr v3, v2

    iput v3, p0, Landroidx/paging/PagedStorage;->storageCount:I

    goto :goto_0

    .line 5
    :cond_0
    iget p2, p0, Landroidx/paging/PagedStorage;->lastLoadAroundLocalIndex:I

    sub-int/2addr p2, v1

    invoke-static {p2, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p2

    iput p2, p0, Landroidx/paging/PagedStorage;->lastLoadAroundLocalIndex:I

    if-lez v1, :cond_2

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0}, Landroidx/paging/PagedStorage;->getPlaceholdersBefore()I

    move-result p1

    .line 7
    invoke-virtual {p0}, Landroidx/paging/PagedStorage;->getPlaceholdersBefore()I

    move-result p2

    add-int/2addr p2, v1

    iput p2, p0, Landroidx/paging/PagedStorage;->placeholdersBefore:I

    .line 8
    invoke-interface {p4, p1, v1}, Landroidx/paging/PagedStorage$Callback;->onPagesSwappedToPlaceholder(II)V

    goto :goto_1

    .line 9
    :cond_1
    iget p1, p0, Landroidx/paging/PagedStorage;->positionOffset:I

    add-int/2addr p1, v1

    iput p1, p0, Landroidx/paging/PagedStorage;->positionOffset:I

    .line 10
    invoke-virtual {p0}, Landroidx/paging/PagedStorage;->getPlaceholdersBefore()I

    move-result p1

    invoke-interface {p4, p1, v1}, Landroidx/paging/PagedStorage$Callback;->onPagesRemoved(II)V

    :cond_2
    :goto_1
    if-lez v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method
