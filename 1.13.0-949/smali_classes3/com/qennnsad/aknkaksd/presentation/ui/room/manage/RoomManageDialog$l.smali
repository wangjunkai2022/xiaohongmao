.class final Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$l;
.super Lkotlin/jvm/internal/Lambda;
.source "RoomManageDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->q0(Landroid/app/Dialog;Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;Landroid/content/DialogInterface;)V
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
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;

.field final synthetic d:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/widget/EditText;Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$l;->a:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$l;->b:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$l;->c:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;

    iput-object p4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$l;->d:Landroid/app/Dialog;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$l;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$l;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$l;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v2, :cond_1

    const-string v0, "\u8bf7\u8f93\u5165\u65f6\u95f4"

    .line 5
    invoke-static {v0, v4, v5, v6}, Lcom/qennnsad/aknkaksd/util/toast/a;->n(Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    .line 6
    :cond_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    const-string v0, "\u8bf7\u8f93\u5165\u539f\u56e0"

    .line 7
    invoke-static {v0, v4, v5, v6}, Lcom/qennnsad/aknkaksd/util/toast/a;->n(Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    .line 8
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    .line 9
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$l;->c:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->a0(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;)Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/o;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v2, "presenter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v6, v2

    :goto_2
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$l;->c:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->b0(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$l;->c:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;

    invoke-static {v3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->c0(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v2, v3, v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/o;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$l;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 11
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$l;->c:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
