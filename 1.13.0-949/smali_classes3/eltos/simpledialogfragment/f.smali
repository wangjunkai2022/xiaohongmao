.class public Leltos/simpledialogfragment/f;
.super Landroidx/fragment/app/DialogFragment;
.source "SimpleDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leltos/simpledialogfragment/f$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<This:",
        "Leltos/simpledialogfragment/f<",
        "TThis;>;>",
        "Landroidx/fragment/app/DialogFragment;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SimpleDialog."

.field protected static final d:Ljava/lang/String; = "SimpleDialog.title"

.field protected static final e:Ljava/lang/String; = "SimpleDialog.message"

.field protected static final f:Ljava/lang/String; = "SimpleDialog.positiveButtonText"

.field protected static final g:Ljava/lang/String; = "SimpleDialog.negativeButtonText"

.field protected static final h:Ljava/lang/String; = "SimpleDialog.neutralButtonText"

.field protected static final i:Ljava/lang/String; = "SimpleDialog.iconResource"

.field protected static final j:Ljava/lang/String; = "SimpleDialog.cancelable"

.field protected static final k:Ljava/lang/String; = "SimpleDialog.theme"

.field protected static final l:Ljava/lang/String; = "SimpleDialog.html"

.field protected static final m:Ljava/lang/String; = "SimpleDialog.bundle"


# instance fields
.field private a:Landroid/content/DialogInterface$OnClickListener;

.field private b:Landroidx/appcompat/app/AlertDialog;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    new-instance v0, Leltos/simpledialogfragment/f$a;

    invoke-direct {v0, p0}, Leltos/simpledialogfragment/f$a;-><init>(Leltos/simpledialogfragment/f;)V

    iput-object v0, p0, Leltos/simpledialogfragment/f;->a:Landroid/content/DialogInterface$OnClickListener;

    .line 3
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    const v0, 0x104000a

    .line 4
    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/f;->r0(I)Leltos/simpledialogfragment/f;

    return-void
.end method

.method public static U()Leltos/simpledialogfragment/f;
    .locals 1

    new-instance v0, Leltos/simpledialogfragment/f;

    invoke-direct {v0}, Leltos/simpledialogfragment/f;-><init>()V

    return-object v0
.end method


# virtual methods
.method public A0(Landroidx/fragment/app/FragmentActivity;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "TAG"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 2
    :catch_0
    invoke-virtual {p0, p1, v0}, Leltos/simpledialogfragment/f;->B0(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    return-void
.end method

.method public B0(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Leltos/simpledialogfragment/f;->C0(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public C0(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p3}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 6
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 7
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public D0(Landroid/view/View;)V
    .locals 3

    new-instance v0, Leltos/simpledialogfragment/f$b;

    invoke-direct {v0, p0, p1}, Leltos/simpledialogfragment/f$b;-><init>(Leltos/simpledialogfragment/f;Landroid/view/View;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public E0(I)Leltos/simpledialogfragment/f;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TThis;"
        }
    .end annotation

    const-string v0, "SimpleDialog.theme"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->t0(Ljava/lang/String;I)Leltos/simpledialogfragment/f;

    move-result-object p1

    return-object p1
.end method

.method public F0(I)Leltos/simpledialogfragment/f;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TThis;"
        }
    .end annotation

    const-string v0, "SimpleDialog.title"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->t0(Ljava/lang/String;I)Leltos/simpledialogfragment/f;

    move-result-object p1

    return-object p1
.end method

.method public G0(Ljava/lang/String;)Leltos/simpledialogfragment/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TThis;"
        }
    .end annotation

    const-string v0, "SimpleDialog.title"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->v0(Ljava/lang/String;Ljava/lang/String;)Leltos/simpledialogfragment/f;

    move-result-object p1

    return-object p1
.end method

.method protected V(ILandroid/os/Bundle;)Z
    .locals 3
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->a0()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    :goto_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 5
    instance-of v2, v1, Leltos/simpledialogfragment/f$c;

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Leltos/simpledialogfragment/f$c;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1, p2}, Leltos/simpledialogfragment/f$c;->R(Ljava/lang/String;ILandroid/os/Bundle;)Z

    move-result v0

    .line 8
    :cond_1
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Leltos/simpledialogfragment/f$c;

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Leltos/simpledialogfragment/f$c;

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Leltos/simpledialogfragment/f$c;->R(Ljava/lang/String;ILandroid/os/Bundle;)Z

    move-result v0

    :cond_3
    return v0
.end method

.method public W(Z)Leltos/simpledialogfragment/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TThis;"
        }
    .end annotation

    const-string v0, "SimpleDialog.cancelable"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->w0(Ljava/lang/String;Z)Leltos/simpledialogfragment/f;

    move-result-object p1

    return-object p1
