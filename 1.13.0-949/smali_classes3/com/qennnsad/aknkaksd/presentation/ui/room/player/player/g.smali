.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;

.field public final synthetic b:Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/g;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/g;->b:Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/g;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/g;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/g;->b:Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/g;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->P3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
