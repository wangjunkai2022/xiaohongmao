.class Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$b;
.super Landroid/os/CountDownTimer;
.source "LocalAnimPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->y(I)Landroid/os/CountDownTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->m(Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->r(Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
