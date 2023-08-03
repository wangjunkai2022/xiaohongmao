.class Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MrlLove.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field final synthetic b:Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove$a;->b:Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove$a;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove$a;->b:Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove$a;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    return-void
.end method
