.class abstract Lcom/qennnsad/aknkaksd/data/websocket/a;
.super Landroid/app/Service;
.source "Hilt_WebSocketService.java"

# interfaces
.implements Lq6/d;


# instance fields
.field private volatile a:Ldagger/hilt/android/internal/managers/k;

.field private final b:Ljava/lang/Object;

.field private c:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/a;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/a;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Ldagger/hilt/android/internal/managers/k;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/a;->a:Ldagger/hilt/android/internal/managers/k;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/a;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/websocket/a;->a:Ldagger/hilt/android/internal/managers/k;

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/data/websocket/a;->b()Ldagger/hilt/android/internal/managers/k;

    move-result-object v1

    iput-object v1, p0, Lcom/qennnsad/aknkaksd/data/websocket/a;->a:Ldagger/hilt/android/internal/managers/k;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/a;->a:Ldagger/hilt/android/internal/managers/k;

    return-object v0
.end method

.method protected b()Ldagger/hilt/android/internal/managers/k;
    .locals 1

    new-instance v0, Ldagger/hilt/android/internal/managers/k;

    invoke-direct {v0, p0}, Ldagger/hilt/android/internal/managers/k;-><init>(Landroid/app/Service;)V

    return-object v0
.end method

.method protected c()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/a;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/a;->c:Z

    .line 3
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/data/websocket/a;->generatedComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/websocket/g;

    invoke-static {p0}, Lq6/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    invoke-interface {v0, v1}, Lcom/qennnsad/aknkaksd/data/websocket/g;->a(Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic componentManager()Lq6/c;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/data/websocket/a;->a()Ldagger/hilt/android/internal/managers/k;

    move-result-object v0

    return-object v0
.end method

.method public final generatedComponent()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/data/websocket/a;->a()Ldagger/hilt/android/internal/managers/k;

    move-result-object v0

    invoke-virtual {v0}, Ldagger/hilt/android/internal/managers/k;->generatedComponent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/data/websocket/a;->c()V

    .line 2
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method
