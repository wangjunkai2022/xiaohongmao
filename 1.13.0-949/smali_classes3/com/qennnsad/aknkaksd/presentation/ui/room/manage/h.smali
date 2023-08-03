.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/i;

.field public final synthetic b:Lcom/qennnsad/aknkaksd/data/bean/room/RoomAdminInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/i;Lcom/qennnsad/aknkaksd/data/bean/room/RoomAdminInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/h;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/i;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/h;->b:Lcom/qennnsad/aknkaksd/data/bean/room/RoomAdminInfo;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/h;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/i;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/h;->b:Lcom/qennnsad/aknkaksd/data/bean/room/RoomAdminInfo;

    invoke-static {v0, v1, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/i;->c(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/i;Lcom/qennnsad/aknkaksd/data/bean/room/RoomAdminInfo;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
