.class final Lcom/giphy/sdk/ui/views/f$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "GPHSuggestionsView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/giphy/sdk/ui/views/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0006\u0010\u0003\u001a\u00020\u0002R\"\u0010\u000b\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\"\u0010\u0012\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\"\u0010\u0015\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\r\u001a\u0004\u0008\u0013\u0010\u000f\"\u0004\u0008\u0014\u0010\u0011R\"\u0010\u001c\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0017\u0010\u0019\"\u0004\u0008\u001a\u0010\u001b\u00a8\u0006!"
    }
    d2 = {
        "Lcom/giphy/sdk/ui/views/f$a;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "",
        "b",
        "Landroid/widget/TextView;",
        "a",
        "Landroid/widget/TextView;",
        "f",
        "()Landroid/widget/TextView;",
        "j",
        "(Landroid/widget/TextView;)V",
        "text",
        "Landroid/widget/ImageView;",
        "Landroid/widget/ImageView;",
        "c",
        "()Landroid/widget/ImageView;",
        "g",
        "(Landroid/widget/ImageView;)V",
        "leftImage",
        "e",
        "i",
        "rightImage",
        "Landroid/graphics/drawable/GradientDrawable;",
        "d",
        "Landroid/graphics/drawable/GradientDrawable;",
        "()Landroid/graphics/drawable/GradientDrawable;",
        "h",
        "(Landroid/graphics/drawable/GradientDrawable;)V",
        "regularGradientDrawable",
        "Landroid/view/View;",
        "view",
        "<init>",
        "(Lcom/giphy/sdk/ui/views/f;Landroid/view/View;)V",
        "giphy-ui-2.1.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private b:Landroid/widget/ImageView;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private c:Landroid/widget/ImageView;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private d:Landroid/graphics/drawable/GradientDrawable;
    .annotation build Lm8/g;
    .end annotation
.end field

.field final synthetic e:Lcom/giphy/sdk/ui/views/f;


# direct methods
.method public constructor <init>(Lcom/giphy/sdk/ui/views/f;Landroid/view/View;)V
    .locals 1
    .param p1    # Lcom/giphy/sdk/ui/views/f;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/giphy/sdk/ui/views/f$a;->e:Lcom/giphy/sdk/ui/views/f;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    sget p1, Lcom/giphy/sdk/ui/p$j;->T5:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "view.findViewById(R.id.suggestionText)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/f$a;->a:Landroid/widget/TextView;

    .line 3
    sget p1, Lcom/giphy/sdk/ui/p$j;->R5:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "view.findViewById(R.id.suggestionLeftImage)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/f$a;->b:Landroid/widget/ImageView;

    .line 4
    sget p1, Lcom/giphy/sdk/ui/p$j;->S5:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "view.findViewById(R.id.suggestionRightImage)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/f$a;->c:Landroid/widget/ImageView;

    .line 5
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/f$a;->d:Landroid/graphics/drawable/GradientDrawable;

    .line 6
    sget-object p2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    .line 7
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/f$a;->d:Landroid/graphics/drawable/GradientDrawable;

    const/16 p2, 0x8

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 8
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/giphy/sdk/ui/views/f$a;->d:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

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


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/f$a;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/f$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/f$a;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 4
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/f$a;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 5
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/f$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    return-void
.end method

.method public final c()Landroid/widget/ImageView;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/f$a;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final d()Landroid/graphics/drawable/GradientDrawable;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/f$a;->d:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method public final e()Landroid/widget/ImageView;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/f$a;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final f()Landroid/widget/TextView;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/f$a;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method public final g(Landroid/widget/ImageView;)V
    .locals 1
    .param p1    # Landroid/widget/ImageView;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/f$a;->b:Landroid/widget/ImageView;

    return-void
.end method

.method public final h(Landroid/graphics/drawable/GradientDrawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/GradientDrawable;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/f$a;->d:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method

.method public final i(Landroid/widget/ImageView;)V
    .locals 1
    .param p1    # Landroid/widget/ImageView;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/f$a;->c:Landroid/widget/ImageView;

    return-void
.end method

.method public final j(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/f$a;->a:Landroid/widget/TextView;

    return-void
.end method
