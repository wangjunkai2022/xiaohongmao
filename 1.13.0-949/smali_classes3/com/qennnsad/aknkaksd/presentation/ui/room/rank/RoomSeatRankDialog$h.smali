.class final Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankDialog$h;
.super Lkotlin/jvm/internal/Lambda;
.source "RoomSeatRankDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankDialog;->o0()V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRoomSeatRankDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoomSeatRankDialog.kt\ncom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankDialog$initViews$1$7\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,111:1\n254#2,2:112\n*S KotlinDebug\n*F\n+ 1 RoomSeatRankDialog.kt\ncom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankDialog$initViews$1$7\n*L\n89#1:112,2\n*E\n"
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
.field final synthetic a:Le5/n0;

.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankDialog;


# direct methods
.method constructor <init>(Le5/n0;Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankDialog$h;->a:Le5/n0;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankDialog$h;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankDialog;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankDialog$h;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankDialog$h;->a:Le5/n0;

    iget-object v0, v0, Le5/n0;->e:Landroid/widget/TextView;

    const-string v1, "tvEmptyList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankDialog$h;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankDialog;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankDialog;->j0(Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankDialog;)Lcom/qennnsad/aknkaksd/presentation/module/contributors/c;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "adapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v1}, Landroidx/paging/PagingDataAdapter;->snapshot()Landroidx/paging/ItemSnapshotList;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/collections/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    .line 3
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
