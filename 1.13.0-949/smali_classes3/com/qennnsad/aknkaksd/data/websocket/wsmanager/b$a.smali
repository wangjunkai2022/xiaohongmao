.class Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$a;
.super Ljava/lang/Object;
.source "WsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$a;->a:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$a;->a:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->i(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;)Ld5/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$a;->a:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->i(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;)Ld5/a;

    move-result-object v0

    invoke-virtual {v0}, Ld5/a;->g()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$a;->a:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->j(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;)V

    return-void
.end method
