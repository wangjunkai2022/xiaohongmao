.class Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MySwipeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->b(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;)Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/Constants$Orientation;

    move-result-object p1

    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/Constants$Orientation;->RIGHT:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/Constants$Orientation;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->d(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;)I

    move-result p1

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->e(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;

    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/Constants$Orientation;->LEFT:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/Constants$Orientation;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->c(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/Constants$Orientation;)Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/Constants$Orientation;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->b(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;)Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/Constants$Orientation;

    move-result-object p1

    sget-object v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/Constants$Orientation;->LEFT:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/Constants$Orientation;

    invoke-virtual {p1, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->d(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;)I

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->c(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/Constants$Orientation;)Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/Constants$Orientation;

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->d(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->f(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;I)I

    .line 6
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->g(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;Z)Z

    return-void
.end method
