.class public abstract Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/Hilt_PkRightPlayerActivity;
.super Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;
.source "Hilt_PkRightPlayerActivity.java"


# instance fields
.field private j3:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/Hilt_PkRightPlayerActivity;->j3:Z

    .line 3
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/Hilt_PkRightPlayerActivity;->H2()V

    return-void
.end method

.method private H2()V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/Hilt_PkRightPlayerActivity$a;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/Hilt_PkRightPlayerActivity$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/Hilt_PkRightPlayerActivity;)V

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->addOnContextAvailableListener(Landroidx/activity/contextaware/OnContextAvailableListener;)V

    return-void
.end method


# virtual methods
.method protected K2()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/Hilt_PkRightPlayerActivity;->j3:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/Hilt_PkRightPlayerActivity;->j3:Z

    .line 3
    invoke-static {p0}, Lq6/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq6/d;

    invoke-interface {v0}, Lq6/c;->generatedComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/e;

    invoke-static {p0}, Lq6/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PkRightPlayerActivity;

    invoke-interface {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/e;->i(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PkRightPlayerActivity;)V

    :cond_0
    return-void
.end method
