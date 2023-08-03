.class public final Lcom/google/android/gms/dynamic/b;
.super Lcom/google/android/gms/dynamic/c$a;
.source "com.google.android.gms:play-services-basement@@18.0.1"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation build Lu2/a;
.end annotation


# instance fields
.field private c:Landroid/app/Fragment;


# direct methods
.method private constructor <init>(Landroid/app/Fragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/dynamic/c$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/dynamic/b;->c:Landroid/app/Fragment;

    return-void
.end method

.method public static z(Landroid/app/Fragment;)Lcom/google/android/gms/dynamic/b;
    .locals 1
    .param p0    # Landroid/app/Fragment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Lcom/google/android/gms/dynamic/b;

    invoke-direct {v0, p0}, Lcom/google/android/gms/dynamic/b;-><init>(Landroid/app/Fragment;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final A0()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->c:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final B1(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->c:Landroid/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    return-void
.end method

.method public final C()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->c:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isRemoving()Z

    move-result v0

    return v0
.end method

.method public final D()Lcom/google/android/gms/dynamic/d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->c:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/dynamic/f;->n1(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    move-result-object v0

    return-object v0
.end method

.method public final H1()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->c:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    return v0
.end method

.method public final I1()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->c:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    return v0
.end method

.method public final M()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->c:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    return v0
.end method

.method public final O0(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->c:Landroid/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public final Q()Lcom/google/android/gms/dynamic/d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->c:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/dynamic/f;->n1(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    move-result-object v0

    return-object v0
.end method

.method public final U()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->c:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isHidden()Z

    move-result v0

    return v0
.end method

.method public final U0(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->c:Landroid/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    return-void
.end method

.method public final a0()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->c:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isInLayout()Z

    move-result v0

    return v0
.end method

.method public final b()Landroid/os/Bundle;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->c:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final b1(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->c:Landroid/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method

.method public final d1(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->c:Landroid/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final e()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->c:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getTargetRequestCode()I

    move-result v0

    return v0
.end method

.method public final g1(Landroid/content/Intent;I)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->c:Landroid/app/Fragment;

    invoke-virtual {v0, p1, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final n()Lcom/google/android/gms/dynamic/c;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->c:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->z(Landroid/app/Fragment;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    return-object v0
.end method

.method public final o()Lcom/google/android/gms/dynamic/d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->c:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/dynamic/f;->n1(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    move-result-object v0

    return-object v0
.end method

.method public final r0(Lcom/google/android/gms/dynamic/d;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/dynamic/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/f;->z(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->c:Landroid/app/Fragment;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->unregisterForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public final v1(Lcom/google/android/gms/dynamic/d;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/dynamic/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/f;->z(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->c:Landroid/app/Fragment;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public final w1()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->c:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    return v0
.end method

.method public final x1()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->c:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isDetached()Z

    move-result v0

    return v0
.end method

.method public final y1()Lcom/google/android/gms/dynamic/c;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->c:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->z(Landroid/app/Fragment;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    return-object v0
.end method

.method public final z1()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->c:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getRetainInstance()Z

    move-result v0

    return v0
.end method

.method public final zzb()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/b;->c:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getId()I

    move-result v0

    return v0
.end method
