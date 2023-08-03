.class Lcom/xw/repo/BubbleSeekBar$f;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BubbleSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xw/repo/BubbleSeekBar;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xw/repo/BubbleSeekBar;


# direct methods
.method constructor <init>(Lcom/xw/repo/BubbleSeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/xw/repo/BubbleSeekBar$f;->a:Lcom/xw/repo/BubbleSeekBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/xw/repo/BubbleSeekBar$f;->a:Lcom/xw/repo/BubbleSeekBar;

    invoke-static {p1}, Lcom/xw/repo/BubbleSeekBar;->c(Lcom/xw/repo/BubbleSeekBar;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/xw/repo/BubbleSeekBar$f;->a:Lcom/xw/repo/BubbleSeekBar;

    invoke-static {p1}, Lcom/xw/repo/BubbleSeekBar;->s(Lcom/xw/repo/BubbleSeekBar;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/xw/repo/BubbleSeekBar$f;->a:Lcom/xw/repo/BubbleSeekBar;

    invoke-static {p1}, Lcom/xw/repo/BubbleSeekBar;->t(Lcom/xw/repo/BubbleSeekBar;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/xw/repo/BubbleSeekBar$f;->a:Lcom/xw/repo/BubbleSeekBar;

    invoke-static {p1}, Lcom/xw/repo/BubbleSeekBar;->y(Lcom/xw/repo/BubbleSeekBar;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/xw/repo/BubbleSeekBar;->x(Lcom/xw/repo/BubbleSeekBar;F)F

    .line 4
    iget-object p1, p0, Lcom/xw/repo/BubbleSeekBar$f;->a:Lcom/xw/repo/BubbleSeekBar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xw/repo/BubbleSeekBar;->o(Lcom/xw/repo/BubbleSeekBar;Z)Z

    .line 5
    iget-object p1, p0, Lcom/xw/repo/BubbleSeekBar$f;->a:Lcom/xw/repo/BubbleSeekBar;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xw/repo/BubbleSeekBar;->a(Lcom/xw/repo/BubbleSeekBar;Z)Z

    .line 6
    iget-object p1, p0, Lcom/xw/repo/BubbleSeekBar$f;->a:Lcom/xw/repo/BubbleSeekBar;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/xw/repo/BubbleSeekBar$f;->a:Lcom/xw/repo/BubbleSeekBar;

    invoke-static {p1}, Lcom/xw/repo/BubbleSeekBar;->c(Lcom/xw/repo/BubbleSeekBar;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/xw/repo/BubbleSeekBar$f;->a:Lcom/xw/repo/BubbleSeekBar;

    invoke-static {p1}, Lcom/xw/repo/BubbleSeekBar;->s(Lcom/xw/repo/BubbleSeekBar;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/xw/repo/BubbleSeekBar$f;->a:Lcom/xw/repo/BubbleSeekBar;

    invoke-static {p1}, Lcom/xw/repo/BubbleSeekBar;->t(Lcom/xw/repo/BubbleSeekBar;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/xw/repo/BubbleSeekBar$f;->a:Lcom/xw/repo/BubbleSeekBar;

    invoke-static {p1}, Lcom/xw/repo/BubbleSeekBar;->y(Lcom/xw/repo/BubbleSeekBar;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/xw/repo/BubbleSeekBar;->x(Lcom/xw/repo/BubbleSeekBar;F)F

    .line 4
    iget-object p1, p0, Lcom/xw/repo/BubbleSeekBar$f;->a:Lcom/xw/repo/BubbleSeekBar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xw/repo/BubbleSeekBar;->o(Lcom/xw/repo/BubbleSeekBar;Z)Z

    .line 5
    iget-object p1, p0, Lcom/xw/repo/BubbleSeekBar$f;->a:Lcom/xw/repo/BubbleSeekBar;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xw/repo/BubbleSeekBar;->a(Lcom/xw/repo/BubbleSeekBar;Z)Z

    .line 6
    iget-object p1, p0, Lcom/xw/repo/BubbleSeekBar$f;->a:Lcom/xw/repo/BubbleSeekBar;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 7
    iget-object p1, p0, Lcom/xw/repo/BubbleSeekBar$f;->a:Lcom/xw/repo/BubbleSeekBar;

    invoke-static {p1}, Lcom/xw/repo/BubbleSeekBar;->k(Lcom/xw/repo/BubbleSeekBar;)Lcom/xw/repo/BubbleSeekBar$k;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/xw/repo/BubbleSeekBar$f;->a:Lcom/xw/repo/BubbleSeekBar;

    invoke-static {p1}, Lcom/xw/repo/BubbleSeekBar;->k(Lcom/xw/repo/BubbleSeekBar;)Lcom/xw/repo/BubbleSeekBar$k;

    move-result-object p1

    iget-object v1, p0, Lcom/xw/repo/BubbleSeekBar$f;->a:Lcom/xw/repo/BubbleSeekBar;

    invoke-virtual {v1}, Lcom/xw/repo/BubbleSeekBar;->getProgress()I

    move-result v2

    iget-object v3, p0, Lcom/xw/repo/BubbleSeekBar$f;->a:Lcom/xw/repo/BubbleSeekBar;

    .line 9
    invoke-virtual {v3}, Lcom/xw/repo/BubbleSeekBar;->getProgressFloat()F

    move-result v3

    .line 10
    invoke-interface {p1, v1, v2, v3, v0}, Lcom/xw/repo/BubbleSeekBar$k;->c(Lcom/xw/repo/BubbleSeekBar;IFZ)V

    :cond_1
    return-void
.end method