.end method

.method public X(Landroid/os/Bundle;)Leltos/simpledialogfragment/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")TThis;"
        }
    .end annotation

    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SimpleDialog.bundle"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p0
.end method

.method protected final Y(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 4
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final Z()Landroid/os/Bundle;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_0
    return-object v0
.end method

.method public a0()Landroid/os/Bundle;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SimpleDialog.bundle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    return-object v0
.end method

.method public b0()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "SimpleDialog.message"

    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/f;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected c0()Landroid/widget/Button;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Leltos/simpledialogfragment/f;->b:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected d0()Landroid/widget/Button;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Leltos/simpledialogfragment/f;->b:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected e0()Landroid/widget/Button;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Leltos/simpledialogfragment/f;->b:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public f0()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "SimpleDialog.title"

    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/f;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g0(I)Leltos/simpledialogfragment/f;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TThis;"
        }
    .end annotation

    const-string v0, "SimpleDialog.iconResource"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->t0(Ljava/lang/String;I)Leltos/simpledialogfragment/f;

    move-result-object p1

    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Leltos/simpledialogfragment/f;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public h0(I)Leltos/simpledialogfragment/f;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TThis;"
        }
    .end annotation

    const-string v0, "SimpleDialog.message"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->t0(Ljava/lang/String;I)Leltos/simpledialogfragment/f;

    move-result-object p1

    return-object p1
.end method

.method public i0(Ljava/lang/String;)Leltos/simpledialogfragment/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TThis;"
        }
    .end annotation

    const-string v0, "SimpleDialog.message"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->v0(Ljava/lang/String;Ljava/lang/String;)Leltos/simpledialogfragment/f;

    move-result-object p1

    return-object p1
.end method

.method public isCancelable()Z
    .locals 3

    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SimpleDialog.cancelable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public j0(I)Leltos/simpledialogfragment/f;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TThis;"
        }
    .end annotation

    const-string v0, "SimpleDialog.html"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Leltos/simpledialogfragment/f;->w0(Ljava/lang/String;Z)Leltos/simpledialogfragment/f;

    const-string v0, "SimpleDialog.message"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->t0(Ljava/lang/String;I)Leltos/simpledialogfragment/f;

    move-result-object p1

    return-object p1
.end method

.method public k0(Ljava/lang/String;)Leltos/simpledialogfragment/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TThis;"
        }
    .end annotation

    const-string v0, "SimpleDialog.html"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Leltos/simpledialogfragment/f;->w0(Ljava/lang/String;Z)Leltos/simpledialogfragment/f;

    const-string v0, "SimpleDialog.message"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->v0(Ljava/lang/String;Ljava/lang/String;)Leltos/simpledialogfragment/f;

    move-result-object p1

    return-object p1
.end method

.method public l0()Leltos/simpledialogfragment/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TThis;"
        }
    .end annotation

    const v0, 0x1040009

    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/f;->m0(I)Leltos/simpledialogfragment/f;

    move-result-object v0

    return-object v0
.end method

.method public m0(I)Leltos/simpledialogfragment/f;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TThis;"
        }
    .end annotation

    const-string v0, "SimpleDialog.negativeButtonText"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->t0(Ljava/lang/String;I)Leltos/simpledialogfragment/f;

    move-result-object p1

    return-object p1
.end method

.method public n0(Ljava/lang/String;)Leltos/simpledialogfragment/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TThis;"
        }
    .end annotation

    const-string v0, "SimpleDialog.negativeButtonText"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->v0(Ljava/lang/String;Ljava/lang/String;)Leltos/simpledialogfragment/f;

    move-result-object p1

    return-object p1
.end method

