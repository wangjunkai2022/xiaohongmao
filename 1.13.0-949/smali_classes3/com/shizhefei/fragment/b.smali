.class public Lcom/shizhefei/fragment/b;
.super Lcom/shizhefei/fragment/a;
.source "LazyFragment.java"


# static fields
.field public static final k:Ljava/lang/String; = "intent_boolean_lazyLoad"

.field private static final l:I = -0x1

.field private static final m:I = 0x1

.field private static final n:I


# instance fields
.field private e:Z

.field private f:Landroid/os/Bundle;

.field private g:Z

.field private h:Landroid/widget/FrameLayout;

.field private i:I

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shizhefei/fragment/a;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/shizhefei/fragment/b;->e:Z

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/shizhefei/fragment/b;->g:Z

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lcom/shizhefei/fragment/b;->i:I

    .line 5
    iput-boolean v0, p0, Lcom/shizhefei/fragment/b;->j:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic U(I)Landroid/view/View;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/shizhefei/fragment/a;->U(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic V()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/shizhefei/fragment/a;->V()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic W()Landroid/view/View;
    .locals 1

    invoke-super {p0}, Lcom/shizhefei/fragment/a;->W()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected final X(Landroid/os/Bundle;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/shizhefei/fragment/a;->X(Landroid/os/Bundle;)V

    .line 2
    iput-object p1, p0, Lcom/shizhefei/fragment/b;->f:Landroid/os/Bundle;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-boolean v1, p0, Lcom/shizhefei/fragment/b;->g:Z

    const-string v2, "intent_boolean_lazyLoad"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/shizhefei/fragment/b;->g:Z

    .line 5
    :cond_0
    iget v0, p0, Lcom/shizhefei/fragment/b;->i:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-boolean v3, p0, Lcom/shizhefei/fragment/b;->g:Z

    if-eqz v3, :cond_6

    if-eqz v0, :cond_3

    .line 8
    iget-boolean v0, p0, Lcom/shizhefei/fragment/b;->e:Z

    if-nez v0, :cond_3

    .line 9
    iput-boolean v2, p0, Lcom/shizhefei/fragment/b;->e:Z

    .line 10
    invoke-virtual {p0, p1}, Lcom/shizhefei/fragment/b;->b0(Landroid/os/Bundle;)V

    goto :goto_1

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/shizhefei/fragment/a;->a:Landroid/view/LayoutInflater;

    if-nez p1, :cond_4

    .line 12
    invoke-virtual {p0}, Lcom/shizhefei/fragment/b;->V()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 13
    :cond_4
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shizhefei/fragment/b;->h:Landroid/widget/FrameLayout;

    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/shizhefei/fragment/b;->a0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 15
    iget-object v0, p0, Lcom/shizhefei/fragment/b;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 16
    :cond_5
    iget-object p1, p0, Lcom/shizhefei/fragment/b;->h:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    iget-object p1, p0, Lcom/shizhefei/fragment/b;->h:Landroid/widget/FrameLayout;

    invoke-super {p0, p1}, Lcom/shizhefei/fragment/a;->Z(Landroid/view/View;)V

    goto :goto_1

    .line 18
    :cond_6
    iput-boolean v2, p0, Lcom/shizhefei/fragment/b;->e:Z

    .line 19
    invoke-virtual {p0, p1}, Lcom/shizhefei/fragment/b;->b0(Landroid/os/Bundle;)V

    :goto_1
    return-void
.end method

.method public Y(I)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/shizhefei/fragment/b;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shizhefei/fragment/b;->W()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shizhefei/fragment/b;->W()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shizhefei/fragment/b;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 3
    iget-object v0, p0, Lcom/shizhefei/fragment/a;->a:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/shizhefei/fragment/b;->h:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/shizhefei/fragment/b;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-super {p0, p1}, Lcom/shizhefei/fragment/a;->Y(I)V

    :goto_0
    return-void
.end method

.method public Z(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shizhefei/fragment/b;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shizhefei/fragment/b;->W()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shizhefei/fragment/b;->W()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shizhefei/fragment/b;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 3
    iget-object v0, p0, Lcom/shizhefei/fragment/b;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lcom/shizhefei/fragment/a;->Z(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method protected a0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected b0(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected c0()V
    .locals 0

    return-void
.end method

.method protected d0()V
    .locals 0

    return-void
.end method

.method protected e0()V
    .locals 0

    return-void
.end method

.method protected f0()V
    .locals 0

    return-void
.end method

.method protected g0()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/shizhefei/fragment/a;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onDestroyView()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/shizhefei/fragment/a;->onDestroyView()V

    .line 2
    iget-boolean v0, p0, Lcom/shizhefei/fragment/b;->e:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/shizhefei/fragment/b;->c0()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/shizhefei/fragment/b;->e:Z

    return-void
.end method

.method public final onPause()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-boolean v0, p0, Lcom/shizhefei/fragment/b;->e:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/shizhefei/fragment/b;->f0()V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-boolean v0, p0, Lcom/shizhefei/fragment/b;->e:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/shizhefei/fragment/b;->g0()V

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2
    iget-boolean v0, p0, Lcom/shizhefei/fragment/b;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shizhefei/fragment/b;->j:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/shizhefei/fragment/b;->j:Z

    .line 4
    invoke-virtual {p0}, Lcom/shizhefei/fragment/b;->d0()V

    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 2
    iget-boolean v0, p0, Lcom/shizhefei/fragment/b;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shizhefei/fragment/b;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/shizhefei/fragment/b;->j:Z

    .line 4
    invoke-virtual {p0}, Lcom/shizhefei/fragment/b;->e0()V

    :cond_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 2
    iput p1, p0, Lcom/shizhefei/fragment/b;->i:I

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 3
    iget-boolean v1, p0, Lcom/shizhefei/fragment/b;->e:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/shizhefei/fragment/b;->W()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iput-boolean v0, p0, Lcom/shizhefei/fragment/b;->e:Z

    .line 5
    iget-object v1, p0, Lcom/shizhefei/fragment/b;->f:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Lcom/shizhefei/fragment/b;->b0(Landroid/os/Bundle;)V

    .line 6
    invoke-virtual {p0}, Lcom/shizhefei/fragment/b;->g0()V

    .line 7
    :cond_0
    iget-boolean v1, p0, Lcom/shizhefei/fragment/b;->e:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/shizhefei/fragment/b;->W()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    .line 8
    iput-boolean v0, p0, Lcom/shizhefei/fragment/b;->j:Z

    .line 9
    invoke-virtual {p0}, Lcom/shizhefei/fragment/b;->d0()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/shizhefei/fragment/b;->j:Z

    .line 11
    invoke-virtual {p0}, Lcom/shizhefei/fragment/b;->e0()V

    :cond_2
    :goto_0
    return-void
.end method
