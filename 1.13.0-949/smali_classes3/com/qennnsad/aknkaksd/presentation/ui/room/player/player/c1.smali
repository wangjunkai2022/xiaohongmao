.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/c1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;

.field public final synthetic b:Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/c1;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/c1;->b:Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/c1;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/c1;->b:Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->Z2(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;)V

    return-void
.end method
