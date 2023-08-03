.class public final synthetic Lcom/qennnsad/aknkaksd/data/websocket/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ln7/o;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

.field public final synthetic b:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/websocket/e;->a:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/data/websocket/e;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/e;->a:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/websocket/e;->b:Ljava/lang/Class;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->g(Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
