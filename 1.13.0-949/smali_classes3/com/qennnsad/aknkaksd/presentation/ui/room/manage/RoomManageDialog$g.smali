.class final Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$g;
.super Lkotlin/jvm/internal/Lambda;
.source "RoomManageDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->k0(Landroid/view/View;)V
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
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$g;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$g;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$g;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->a0(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;)Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/o;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "presenter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$g;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->d0(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;)Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "selectedUser.id"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$g;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->d0(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;)Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->getSay()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, ""

    :cond_1
    invoke-virtual {v0, v1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/o;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$g;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
