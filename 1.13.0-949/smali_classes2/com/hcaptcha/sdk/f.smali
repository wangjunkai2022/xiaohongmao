.class public final Lcom/hcaptcha/sdk/f;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Lcom/hcaptcha/sdk/p;


# static fields
.field private static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String; = "hCaptchaConfig"

.field public static final f:Ljava/lang/String; = "hCaptchaInternalConfig"

.field public static final g:Ljava/lang/String; = "hCaptchaDialogListener"

.field public static final synthetic h:Z


# instance fields
.field private a:Lcom/hcaptcha/sdk/m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Landroid/widget/LinearLayout;

.field private c:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/hcaptcha/sdk/f;

    const-string v0, "HCaptchaDialogFragment"

    sput-object v0, Lcom/hcaptcha/sdk/f;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/hcaptcha/sdk/f;->c:F

    return-void
.end method

.method public static synthetic U(Lcom/hcaptcha/sdk/f;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/hcaptcha/sdk/f;->X(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic V(Lcom/hcaptcha/sdk/f;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/hcaptcha/sdk/f;->b:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private W()V
    .locals 3

    iget-object v0, p0, Lcom/hcaptcha/sdk/f;->a:Lcom/hcaptcha/sdk/m;

    invoke-virtual {v0}, Lcom/hcaptcha/sdk/m;->c()Lcom/hcaptcha/sdk/HCaptchaConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getLoading()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hcaptcha/sdk/f;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/hcaptcha/sdk/f$a;

    invoke-direct {v1, p0}, Lcom/hcaptcha/sdk/f$a;-><init>(Lcom/hcaptcha/sdk/f;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/hcaptcha/sdk/f;->c:F

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic X(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/hcaptcha/sdk/f;->a:Lcom/hcaptcha/sdk/m;

    if-eqz p1, :cond_0

    new-instance p2, Lcom/hcaptcha/sdk/HCaptchaException;

    sget-object v0, Lcom/hcaptcha/sdk/HCaptchaError;->CHALLENGE_CLOSED:Lcom/hcaptcha/sdk/HCaptchaError;

    invoke-direct {p2, v0}, Lcom/hcaptcha/sdk/HCaptchaException;-><init>(Lcom/hcaptcha/sdk/HCaptchaError;)V

    invoke-virtual {p1, p2}, Lcom/hcaptcha/sdk/m;->h(Lcom/hcaptcha/sdk/HCaptchaException;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p3, 0x1

    :cond_0
    return p3
.end method

.method public static Y(Lcom/hcaptcha/sdk/HCaptchaConfig;Lcom/hcaptcha/sdk/i;Lcom/hcaptcha/sdk/HCaptchaStateListener;)Lcom/hcaptcha/sdk/f;
    .locals 2
    .param p0    # Lcom/hcaptcha/sdk/HCaptchaConfig;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/hcaptcha/sdk/i;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/hcaptcha/sdk/HCaptchaStateListener;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "config is marked non-null but is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "internalConfig is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "listener is marked non-null but is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "DialogFragment.newInstance"

    invoke-static {v0}, Lcom/hcaptcha/sdk/k;->a(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "hCaptchaConfig"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p0, "hCaptchaInternalConfig"

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p0, "hCaptchaDialogListener"

    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance p0, Lcom/hcaptcha/sdk/f;

    invoke-direct {p0}, Lcom/hcaptcha/sdk/f;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public G(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    sget-object v0, Lcom/hcaptcha/sdk/f;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "DialogFragment was already added."

    invoke-static {p1}, Lcom/hcaptcha/sdk/k;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public J(Lcom/hcaptcha/sdk/HCaptchaException;)V
    .locals 2
    .param p1    # Lcom/hcaptcha/sdk/HCaptchaException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/hcaptcha/sdk/f;->a:Lcom/hcaptcha/sdk/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hcaptcha/sdk/m;->h(Lcom/hcaptcha/sdk/HCaptchaException;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_1
    iget-object v1, p0, Lcom/hcaptcha/sdk/f;->a:Lcom/hcaptcha/sdk/m;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/hcaptcha/sdk/m;->f()V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/hcaptcha/sdk/m;->d()Lcom/hcaptcha/sdk/HCaptchaStateListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hcaptcha/sdk/HCaptchaStateListener;->onFailure(Lcom/hcaptcha/sdk/HCaptchaException;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public N()V
    .locals 2

    iget-object v0, p0, Lcom/hcaptcha/sdk/f;->a:Lcom/hcaptcha/sdk/m;

    invoke-virtual {v0}, Lcom/hcaptcha/sdk/m;->c()Lcom/hcaptcha/sdk/HCaptchaConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getSize()Lcom/hcaptcha/sdk/HCaptchaSize;

    move-result-object v0

    sget-object v1, Lcom/hcaptcha/sdk/HCaptchaSize;->INVISIBLE:Lcom/hcaptcha/sdk/HCaptchaSize;

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/hcaptcha/sdk/f;->W()V

    :cond_0
    return-void
.end method

.method public Z(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    iget-object v0, p0, Lcom/hcaptcha/sdk/f;->a:Lcom/hcaptcha/sdk/m;

    invoke-virtual {v0}, Lcom/hcaptcha/sdk/m;->d()Lcom/hcaptcha/sdk/HCaptchaStateListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hcaptcha/sdk/HCaptchaStateListener;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/hcaptcha/sdk/f;->a:Lcom/hcaptcha/sdk/m;

    invoke-virtual {v0}, Lcom/hcaptcha/sdk/m;->c()Lcom/hcaptcha/sdk/HCaptchaConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getSize()Lcom/hcaptcha/sdk/HCaptchaSize;

    move-result-object v0

    sget-object v1, Lcom/hcaptcha/sdk/HCaptchaSize;->INVISIBLE:Lcom/hcaptcha/sdk/HCaptchaSize;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/hcaptcha/sdk/f;->W()V

    :cond_0
    iget-object v0, p0, Lcom/hcaptcha/sdk/f;->a:Lcom/hcaptcha/sdk/m;

    invoke-virtual {v0}, Lcom/hcaptcha/sdk/m;->d()Lcom/hcaptcha/sdk/HCaptchaStateListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hcaptcha/sdk/HCaptchaStateListener;->onOpen()V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "DialogFragment.onCancel"

    invoke-static {v0}, Lcom/hcaptcha/sdk/k;->a(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    new-instance p1, Lcom/hcaptcha/sdk/HCaptchaException;

    sget-object v0, Lcom/hcaptcha/sdk/HCaptchaError;->CHALLENGE_CLOSED:Lcom/hcaptcha/sdk/HCaptchaError;

    invoke-direct {p1, v0}, Lcom/hcaptcha/sdk/HCaptchaException;-><init>(Lcom/hcaptcha/sdk/HCaptchaError;)V

    invoke-virtual {p0, p1}, Lcom/hcaptcha/sdk/f;->J(Lcom/hcaptcha/sdk/HCaptchaException;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/hcaptcha/sdk/q$m;->f2:I

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p3, "DialogFragment.onCreateView"

    invoke-static {p3}, Lcom/hcaptcha/sdk/k;->a(Ljava/lang/String;)V

    const/4 p3, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "hCaptchaDialogListener"

    const-class v2, Lcom/hcaptcha/sdk/HCaptchaStateListener;

    invoke-static {v0, v1, v2}, Lcom/hcaptcha/sdk/b;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/hcaptcha/sdk/HCaptchaStateListener;
    :try_end_0
    .catch Landroid/util/AndroidRuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, "hCaptchaConfig"

    const-class v3, Lcom/hcaptcha/sdk/HCaptchaConfig;

    invoke-static {v0, v2, v3}, Lcom/hcaptcha/sdk/b;->c(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/hcaptcha/sdk/HCaptchaConfig;

    const-string v2, "hCaptchaInternalConfig"

    const-class v3, Lcom/hcaptcha/sdk/i;

    invoke-static {v0, v2, v3}, Lcom/hcaptcha/sdk/b;->c(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/hcaptcha/sdk/i;

    sget v0, Lcom/hcaptcha/sdk/q$k;->D:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const/4 p1, 0x1

    invoke-virtual {p3, p1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p3}, Landroid/view/View;->requestFocus()Z

    new-instance p1, Lcom/hcaptcha/sdk/e;

    invoke-direct {p1, p0}, Lcom/hcaptcha/sdk/e;-><init>(Lcom/hcaptcha/sdk/f;)V

    invoke-virtual {p3, p1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const-string p1, "DialogFragment.onCreateView inflated"

    invoke-static {p1}, Lcom/hcaptcha/sdk/k;->a(Ljava/lang/String;)V

    sget p1, Lcom/hcaptcha/sdk/q$h;->X1:I

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Landroid/webkit/WebView;

    sget p1, Lcom/hcaptcha/sdk/q$h;->F0:I

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/hcaptcha/sdk/f;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getLoading()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Lcom/hcaptcha/sdk/m;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v3, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    move-object v2, p1

    move-object v7, p0

    move-object v8, v1

    invoke-direct/range {v2 .. v9}, Lcom/hcaptcha/sdk/m;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/hcaptcha/sdk/HCaptchaConfig;Lcom/hcaptcha/sdk/i;Lcom/hcaptcha/sdk/p;Lcom/hcaptcha/sdk/HCaptchaStateListener;Landroid/webkit/WebView;)V

    iput-object p1, p0, Lcom/hcaptcha/sdk/f;->a:Lcom/hcaptcha/sdk/m;
    :try_end_1
    .catch Landroid/util/AndroidRuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-object p1, p3

    move-object p3, v1

    goto :goto_1

    :catch_1
    move-object p1, p3

    :goto_1
    const-string p2, "Cannot create view. Dismissing dialog..."

    invoke-static {p2}, Lcom/hcaptcha/sdk/k;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    if-eqz p3, :cond_1

    new-instance p2, Lcom/hcaptcha/sdk/HCaptchaException;

    sget-object v0, Lcom/hcaptcha/sdk/HCaptchaError;->ERROR:Lcom/hcaptcha/sdk/HCaptchaError;

    invoke-direct {p2, v0}, Lcom/hcaptcha/sdk/HCaptchaException;-><init>(Lcom/hcaptcha/sdk/HCaptchaError;)V

    invoke-virtual {p3, p2}, Lcom/hcaptcha/sdk/HCaptchaStateListener;->onFailure(Lcom/hcaptcha/sdk/HCaptchaException;)V

    :cond_1
    move-object p3, p1

    :goto_2
    return-object p3
.end method

.method public onDestroy()V
    .locals 1

    const-string v0, "DialogFragment.onDestroy"

    invoke-static {v0}, Lcom/hcaptcha/sdk/k;->a(Ljava/lang/String;)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/hcaptcha/sdk/f;->a:Lcom/hcaptcha/sdk/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hcaptcha/sdk/m;->b()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    const-string v0, "DialogFragment.onStart"

    invoke-static {v0}, Lcom/hcaptcha/sdk/k;->a(Ljava/lang/String;)V

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hcaptcha/sdk/f;->a:Lcom/hcaptcha/sdk/m;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iput v1, p0, Lcom/hcaptcha/sdk/f;->c:F

    iget-object v1, p0, Lcom/hcaptcha/sdk/f;->a:Lcom/hcaptcha/sdk/m;

    invoke-virtual {v1}, Lcom/hcaptcha/sdk/m;->c()Lcom/hcaptcha/sdk/HCaptchaConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getLoading()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/hcaptcha/sdk/f;->Z(Ljava/lang/String;)V

    return-void
.end method
