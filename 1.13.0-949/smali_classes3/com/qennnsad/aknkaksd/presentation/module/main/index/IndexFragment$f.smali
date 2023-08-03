.class public final Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment$f;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "IndexFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment;->L0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment$f",
        "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
        "",
        "position",
        "",
        "onPageSelected",
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
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment;

.field final synthetic b:Le5/t0;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment;Le5/t0;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment$f;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment$f;->b:Le5/t0;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment;Le5/t0;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment$f;->b(Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment;Le5/t0;)V

    return-void
.end method

.method private static final b(Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment;Le5/t0;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_with"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->b0()Lg5/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/l;->u(Landroid/app/Activity;Lg5/a;)V

    .line 2
    iget-object p1, p1, Le5/t0;->j:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment;->F0()Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexViewModel;->v()I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment$f;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment;->F0()Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexViewModel;->s()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/module/main/index/a;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    sget-object v1, Lcom/qennnsad/aknkaksd/presentation/module/main/index/d;->c:Lcom/qennnsad/aknkaksd/presentation/module/main/index/d;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment$f;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment$f;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment$f;->b:Le5/t0;

    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/module/main/index/n;

    invoke-direct {v3, v1, v2}, Lcom/qennnsad/aknkaksd/presentation/module/main/index/n;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment;Le5/t0;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v3, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment$f;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment;

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment;->F0()Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexViewModel;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexViewModel;->x(I)V

    :goto_1
    if-eqz v0, :cond_2

    .line 6
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment$f;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment;

    .line 7
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->Z()Lx4/a;

    move-result-object v1

    .line 8
    sget-object v2, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_MAIN_PAGE_CATEGORY_CHANGED:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 9
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/index/a;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    .line 10
    invoke-virtual {v1, v2, v3}, Lx4/a;->d(Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;[Ljava/lang/String;)V

    :cond_2
    return-void
.end method
