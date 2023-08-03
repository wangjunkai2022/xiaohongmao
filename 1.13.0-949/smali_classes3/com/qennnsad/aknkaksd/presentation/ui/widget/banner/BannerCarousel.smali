.class public final Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;
.super Landroid/widget/FrameLayout;
.source "BannerCarousel.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBannerCarousel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BannerCarousel.kt\ncom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,63:1\n254#2,2:64\n254#2,2:67\n1#3:66\n*S KotlinDebug\n*F\n+ 1 BannerCarousel.kt\ncom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel\n*L\n35#1:64,2\n49#1:67,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u001e\u0012\u0008\u0008\u0002\u0010!\u001a\u00020 \u00a2\u0006\u0004\u0008\"\u0010#J\u000c\u0010\u0004\u001a\u00020\u0003*\u00020\u0002H\u0002J^\u0010\u0014\u001a\u00020\u00032\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n26\u0010\u0013\u001a2\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0010\u0012\u0013\u0012\u00110\u0011\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u00030\u000cR\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u001a\u00a8\u0006$"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;",
        "Landroid/widget/FrameLayout;",
        "Landroidx/viewpager2/widget/ViewPager2;",
        "",
        "d",
        "",
        "Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;",
        "banners",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "sourceFactory",
        "Lx4/a;",
        "analytics",
        "Lkotlin/Function2;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "url",
        "Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;",
        "target",
        "onBannerClick",
        "c",
        "Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/b;",
        "b",
        "Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/b;",
        "bannerAdapter",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Runnable;",
        "swipeAction",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
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
.field private final a:Le5/l3;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private b:Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/b;

.field private c:Ljava/lang/Runnable;
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

    invoke-direct/range {v1 .. v6}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-static {p1, p0, p2}, Le5/l3;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Le5/l3;

    move-result-object p1

    const-string p2, "inflate(LayoutInflater.from(context), this, true)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;->a:Le5/l3;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Landroidx/viewpager2/widget/ViewPager2;Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;->e(Landroidx/viewpager2/widget/ViewPager2;Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;)V

    return-void
.end method

.method public static final synthetic b(Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;->d(Landroidx/viewpager2/widget/ViewPager2;)V

    return-void
.end method

.method private final d(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;->c:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/c;

    invoke-direct {v0, p1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/c;-><init>(Landroidx/viewpager2/widget/ViewPager2;Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;->c:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    .line 3
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final e(Landroidx/viewpager2/widget/ViewPager2;Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;)V
    .locals 1

    const-string v0, "$this_scheduleSwipe"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    iget-object p1, p1, Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;->b:Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/b;

    if-nez p1, :cond_1

    const-string p1, "bannerAdapter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_1
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/b;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ge v0, p1, :cond_2

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/util/List;Lcom/qennnsad/aknkaksd/data/repository/m;Lx4/a;Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lcom/qennnsad/aknkaksd/data/repository/m;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lx4/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;",
            ">;",
            "Lcom/qennnsad/aknkaksd/data/repository/m;",
            "Lx4/a;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "sourceFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onBannerClick"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel$b;

    invoke-direct {v1, p3, p4}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel$b;-><init>(Lx4/a;Lkotlin/jvm/functions/Function2;)V

    .line 4
    new-instance p3, Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/b;

    const/4 p4, 0x1

    invoke-direct {p3, p2, v1, p4}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/b;-><init>(Lcom/qennnsad/aknkaksd/data/repository/m;Lkotlin/jvm/functions/Function2;Z)V

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;->b:Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/b;

    .line 5
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;->a:Le5/l3;

    iget-object p2, p2, Le5/l3;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 6
    invoke-virtual {p2, p3}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const-string p3, ""

    .line 7
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    .line 9
    iget-object p4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;->a:Le5/l3;

    iget-object p4, p4, Le5/l3;->c:Lcom/google/android/material/tabs/TabLayout;

    .line 10
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel$a;

    invoke-direct {v1, p0, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;Landroidx/viewpager2/widget/ViewPager2;)V

    invoke-static {p2, p3, p4, v1}, Lcom/qennnsad/aknkaksd/util/s1;->L(Landroidx/viewpager2/widget/ViewPager2;ILcom/google/android/material/tabs/TabLayout;Lkotlin/jvm/functions/Function1;)V

    .line 11
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;->b:Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/b;

    if-nez p2, :cond_1

    const-string p2, "bannerAdapter"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p2

    :goto_0
    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/b;->submitList(Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v0, p1

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    const/16 p1, 0x8

    .line 12
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method
