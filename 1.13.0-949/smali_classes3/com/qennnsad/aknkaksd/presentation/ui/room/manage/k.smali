.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/k;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic a:Landroid/app/Dialog;

.field public final synthetic b:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Dialog;Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/k;->a:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/k;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/k;->a:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/k;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;

    invoke-static {v0, v1, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->Y(Landroid/app/Dialog;Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;Landroid/content/DialogInterface;)V

    return-void
.end method
