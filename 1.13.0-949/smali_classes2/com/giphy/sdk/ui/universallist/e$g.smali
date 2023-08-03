.class final Lcom/giphy/sdk/ui/universallist/e$g;
.super Ljava/lang/Object;
.source "SmartGridAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/giphy/sdk/ui/universallist/e;->q(Landroid/view/ViewGroup;I)Lcom/giphy/sdk/ui/universallist/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/giphy/sdk/ui/universallist/e;

.field final synthetic b:Lcom/giphy/sdk/ui/universallist/j;


# direct methods
.method constructor <init>(Lcom/giphy/sdk/ui/universallist/e;Lcom/giphy/sdk/ui/universallist/j;)V
    .locals 0

    iput-object p1, p0, Lcom/giphy/sdk/ui/universallist/e$g;->a:Lcom/giphy/sdk/ui/universallist/e;

    iput-object p2, p0, Lcom/giphy/sdk/ui/universallist/e$g;->b:Lcom/giphy/sdk/ui/universallist/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/giphy/sdk/ui/universallist/e$g;->b:Lcom/giphy/sdk/ui/universallist/j;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/e$g;->a:Lcom/giphy/sdk/ui/universallist/e;

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/universallist/e;->j()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    iget-object v1, p0, Lcom/giphy/sdk/ui/universallist/e$g;->a:Lcom/giphy/sdk/ui/universallist/e;

    invoke-static {v1, p1}, Lcom/giphy/sdk/ui/universallist/e;->d(Lcom/giphy/sdk/ui/universallist/e;I)Lcom/giphy/sdk/ui/universallist/g;

    move-result-object v1

    const-string v2, "getItem(position)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
