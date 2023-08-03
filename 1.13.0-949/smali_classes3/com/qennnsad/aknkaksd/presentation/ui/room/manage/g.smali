.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/i;

.field public final synthetic b:Lcom/qennnsad/aknkaksd/data/bean/room/RoomAdminInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/i;Lcom/qennnsad/aknkaksd/data/bean/room/RoomAdminInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/g;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/i;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/g;->b:Lcom/qennnsad/aknkaksd/data/bean/room/RoomAdminInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/g;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/i;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/g;->b:Lcom/qennnsad/aknkaksd/data/bean/room/RoomAdminInfo;

    invoke-static {v0, v1, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/i;->b(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/i;Lcom/qennnsad/aknkaksd/data/bean/room/RoomAdminInfo;Landroid/view/View;)V

    return-void
.end method
