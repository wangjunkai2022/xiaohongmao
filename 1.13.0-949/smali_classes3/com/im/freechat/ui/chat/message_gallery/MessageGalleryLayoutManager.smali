.class public final Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "MessageGalleryLayoutManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMessageGalleryLayoutManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MessageGalleryLayoutManager.kt\ncom/im/freechat/ui/chat/message_gallery/MessageGalleryLayoutManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,111:1\n1#2:112\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u000e\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0012\u0010\u0006\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J$\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\n\u0010\u000b\u001a\u00060\tR\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\r\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u0004H\u0014R\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0013\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0010\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryLayoutManager;",
        "Landroidx/recyclerview/widget/LinearLayoutManager;",
        "",
        "k",
        "Landroidx/recyclerview/widget/RecyclerView$State;",
        "state",
        "onLayoutCompleted",
        "",
        "dx",
        "Landroidx/recyclerview/widget/RecyclerView$Recycler;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recycler",
        "scrollHorizontallyBy",
        "getExtraLayoutSpace",
        "",
        "a",
        "F",
        "minScaleDistanceFactor",
        "b",
        "scaleDownBy",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;FF)V",
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
.field private final a:F

.field private final b:F


# direct methods
.method public constructor <init>(Landroid/content/Context;FF)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 3
    iput p2, p0, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryLayoutManager;->a:F

    .line 4
    iput p3, p0, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryLayoutManager;->b:F

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;FFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/high16 p2, 0x3fc00000    # 1.5f

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const p3, 0x3eb33333    # 0.35f

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryLayoutManager;-><init>(Landroid/content/Context;FF)V

    return-void
.end method

.method private final k()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 2
    iget v2, p0, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryLayoutManager;->a:F

    mul-float v2, v2, v0

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v3, :cond_3

    .line 4
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    div-float/2addr v8, v1

    sub-float v9, v8, v0

    .line 6
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    div-float/2addr v9, v2

    const/high16 v10, 0x3f800000    # 1.0f

    .line 7
    invoke-static {v9, v10}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v9

    .line 8
    iget v11, p0, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryLayoutManager;->b:F

    mul-float v11, v11, v9

    sub-float/2addr v10, v11

    .line 9
    invoke-virtual {v7, v10}, Landroid/view/View;->setScaleX(F)V

    .line 10
    invoke-virtual {v7, v10}, Landroid/view/View;->setScaleY(F)V

    const/4 v9, 0x1

    cmpl-float v8, v8, v0

    if-lez v8, :cond_0

    const/4 v8, -0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x1

    .line 11
    :goto_1
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v11

    mul-int v8, v8, v11

    int-to-float v8, v8

    int-to-float v11, v9

    sub-float/2addr v11, v10

    mul-float v8, v8, v11

    div-float/2addr v8, v1

    add-float/2addr v6, v8

    .line 12
    invoke-virtual {v7, v6}, Landroid/view/View;->setTranslationX(F)V

    const/4 v6, 0x2

    cmpl-float v7, v8, v4

    if-lez v7, :cond_1

    if-lt v5, v9, :cond_1

    add-int/lit8 v7, v5, -0x1

    .line 13
    invoke-virtual {p0, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Landroid/view/View;->getTranslationX()F

    move-result v9

    int-to-float v6, v6

    mul-float v6, v6, v8

    add-float/2addr v9, v6

    invoke-virtual {v7, v9}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_2

    :cond_1
    cmpg-float v7, v8, v4

    if-gez v7, :cond_2

    int-to-float v6, v6

    mul-float v6, v6, v8

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v6, 0x0

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method protected getExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/4 v0, 0x1

    int-to-float v0, v0

    iget v1, p0, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryLayoutManager;->b:F

    sub-float/2addr v0, v1

    div-float/2addr p1, v0

    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    return p1
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Lm8/h;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p0}, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryLayoutManager;->k()V

    return-void
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "recycler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p2

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryLayoutManager;->k()V

    :cond_0
    return p1
.end method
