.class Lcom/google/android/exoplayer2/ui/p0$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StyledPlayerControlViewLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/ui/p0;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/ui/p0;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/ui/p0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/p0$a;->a:Lcom/google/android/exoplayer2/ui/p0;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/p0$a;->a:Lcom/google/android/exoplayer2/ui/p0;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/p0;->p(Lcom/google/android/exoplayer2/ui/p0;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/p0$a;->a:Lcom/google/android/exoplayer2/ui/p0;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/p0;->p(Lcom/google/android/exoplayer2/ui/p0;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/p0$a;->a:Lcom/google/android/exoplayer2/ui/p0;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/p0;->q(Lcom/google/android/exoplayer2/ui/p0;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/p0$a;->a:Lcom/google/android/exoplayer2/ui/p0;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/p0;->q(Lcom/google/android/exoplayer2/ui/p0;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/p0$a;->a:Lcom/google/android/exoplayer2/ui/p0;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/p0;->r(Lcom/google/android/exoplayer2/ui/p0;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/p0$a;->a:Lcom/google/android/exoplayer2/ui/p0;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/p0;->r(Lcom/google/android/exoplayer2/ui/p0;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/p0$a;->a:Lcom/google/android/exoplayer2/ui/p0;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/p0;->n(Lcom/google/android/exoplayer2/ui/p0;)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/p0$a;->a:Lcom/google/android/exoplayer2/ui/p0;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/p0;->o(Lcom/google/android/exoplayer2/ui/p0;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/p0$a;->a:Lcom/google/android/exoplayer2/ui/p0;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/p0;->n(Lcom/google/android/exoplayer2/ui/p0;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->i(J)V

    :cond_0
    return-void
.end method
