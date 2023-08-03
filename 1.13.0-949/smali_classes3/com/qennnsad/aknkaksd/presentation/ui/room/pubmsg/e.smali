.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomPublicMsg;

.field public final synthetic b:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomPublicMsg;Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/e;->a:Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomPublicMsg;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/e;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/e;->a:Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomPublicMsg;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/e;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f;

    invoke-static {v0, v1, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f;->m(Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomPublicMsg;Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f;Landroid/view/View;)V

    return-void
.end method
