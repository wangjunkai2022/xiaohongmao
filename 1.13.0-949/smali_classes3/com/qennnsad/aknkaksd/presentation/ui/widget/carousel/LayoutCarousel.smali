.class public final Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel;
.super Landroid/widget/FrameLayout;
.source "LayoutCarousel.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLayoutCarousel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LayoutCarousel.kt\ncom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,94:1\n254#2,2:95\n1#3:97\n*S KotlinDebug\n*F\n+ 1 LayoutCarousel.kt\ncom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel\n*L\n31#1:95,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001b\u0012\u0008\u0008\u0002\u0010\u001d\u001a\u00020\t\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0018\u0010\u0006\u001a\u00020\u0005*\u00020\u00022\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0003H\u0002J0\u0010\u000b\u001a\u00020\u0005*\u00020\u00022\n\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u00032\u0016\u0008\u0002\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0008H\u0002J\u0012\u0010\u000c\u001a\u00020\u00052\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0003J\u0006\u0010\r\u001a\u00020\u0005R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0014\u001a\u00020\t8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u00158BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006 "
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel;",
        "Landroid/widget/FrameLayout;",
        "Landroidx/viewpager2/widget/ViewPager2;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "carouselAdapter",
        "",
        "h",
        "adapter",
        "Lkotlin/Function1;",
        "",
        "onPageSelected",
        "j",
        "e",
        "g",
        "Ljava/lang/Runnable;",
        "b",
        "Ljava/lang/Runnable;",
        "swipeAction",
        "getFreezeItem",
        "()I",
        "freezeItem",
        "",
        "f",
        "()Z",
        "isAutoSwipeFreeze",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:Le5/m3;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private b:Ljava/lang/Runnable;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Le5/m3;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Le5/m3;

    move-result-object p1

    const-string p2, "inflate(LayoutInflater.from(context), this, true)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel;->a:Le5/m3;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Landroidx/viewpager2/widget/ViewPager2;Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel;->i(Landroidx/viewpager2/widget/ViewPager2;Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public static final synthetic b(Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel;)I
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel;->getFreezeItem()I

    move-result p0

    return p0
.end method

.method public static final synthetic c(Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel;)Z
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel;->f()Z

    move-result p0

    return p0
.end method

.method public static final synthetic d(Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel;Landroidx/viewpager2/widget/ViewPager2;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel;->h(Landroidx/viewpager2/widget/ViewPager2;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private final f()Z
    .locals 1

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel;->getFreezeItem()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final getFreezeItem()I
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel;->a:Le5/m3;

    iget-object v0, v0, Le5/m3;->b:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.qennnsad.aknkaksd.presentation.ui.room.player.player.SidePanelButtonAdapter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/v1;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/v1;->f()I

    move-result v0

    return v0
.end method

.method private final h(Landroidx/viewpager2/widget/ViewPager2;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/viewpager2/widget/ViewPager2;",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel;->b:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/a;

    invoke-direct {v0, p1, p0, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/a;-><init>(Landroidx/viewpager2/widget/ViewPager2;Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel;->b:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    .line 3
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final i(Landroidx/viewpager2/widget/ViewPager2;Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 8

    const-string v0, "$this_scheduleSwipe"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$carouselAdapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel;->getFreezeItem()I

    move-result p1

    :goto_0
    move v1, p1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ge p1, p2, :cond_2

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 4
    :goto_1
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    sub-int p1, v1, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x96

    int-to-long v2, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v0, p0

    .line 5
    invoke-static/range {v0 .. v7}, Lcom/qennnsad/aknkaksd/util/s1;->r(Landroidx/viewpager2/widget/ViewPager2;IJLandroid/animation/TimeInterpolator;IILjava/lang/Object;)V

    return-void
.end method

.method private final j(Landroidx/viewpager2/widget/ViewPager2;Landroidx/recyclerview/widget/RecyclerView$Adapter;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/viewpager2/widget/ViewPager2;",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel$b;

    invoke-direct {v0, p3}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    const/4 p3, 0x0

    .line 3
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of p3, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p3, :cond_0

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 4
    new-instance p3, Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel$c;

    invoke-direct {p3, p1, p2, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel$c;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel;)V

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_1
    return-void
.end method

.method static synthetic k(Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel;Landroidx/viewpager2/widget/ViewPager2;Landroidx/recyclerview/widget/RecyclerView$Adapter;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel;->j(Landroidx/viewpager2/widget/ViewPager2;Landroidx/recyclerview/widget/RecyclerView$Adapter;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final e(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "carouselAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel;->a:Le5/m3;

    iget-object v0, v0, Le5/m3;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const-string v1, ""

    .line 4
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel$a;

    invoke-direct {v1, p0, v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel;Landroidx/viewpager2/widget/ViewPager2;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-direct {p0, v0, p1, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel;->j(Landroidx/viewpager2/widget/ViewPager2;Landroidx/recyclerview/widget/RecyclerView$Adapter;Lkotlin/jvm/functions/Function1;)V

    .line 5
    invoke-static {v0}, Lcom/qennnsad/aknkaksd/util/s1;->k(Landroidx/viewpager2/widget/ViewPager2;)V

    return-void
.end method

.method public final g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel;->a:Le5/m3;

    iget-object v0, v0, Le5/m3;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->isFakeDragging()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel;->getFreezeItem()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, ""

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "it"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel;->h(Landroidx/viewpager2/widget/ViewPager2;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_2
    return-void
.end method
