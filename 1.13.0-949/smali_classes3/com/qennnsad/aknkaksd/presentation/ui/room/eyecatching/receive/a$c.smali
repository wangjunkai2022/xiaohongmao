.class final Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$c;
.super Lkotlin/jvm/internal/Lambda;
.source "ReceivedPinMessageAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->m(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$b;I)V
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
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$c;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$c;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->d(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;)I

    move-result v0

    const/4 v1, -0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$c;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;

    invoke-static {p1, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->j(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;I)V

    .line 3
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$c;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$c;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->d(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;)I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$c;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->d(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$c;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->j(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;I)V

    .line 6
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$c;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$c;->a(I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
