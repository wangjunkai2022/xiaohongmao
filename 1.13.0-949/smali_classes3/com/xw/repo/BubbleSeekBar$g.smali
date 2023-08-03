.class Lcom/xw/repo/BubbleSeekBar$g;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BubbleSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xw/repo/BubbleSeekBar;->P()V
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

    iput-object p1, p0, Lcom/xw/repo/BubbleSeekBar$g;->a:Lcom/xw/repo/BubbleSeekBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/xw/repo/BubbleSeekBar$g;->a:Lcom/xw/repo/BubbleSeekBar;

    invoke-static {p1}, Lcom/xw/repo/BubbleSeekBar;->h(Lcom/xw/repo/BubbleSeekBar;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar$g;->a:Lcom/xw/repo/BubbleSeekBar;

    invoke-static {v0}, Lcom/xw/repo/BubbleSeekBar;->v(Lcom/xw/repo/BubbleSeekBar;)Lcom/xw/repo/BubbleSeekBar$i;

    move-result-object v0

    iget-object v1, p0, Lcom/xw/repo/BubbleSeekBar$g;->a:Lcom/xw/repo/BubbleSeekBar;

    invoke-static {v1}, Lcom/xw/repo/BubbleSeekBar;->g(Lcom/xw/repo/BubbleSeekBar;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
