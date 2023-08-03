.class public final synthetic Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/c;->a:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;

    iput p2, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/c;->b:I

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/c;->a:Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/c;->b:I

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/c;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;->c(Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b$b;ILjava/lang/String;)V

    return-void
.end method
