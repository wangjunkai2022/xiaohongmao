.class abstract Lcom/shizhefei/fragment/a;
.super Landroidx/fragment/app/Fragment;
.source "BaseFragment.java"


# instance fields
.field protected a:Landroid/view/LayoutInflater;

.field private b:Landroid/view/View;

.field private c:Landroid/content/Context;

.field private d:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public U(I)Landroid/view/View;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shizhefei/fragment/a;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public V()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/fragment/a;->c:Landroid/content/Context;

    return-object v0
.end method

.method public W()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/fragment/a;->b:Landroid/view/View;

    return-object v0
.end method

.method protected X(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public Y(I)V
    .locals 3

    iget-object v0, p0, Lcom/shizhefei/fragment/a;->a:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/shizhefei/fragment/a;->d:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/shizhefei/fragment/a;->Z(Landroid/view/View;)V

    return-void
.end method

.method public Z(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/shizhefei/fragment/a;->b:Landroid/view/View;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/shizhefei/fragment/a;->c:Landroid/content/Context;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/shizhefei/fragment/a;->a:Landroid/view/LayoutInflater;

    .line 2
    iput-object p2, p0, Lcom/shizhefei/fragment/a;->d:Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {p0, p3}, Lcom/shizhefei/fragment/a;->X(Landroid/os/Bundle;)V

    .line 4
    iget-object v0, p0, Lcom/shizhefei/fragment/a;->b:Landroid/view/View;

    if-nez v0, :cond_0

    .line 5
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/shizhefei/fragment/a;->b:Landroid/view/View;

    .line 3
    iput-object v0, p0, Lcom/shizhefei/fragment/a;->d:Landroid/view/ViewGroup;

    .line 4
    iput-object v0, p0, Lcom/shizhefei/fragment/a;->a:Landroid/view/LayoutInflater;

    return-void
.end method
