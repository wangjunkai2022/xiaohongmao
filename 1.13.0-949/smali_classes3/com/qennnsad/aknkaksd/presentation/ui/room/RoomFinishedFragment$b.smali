.class final Lcom/qennnsad/aknkaksd/presentation/ui/room/RoomFinishedFragment$b;
.super Lkotlin/jvm/internal/Lambda;
.source "RoomFinishedFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/RoomFinishedFragment;->f0()V
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
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/room/RoomFinishedFragment;

.field final synthetic b:Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/RoomFinishedFragment;Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/RoomFinishedFragment$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/RoomFinishedFragment;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/RoomFinishedFragment$b;->b:Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/RoomFinishedFragment$b;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileActivity;->l:Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileActivity$a;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/RoomFinishedFragment$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/RoomFinishedFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/RoomFinishedFragment$b;->b:Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "it.getId()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileActivity$a;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
