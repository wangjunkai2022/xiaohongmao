.class final Lcom/giphy/sdk/ui/universallist/a$a$a;
.super Lkotlin/jvm/internal/Lambda;
.source "DynamicTextViewHolder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/giphy/sdk/ui/universallist/a$a;->a(Z)Lkotlin/jvm/functions/Function2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroid/view/ViewGroup;",
        "Lcom/giphy/sdk/ui/universallist/e$a;",
        "Lcom/giphy/sdk/ui/universallist/a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0001\u001a\u00020\u00002\n\u0010\u0004\u001a\u00060\u0002R\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "Landroid/view/ViewGroup;",
        "parent",
        "Lcom/giphy/sdk/ui/universallist/e$a;",
        "Lcom/giphy/sdk/ui/universallist/e;",
        "adapterHelper",
        "Lcom/giphy/sdk/ui/universallist/a;",
        "a",
        "(Landroid/view/ViewGroup;Lcom/giphy/sdk/ui/universallist/e$a;)Lcom/giphy/sdk/ui/universallist/a;"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/giphy/sdk/ui/universallist/a$a$a;->a:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;Lcom/giphy/sdk/ui/universallist/e$a;)Lcom/giphy/sdk/ui/universallist/a;
    .locals 6
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/giphy/sdk/ui/universallist/e$a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, p1, v1}, Lh2/c;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lh2/c;

    move-result-object v0

    const-string v1, "GphDynamicTextItemBindin\u2026  false\n                )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, v0, Lh2/c;->d:Landroid/widget/ImageView;

    sget v2, Lcom/giphy/sdk/ui/p$h;->y2:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 4
    iget-object v1, v0, Lh2/c;->b:Landroid/view/View;

    const-string v2, "dynamicTextView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 5
    iget-boolean v3, p0, Lcom/giphy/sdk/ui/universallist/a$a$a;->a:Z

    const/16 v4, 0x8

    const-string v5, "moreByYouBack"

    if-eqz v3, :cond_1

    .line 6
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    new-array v4, v4, [F

    .line 7
    fill-array-data v4, :array_0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 8
    invoke-virtual {p2}, Lcom/giphy/sdk/ui/universallist/e$a;->e()Lcom/giphy/sdk/ui/GPHSettings;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 9
    invoke-virtual {v4}, Lcom/giphy/sdk/ui/GPHSettings;->getTheme()Lcom/giphy/sdk/ui/themes/GPHTheme;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/giphy/sdk/ui/themes/GPHTheme;->getThemeResources$giphy_ui_2_1_9_release(Landroid/content/Context;)Li2/e;

    move-result-object p1

    invoke-virtual {p1}, Li2/e;->i()I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 10
    :cond_0
    iget-object p1, v0, Lh2/c;->e:Landroid/widget/LinearLayout;

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string p1, "H,2:2"

    .line 11
    iput-object p1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, v0, Lh2/c;->e:Landroid/widget/LinearLayout;

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string p1, "H,3:2"

    .line 13
    iput-object p1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 14
    :goto_0
    iget-object p1, v0, Lh2/c;->b:Landroid/view/View;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    new-instance p1, Lcom/giphy/sdk/ui/universallist/a;

    .line 16
    invoke-virtual {v0}, Lh2/c;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p1, v0, p2}, Lcom/giphy/sdk/ui/universallist/a;-><init>(Landroid/view/View;Lcom/giphy/sdk/ui/universallist/e$a;)V

    return-object p1

    nop

    :array_0
    .array-data 4
        0x42700000    # 60.0f
        0x42700000    # 60.0f
        0x42700000    # 60.0f
        0x42700000    # 60.0f
        0x42700000    # 60.0f
        0x42700000    # 60.0f
        0x42700000    # 60.0f
        0x42700000    # 60.0f
    .end array-data
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/ViewGroup;

    check-cast p2, Lcom/giphy/sdk/ui/universallist/e$a;

    invoke-virtual {p0, p1, p2}, Lcom/giphy/sdk/ui/universallist/a$a$a;->a(Landroid/view/ViewGroup;Lcom/giphy/sdk/ui/universallist/e$a;)Lcom/giphy/sdk/ui/universallist/a;

    move-result-object p1

    return-object p1
.end method
