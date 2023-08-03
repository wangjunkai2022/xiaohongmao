.class Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$a$b;
.super Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$c;
.source "LocalAnimPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$a;->a(Lio/reactivex/b0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$a;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$a$b;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$a;

    invoke-direct {p0, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$c;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$c;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$a$b;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$a;

    iget-object p1, p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$a;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->q(Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$c;->onAnimationStart(Landroid/view/animation/Animation;)V

    return-void
.end method
