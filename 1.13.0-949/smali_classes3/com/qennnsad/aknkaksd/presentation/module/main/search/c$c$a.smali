.class final Lcom/qennnsad/aknkaksd/presentation/module/main/search/c$c$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SearchUserAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/main/search/c$c;->invoke()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/module/main/search/c;

.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/module/main/search/c$a;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/main/search/c;Lcom/qennnsad/aknkaksd/presentation/module/main/search/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/c$c$a;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/search/c;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/c$c$a;->b:Lcom/qennnsad/aknkaksd/presentation/module/main/search/c$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/c$c$a;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/c$c$a;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/search/c;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/c$c$a;->b:Lcom/qennnsad/aknkaksd/presentation/module/main/search/c$a;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/c;->d(Lcom/qennnsad/aknkaksd/presentation/module/main/search/c;I)Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/c$c$a;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/search/c;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/c$c$a;->b:Lcom/qennnsad/aknkaksd/presentation/module/main/search/c$a;

    .line 3
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;->f()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;->g(Z)V

    .line 4
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method
