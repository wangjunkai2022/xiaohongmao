.class public final Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity$d;
.super Ljava/lang/Object;
.source "MainContainerActivity.kt"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/qennnsad/aknkaksd/presentation/ui/MainContainerActivity$d",
        "Landroid/content/ServiceConnection;",
        "Landroid/content/ComponentName;",
        "name",
        "Landroid/os/IBinder;",
        "service",
        "",
        "onServiceConnected",
        "onServiceDisconnected",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity$d;->a:Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/os/IBinder;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "service"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Service connected."

    invoke-virtual {p1, v1, v0}, Ltimber/log/Timber$b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    check-cast p2, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService$c;

    .line 3
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity$d;->a:Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity;

    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService$c;->a()Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity;->m0(Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity;Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;)V

    .line 4
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity$d;->a:Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity;->l0(Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Service disconnected."

    invoke-virtual {p1, v1, v0}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
