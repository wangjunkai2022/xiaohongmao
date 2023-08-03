.class Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b$a;
.super Ljava/lang/Object;
.source "WsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;->onClosing(Lokhttp3/WebSocket;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b$a;->c:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;

    iput p2, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b$a;->a:I

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b$a;->c:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;

    iget-object v0, v0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;->a:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->i(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;)Ld5/a;

    move-result-object v0

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b$a;->a:I

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ld5/a;->b(ILjava/lang/String;)V

    return-void
.end method
