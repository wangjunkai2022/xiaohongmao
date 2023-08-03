.class public final Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity$d;
.super Ljava/lang/Object;
.source "AdminListActivity.kt"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;-><init>()V
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
        "com/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity$d",
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
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity$d;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
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
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity$d;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;

    check-cast p2, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService$c;

    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService$c;->a()Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;->R(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;)V

    .line 2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity$d;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;->P(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
