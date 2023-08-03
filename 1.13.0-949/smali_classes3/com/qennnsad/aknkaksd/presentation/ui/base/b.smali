.class public abstract Lcom/qennnsad/aknkaksd/presentation/ui/base/b;
.super Lcom/qennnsad/aknkaksd/presentation/ui/base/q;
.source "BaseFragment.java"

# interfaces
.implements Lcom/qennnsad/aknkaksd/presentation/ui/base/n;


# annotations
.annotation build Ldagger/hilt/android/b;
.end annotation


# instance fields
.field protected f:Lx4/a;
    .annotation runtime Lu7/a;
    .end annotation
.end field

.field protected g:Lg5/a;
    .annotation runtime Lu7/a;
    .end annotation
.end field

.field protected h:Lcom/qennnsad/aknkaksd/data/repository/m;
    .annotation runtime Lu7/a;
    .end annotation
.end field

.field protected i:Lcom/qennnsad/aknkaksd/util/q0;
    .annotation runtime Lu7/a;
    .end annotation
.end field

.field protected final j:Ljava/lang/String;

.field private k:Landroid/app/ProgressDialog;

.field protected l:F

.field protected m:I

.field protected n:I

.field protected o:I

.field protected p:I

.field private q:Landroid/app/Dialog;

.field protected r:Landroid/view/View;

.field private s:Z

.field public t:Z

.field protected final u:Lcom/im/freechat/sdk/a$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/q;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;->j:Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/im/freechat/sdk/a$a;

    invoke-direct {v0}, Lcom/im/freechat/sdk/a$a;-><init>()V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;->u:Lcom/im/freechat/sdk/a$a;

    return-void
.end method


# virtual methods
.method public C()V
    .locals 2

    const v0, 0x7f1302bd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;->h0(IZ)V

    return-void
.end method

.method public K()V
    .locals 0

    return-void
.end method

.method protected final Y(Landroid/view/View;I)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public Z()Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;

    return-object v0
.end method

.method public a()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;->t:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;->t:Z

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;->Z()Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->a()V

    :cond_2
    return-void
.end method

.method protected abstract a0()I
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation
.end method

.method public b()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->getContextInstance()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected b0()I
    .locals 1
    .annotation build Landroidx/annotation/AnimRes;
    .end annotation

    const v0, 0x7f010021

    return v0
.end method

.method public c()Landroid/app/Dialog;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;->Z()Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->c()Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method protected c0()I
    .locals 1
    .annotation build Landroidx/annotation/AnimRes;
    .end annotation

    const v0, 0x7f010022

    return v0
.end method

.method protected abstract d0(Landroid/view/View;)V
.end method

.method public e0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;->Z()Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->s0()Z

    move-result v0

    return v0
.end method

.method protected f0(Z)V
    .locals 0

    return-void
.end method

.method public g0()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;->g:Lg5/a;

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/l;->u(Landroid/app/Activity;Lg5/a;)V

    return-void
.end method

.method protected h0(IZ)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-static {p1, p2}, Lcom/qennnsad/aknkaksd/util/toast/a;->b(IZ)V

    return-void
.end method

.method protected i0(Ljava/lang/String;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1, p2}, Lcom/qennnsad/aknkaksd/util/toast/a;->l(Ljava/lang/String;Z)V

    return-void
.end method

.method protected j0(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/toast/a;->h(I)V

    return-void
.end method

.method protected k0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/toast/a;->k(Ljava/lang/String;)V

    return-void
.end method

.method protected l0(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/toast/a;->u(I)V

    return-void
.end method

.method public n()V
    .locals 2

    const v0, 0x7f1302ba

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;->h0(IZ)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 4
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;->l:F

    .line 5
    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;->m:I

    .line 6
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;->n:I

    .line 7
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;->o:I

    const/high16 p1, 0x42480000    # 50.0f

    mul-float v0, v0, p1

    float-to-int p1, v0

    .line 8
    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;->p:I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----- onCreateView ----- Bundle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/qennnsad/aknkaksd/util/o0;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;->a0()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;->r:Landroid/view/View;

    .line 3
    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;->d0(Landroid/view/View;)V

    .line 4
    iget-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;->s:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;->t:Z

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;->j:Ljava/lang/String;

    const-string p2, "onCreateView-- onFragmentVisibleChange(true);"

    invoke-static {p1, p2}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;->f0(Z)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;->r:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;->j:Ljava/lang/String;

    const-string v1, "----- onDestroy -----"

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;->q:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;->u:Lcom/im/freechat/sdk/a$a;

    invoke-virtual {v0}, Lcom/im/freechat/sdk/a$a;->a()V

    .line 5
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;->j:Ljava/lang/String;

    const-string v1, "----- onDestroyView -----"

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----- onHiddenChanged -----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;->j:Ljava/lang/String;

    const-string v1, "----- onPause -----"

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;->j:Ljava/lang/String;

    const-string v1, "----- onResume -----"

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;->j:Ljava/lang/String;

    const-string v1, "----- onViewCreated -----"

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public p(Ljava/lang/String;)Landroid/app/Dialog;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;->Z()Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->p(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public r(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;->i0(Ljava/lang/String;Z)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 2
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;->s:Z

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;->r:Landroid/view/View;

    if-nez p1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;->t:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;->s:Z

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;->j:Ljava/lang/String;

    const-string v1, "setUserVisibleHint-- onFragmentVisibleChange(true);"

    invoke-static {p1, v1}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;->f0(Z)V

    return-void

    .line 7
    :cond_2
    iget-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;->s:Z

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;->j:Ljava/lang/String;

    const-string v0, "setUserVisibleHint-- onFragmentVisibleChange(false);"

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;->f0(Z)V

    .line 10
    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;->s:Z

    :cond_3
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;->b0()I

    move-result v0

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;->c0()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;->b0()I

    move-result p2

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/b;->c0()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/util/l;->A(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
