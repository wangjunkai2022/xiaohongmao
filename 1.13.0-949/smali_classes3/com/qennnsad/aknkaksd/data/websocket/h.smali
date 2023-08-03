.class public final Lcom/qennnsad/aknkaksd/data/websocket/h;
.super Ljava/lang/Object;
.source "WebSocketService_MembersInjector.java"

# interfaces
.implements Ld6/g;


# annotations
.annotation build Ldagger/internal/e;
.end annotation

.annotation build Ldagger/internal/r;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld6/g<",
        "Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lg5/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/data/websocket/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu7/c;Lu7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lg5/a;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/data/websocket/j;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/websocket/h;->a:Lu7/c;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/data/websocket/h;->b:Lu7/c;

    return-void
.end method

.method public static b(Lu7/c;Lu7/c;)Ld6/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lg5/a;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/data/websocket/j;",
            ">;)",
            "Ld6/g<",
            "Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/qennnsad/aknkaksd/data/websocket/h;

    invoke-direct {v0, p0, p1}, Lcom/qennnsad/aknkaksd/data/websocket/h;-><init>(Lu7/c;Lu7/c;)V

    return-object v0
.end method

.method public static c(Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;Lg5/a;)V
    .locals 0
    .annotation build Ldagger/internal/j;
        value = "com.qennnsad.aknkaksd.data.websocket.WebSocketService.localDataManager"
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->d:Lg5/a;

    return-void
.end method

.method public static e(Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;Lcom/qennnsad/aknkaksd/data/websocket/j;)V
    .locals 0
    .annotation build Ldagger/internal/j;
        value = "com.qennnsad.aknkaksd.data.websocket.WebSocketService.wsObjectPool"
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->e:Lcom/qennnsad/aknkaksd/data/websocket/j;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/data/websocket/h;->d(Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;)V

    return-void
.end method

.method public d(Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/h;->a:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/data/websocket/h;->c(Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;Lg5/a;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/h;->b:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/websocket/j;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/data/websocket/h;->e(Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;Lcom/qennnsad/aknkaksd/data/websocket/j;)V

    return-void
.end method
