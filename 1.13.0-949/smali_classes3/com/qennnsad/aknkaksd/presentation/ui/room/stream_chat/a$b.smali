.class final Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a$b;
.super Lkotlin/jvm/internal/Lambda;
.source "DepositOptionsAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a;->g(Landroid/view/ViewGroup;I)Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a$a;
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
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a;

.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a$a;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a;Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a$b;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a$b;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a$b;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a$a;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a;->d(Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a;I)Lcom/qennnsad/aknkaksd/data/bean/DepositOption;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a;->e(Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a;)Lkotlin/jvm/functions/Function1;

    move-result-object v1

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
