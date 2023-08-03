.class public final synthetic Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lokio/ByteString;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;Ljava/lang/String;Lokio/ByteString;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/e;->a:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/e;->c:Lokio/ByteString;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/e;->a:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/e;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/e;->c:Lokio/ByteString;

    invoke-static {v0, v1, v2}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;->b(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;Ljava/lang/String;Lokio/ByteString;)V

    return-void
.end method
