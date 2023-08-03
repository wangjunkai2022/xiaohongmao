.class public final synthetic Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;

.field public final synthetic b:Ljava/lang/Throwable;

.field public final synthetic c:Lokhttp3/Response;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;Ljava/lang/Throwable;Lokhttp3/Response;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/f;->a:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/f;->b:Ljava/lang/Throwable;

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/f;->c:Lokhttp3/Response;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/f;->a:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/f;->b:Ljava/lang/Throwable;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/f;->c:Lokhttp3/Response;

    invoke-static {v0, v1, v2}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;->a(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;Ljava/lang/Throwable;Lokhttp3/Response;)V

    return-void
.end method
