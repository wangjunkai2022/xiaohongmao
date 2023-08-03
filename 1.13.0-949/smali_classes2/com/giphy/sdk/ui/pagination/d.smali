.class public final Lcom/giphy/sdk/ui/pagination/d;
.super Lcom/giphy/sdk/ui/universallist/j;
.source "NetworkStateItemViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/giphy/sdk/ui/pagination/d$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00132\u00020\u0001:\u0001\tB\u001d\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000b\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0012\u0010\t\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016J\u0008\u0010\n\u001a\u00020\u0004H\u0016R\u001c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/giphy/sdk/ui/pagination/d;",
        "Lcom/giphy/sdk/ui/universallist/j;",
        "Lcom/giphy/sdk/ui/pagination/c;",
        "networkState",
        "",
        "h",
        "i",
        "",
        "data",
        "b",
        "d",
        "Lkotlin/Function0;",
        "a",
        "Lkotlin/jvm/functions/Function0;",
        "retryCallback",
        "Landroid/view/View;",
        "view",
        "<init>",
        "(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V",
        "c",
        "giphy-ui-2.1.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final b:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroid/view/ViewGroup;",
            "Lcom/giphy/sdk/ui/universallist/e$a;",
            "Lcom/giphy/sdk/ui/universallist/j;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field public static final c:Lcom/giphy/sdk/ui/pagination/d$b;
    .annotation build Lm8/g;
    .end annotation
.end field


# instance fields
.field private a:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/giphy/sdk/ui/pagination/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/giphy/sdk/ui/pagination/d$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/giphy/sdk/ui/pagination/d;->c:Lcom/giphy/sdk/ui/pagination/d$b;

    sget-object v0, Lcom/giphy/sdk/ui/pagination/d$a;->a:Lcom/giphy/sdk/ui/pagination/d$a;

    sput-object v0, Lcom/giphy/sdk/ui/pagination/d;->b:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "retryCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/giphy/sdk/ui/universallist/j;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/giphy/sdk/ui/pagination/d;->a:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static final synthetic e()Lkotlin/jvm/functions/Function2;
    .locals 1

    sget-object v0, Lcom/giphy/sdk/ui/pagination/d;->b:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public static final synthetic f(Lcom/giphy/sdk/ui/pagination/d;)Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/giphy/sdk/ui/pagination/d;->a:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic g(Lcom/giphy/sdk/ui/pagination/d;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/giphy/sdk/ui/pagination/d;->a:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method private final h(Lcom/giphy/sdk/ui/pagination/c;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Lh2/h;->a(Landroid/view/View;)Lh2/h;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lh2/h;->c:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "loadingAnimation"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/giphy/sdk/ui/pagination/d;->c:Lcom/giphy/sdk/ui/pagination/d$b;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/giphy/sdk/ui/pagination/c;->k()Lcom/giphy/sdk/ui/pagination/Status;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    sget-object v4, Lcom/giphy/sdk/ui/pagination/Status;->RUNNING:Lcom/giphy/sdk/ui/pagination/Status;

    if-eq v3, v4, :cond_3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/pagination/c;->k()Lcom/giphy/sdk/ui/pagination/Status;

    move-result-object v2

    :cond_1
    sget-object p1, Lcom/giphy/sdk/ui/pagination/Status;->RUNNING_INITIAL:Lcom/giphy/sdk/ui/pagination/Status;

    if-ne v2, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x1

    .line 4
    :goto_2
    invoke-virtual {v1, p1}, Lcom/giphy/sdk/ui/pagination/d$b;->b(Z)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/giphy/sdk/ui/pagination/c;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lcom/giphy/sdk/ui/pagination/c;

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/pagination/c;->i()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iput-object v0, p0, Lcom/giphy/sdk/ui/pagination/d;->a:Lkotlin/jvm/functions/Function0;

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/giphy/sdk/ui/pagination/d;->i(Lcom/giphy/sdk/ui/pagination/c;)V

    :cond_1
    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public final i(Lcom/giphy/sdk/ui/pagination/c;)V
    .locals 9
    .param p1    # Lcom/giphy/sdk/ui/pagination/c;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "networkState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "itemView"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move-object v0, v4

    :cond_0
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    .line 3
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v5, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-nez v5, :cond_2

    move-object v0, v4

    :cond_2
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "Resources.getSystem()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 4
    :cond_3
    invoke-direct {p0, p1}, Lcom/giphy/sdk/ui/pagination/d;->h(Lcom/giphy/sdk/ui/pagination/c;)V

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Lh2/h;->a(Landroid/view/View;)Lh2/h;

    move-result-object v0

    .line 6
    iget-object v5, v0, Lh2/h;->d:Landroid/widget/Button;

    const-string v6, "retryButton"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lcom/giphy/sdk/ui/pagination/d;->c:Lcom/giphy/sdk/ui/pagination/d$b;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/pagination/c;->k()Lcom/giphy/sdk/ui/pagination/Status;

    move-result-object v7

    goto :goto_0

    :cond_4
    move-object v7, v4

    :goto_0
    sget-object v8, Lcom/giphy/sdk/ui/pagination/Status;->FAILED:Lcom/giphy/sdk/ui/pagination/Status;

    if-eq v7, v8, :cond_7

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/pagination/c;->k()Lcom/giphy/sdk/ui/pagination/Status;

    move-result-object v7

    goto :goto_1

    :cond_5
    move-object v7, v4

    :goto_1
    sget-object v8, Lcom/giphy/sdk/ui/pagination/Status;->FAILED_INITIAL:Lcom/giphy/sdk/ui/pagination/Status;

    if-ne v7, v8, :cond_6

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v7, 0x1

    :goto_3
    invoke-virtual {v6, v7}, Lcom/giphy/sdk/ui/pagination/d$b;->b(Z)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 7
    iget-object v5, v0, Lh2/h;->b:Landroid/widget/TextView;

    const-string v7, "errorMessage"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/pagination/c;->j()Ljava/lang/String;

    move-result-object v4

    :cond_8
    if-eqz v4, :cond_9

    const/4 v1, 0x1

    :cond_9
    invoke-virtual {v6, v1}, Lcom/giphy/sdk/ui/pagination/d$b;->b(Z)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object v1, v0, Lh2/h;->b:Landroid/widget/TextView;

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/giphy/sdk/ui/p$o;->W0:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, v0, Lh2/h;->d:Landroid/widget/Button;

    new-instance v1, Lcom/giphy/sdk/ui/pagination/d$c;

    invoke-direct {v1, p0, p1}, Lcom/giphy/sdk/ui/pagination/d$c;-><init>(Lcom/giphy/sdk/ui/pagination/d;Lcom/giphy/sdk/ui/pagination/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
