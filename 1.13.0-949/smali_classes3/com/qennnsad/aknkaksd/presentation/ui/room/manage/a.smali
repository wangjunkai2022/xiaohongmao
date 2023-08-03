.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/qennnsad/aknkaksd/data/websocket/i;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/RemoveAdminerBean;

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;->M(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;Lcom/qennnsad/aknkaksd/data/bean/websocket/RemoveAdminerBean;)V

    return-void
.end method
