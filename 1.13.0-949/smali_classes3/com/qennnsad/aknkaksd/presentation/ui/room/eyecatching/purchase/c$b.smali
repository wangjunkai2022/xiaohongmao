.class final Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/c$b;
.super Lkotlin/jvm/internal/Lambda;
.source "PurchaseItemAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/c;->h(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/c$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "",
        "it",
        "",
        "a",
        "(I)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/c;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/c;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/c$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/c;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/c$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/c;

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/c;->f(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/c;I)V

    .line 2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/c$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/c;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/c$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/c;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/c;->d(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/c;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/c$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/c;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/c;->e(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/c;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/c$b;->a(I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
