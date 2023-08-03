.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/h2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/qennnsad/aknkaksd/data/websocket/i;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/h2;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/h2;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/pk/JoinPkSuccessMsg;

    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->r2(Lcom/qennnsad/aknkaksd/data/bean/pk/JoinPkSuccessMsg;)V

    return-void
.end method