.method public o0()Leltos/simpledialogfragment/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TThis;"
        }
    .end annotation

    const/high16 v0, 0x1040000

    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/f;->p0(I)Leltos/simpledialogfragment/f;

    move-result-object v0

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Leltos/simpledialogfragment/f;->V(ILandroid/os/Bundle;)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    .line 3
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->isCancelable()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "SimpleDialog.theme"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 4
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Leltos/simpledialogfragment/c$d;->Qb:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 5
    iget v0, p1, Landroid/util/TypedValue;->type:I

    if-ne v0, v2, :cond_1

    .line 6
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 7
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Leltos/simpledialogfragment/f;->b:Landroidx/appcompat/app/AlertDialog;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    goto :goto_1

    .line 9
    :cond_2
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Leltos/simpledialogfragment/f;->b:Landroidx/appcompat/app/AlertDialog;

    .line 10
    :goto_1
    iget-object p1, p0, Leltos/simpledialogfragment/f;->b:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Leltos/simpledialogfragment/f;->c:Landroid/content/Context;

    .line 11
    iget-object p1, p0, Leltos/simpledialogfragment/f;->b:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->f0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->b0()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 13
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "SimpleDialog.html"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 14
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_3

    .line 15
    iget-object v1, p0, Leltos/simpledialogfragment/f;->b:Landroidx/appcompat/app/AlertDialog;

    invoke-static {p1, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 16
    :cond_3
    iget-object v0, p0, Leltos/simpledialogfragment/f;->b:Landroidx/appcompat/app/AlertDialog;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 17
    :cond_4
    iget-object v0, p0, Leltos/simpledialogfragment/f;->b:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    const-string p1, "SimpleDialog.positiveButtonText"

    .line 18
    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/f;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 19
    iget-object v0, p0, Leltos/simpledialogfragment/f;->b:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, -0x1

    iget-object v2, p0, Leltos/simpledialogfragment/f;->a:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, p1, v2}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_6
    const-string p1, "SimpleDialog.negativeButtonText"

    .line 20
    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/f;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 21
    iget-object v0, p0, Leltos/simpledialogfragment/f;->b:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Leltos/simpledialogfragment/f;->a:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, p1, v2}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_7
    const-string p1, "SimpleDialog.neutralButtonText"

    .line 22
    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/f;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 23
    iget-object v0, p0, Leltos/simpledialogfragment/f;->b:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, -0x3

    iget-object v2, p0, Leltos/simpledialogfragment/f;->a:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, p1, v2}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 24
    :cond_8
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "SimpleDialog.iconResource"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 25
    iget-object p1, p0, Leltos/simpledialogfragment/f;->b:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setIcon(I)V

    .line 26
    :cond_9
    iget-object p1, p0, Leltos/simpledialogfragment/f;->b:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->isCancelable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 27
    iget-object p1, p0, Leltos/simpledialogfragment/f;->b:Landroidx/appcompat/app/AlertDialog;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/f;->b:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Leltos/simpledialogfragment/f;->b:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public p0(I)Leltos/simpledialogfragment/f;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TThis;"
        }
    .end annotation

    const-string v0, "SimpleDialog.neutralButtonText"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->t0(Ljava/lang/String;I)Leltos/simpledialogfragment/f;

    move-result-object p1

    return-object p1
.end method

.method public q0(Ljava/lang/String;)Leltos/simpledialogfragment/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TThis;"
        }
    .end annotation

    const-string v0, "SimpleDialog.neutralButtonText"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->v0(Ljava/lang/String;Ljava/lang/String;)Leltos/simpledialogfragment/f;

    move-result-object p1

    return-object p1
.end method

.method public r0(I)Leltos/simpledialogfragment/f;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TThis;"
        }
    .end annotation

    const-string v0, "SimpleDialog.positiveButtonText"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->t0(Ljava/lang/String;I)Leltos/simpledialogfragment/f;

    move-result-object p1

    return-object p1
.end method

.method public s0(Ljava/lang/String;)Leltos/simpledialogfragment/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TThis;"
        }
    .end annotation

    const-string v0, "SimpleDialog.positiveButtonText"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->v0(Ljava/lang/String;Ljava/lang/String;)Leltos/simpledialogfragment/f;

    move-result-object p1

    return-object p1
.end method

.method public show(Landroidx/fragment/app/FragmentTransaction;Ljava/lang/String;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentTransaction;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, -0x1

    return p1
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected final t0(Ljava/lang/String;I)Leltos/simpledialogfragment/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)TThis;"
        }
    .end annotation

    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method protected final u0(Ljava/lang/String;J)Leltos/simpledialogfragment/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)TThis;"
        }
    .end annotation

    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p0
.end method

.method protected final v0(Ljava/lang/String;Ljava/lang/String;)Leltos/simpledialogfragment/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TThis;"
        }
    .end annotation

    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method protected final w0(Ljava/lang/String;Z)Leltos/simpledialogfragment/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)TThis;"
        }
    .end annotation

    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public x0(Landroidx/fragment/app/Fragment;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "TAG"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 2
    :catch_0
    invoke-virtual {p0, p1, v0}, Leltos/simpledialogfragment/f;->y0(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public y0(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Leltos/simpledialogfragment/f;->z0(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public z0(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 5
    invoke-virtual {v1, p3}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 6
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    const/4 p3, -0x1

    .line 7
    invoke-virtual {p0, p1, p3}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 8
    :try_start_0
    invoke-super {p0, v0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
