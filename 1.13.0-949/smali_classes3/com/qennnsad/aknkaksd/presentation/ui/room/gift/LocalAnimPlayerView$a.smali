.class Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$a;
.super Ljava/lang/Object;
.source "LocalAnimPlayerView.java"

# interfaces
.implements Lio/reactivex/c0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->C(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/c0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$a;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/b0;)V
    .locals 3
    .param p1    # Lio/reactivex/b0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/b0<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$a;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$a;->a:Landroid/content/Context;

    const v2, 0x7f01002e

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->h(Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$a;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$a;->a:Landroid/content/Context;

    const v2, 0x7f01002d

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->j(Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$a;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$a;->a:Landroid/content/Context;

    const v2, 0x7f01002c

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->l(Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$a;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$a;->a:Landroid/content/Context;

    const v2, 0x7f01002f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->n(Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    .line 5
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$a;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->g(Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$a$a;

    const-string v2, "animWholeIn"

    invoke-direct {v1, p0, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$a$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 6
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$a;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->i(Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$a$b;

    const-string v2, "animGiftPicIn"

    invoke-direct {v1, p0, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$a$b;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 7
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$a;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->k(Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$a$c;

    const-string v2, "animCombo"

    invoke-direct {v1, p0, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$a$c;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 8
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$a;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->m(Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$a$d;

    const-string v2, "animWholeOut"

    invoke-direct {v1, p0, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$a$d;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, v0}, Lio/reactivex/i;->onNext(Ljava/lang/Object;)V

    .line 10
    invoke-interface {p1}, Lio/reactivex/i;->onComplete()V

    return-void
.end method
