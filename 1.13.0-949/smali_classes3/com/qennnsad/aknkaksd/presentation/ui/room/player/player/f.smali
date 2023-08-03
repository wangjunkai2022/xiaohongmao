.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;

.field public final synthetic b:Lcom/qennnsad/aknkaksd/data/bean/websocket/ErrorMsg;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/websocket/ErrorMsg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/f;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/f;->b:Lcom/qennnsad/aknkaksd/data/bean/websocket/ErrorMsg;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/f;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/f;->b:Lcom/qennnsad/aknkaksd/data/bean/websocket/ErrorMsg;

    invoke-static {v0, v1, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->n3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/websocket/ErrorMsg;Landroid/content/DialogInterface;I)V

    return-void
.end method
