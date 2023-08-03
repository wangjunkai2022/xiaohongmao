.class public final Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/c$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PurchaseItemAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0012\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\"\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004J\u0016\u0010\u000c\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tR\u0017\u0010\u0012\u001a\u00020\r8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R\u0017\u0010\u0018\u001a\u00020\u00138\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/c$a;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/item/ItemTypeAttrs;",
        "data",
        "Lkotlin/Function1;",
        "",
        "",
        "onSelect",
        "c",
        "",
        "isSelected",
        "isYellowBg",
        "g",
        "Landroid/view/View;",
        "a",
        "Landroid/view/View;",
        "e",
        "()Landroid/view/View;",
        "itemView",
        "Landroid/widget/TextView;",
        "b",
        "Landroid/widget/TextView;",
        "f",
        "()Landroid/widget/TextView;",
        "tvTitle",
        "<init>",
        "(Landroid/view/View;)V",
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
.field private final a:Landroid/view/View;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Landroid/widget/TextView;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/c$a;->a:Landroid/view/View;

    const v0, 0x7f0a0708

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.id.tvTitle)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/c$a;->b:Landroid/widget/TextView;

    return-void
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function1;Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/c$a;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/c$a;->d(Lkotlin/jvm/functions/Function1;Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/c$a;Landroid/view/View;)V

    return-void
.end method

.method private static final d(Lkotlin/jvm/functions/Function1;Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/c$a;Landroid/view/View;)V
    .locals 0

    const-string p2, "$onSelect"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final c(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/item/ItemTypeAttrs;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/item/ItemTypeAttrs;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/item/ItemTypeAttrs;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSelect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/c$a;->a:Landroid/view/View;

    .line 2
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/item/ItemTypeAttrs;->getBgPurchaseResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/b;

    invoke-direct {v1, p2, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/b;-><init>(Lkotlin/jvm/functions/Function1;Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/c$a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/c$a;->b:Landroid/widget/TextView;

    .line 5
    invoke-virtual {p2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lk5/a;->a(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/item/ItemTypeAttrs;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final e()Landroid/view/View;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/c$a;->a:Landroid/view/View;

    return-object v0
.end method

.method public final f()Landroid/widget/TextView;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/c$a;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method public final g(ZZ)V
    .locals 4

    if-eqz p2, :cond_0

    const v0, 0x7f06005b

    goto :goto_0

    :cond_0
    const v0, 0x7f0601ba

    :goto_0
    if-eqz p2, :cond_1

    const p2, 0x7f060230

    goto :goto_1

    :cond_1
    const p2, 0x7f0602f5

    .line 1
    :goto_1
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/c$a;->b:Landroid/widget/TextView;

    .line 2
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    move v0, p2

    .line 3
    :cond_2
    invoke-static {v2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    .line 4
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p1, :cond_3

    .line 5
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    goto :goto_2

    .line 6
    :cond_3
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 7
    :goto_2
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method
