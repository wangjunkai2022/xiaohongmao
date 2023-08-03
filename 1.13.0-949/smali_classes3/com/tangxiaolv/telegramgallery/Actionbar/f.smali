.class public Lcom/tangxiaolv/telegramgallery/Actionbar/f;
.super Ljava/lang/Object;
.source "BaseFragment.java"


# static fields
.field public static j:I = 0x1


# instance fields
.field private a:Z

.field protected b:Landroid/app/Dialog;

.field protected c:Landroid/view/View;

.field protected d:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

.field protected e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

.field protected f:I

.field protected g:Landroid/os/Bundle;

.field protected h:Z

.field protected i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->a:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->b:Landroid/app/Dialog;

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->h:Z

    .line 5
    iput-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->i:Z

    .line 6
    sget v0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->j:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->j:I

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->a:Z

    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->b:Landroid/app/Dialog;

    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->h:Z

    .line 11
    iput-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->i:Z

    .line 12
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->g:Landroid/os/Bundle;

    .line 13
    sget p1, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->j:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->j:I

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->f:I

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public B(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public C()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected D()V
    .locals 0

    return-void
.end method

.method public E()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->b:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->t()V

    :cond_1
    return-void
.end method

.method public F(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method protected G(ZLjava/lang/Runnable;)Landroid/animation/AnimatorSet;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected H(Landroid/app/Dialog;)V
    .locals 0

    return-void
.end method

.method public I()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public J()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->a:Z

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public K()V
    .locals 0

    return-void
.end method

.method public L()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->t()V

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->b:Landroid/app/Dialog;

    invoke-virtual {p0, v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->s(Landroid/app/Dialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->b:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public M(I[Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method public N()V
    .locals 0

    return-void
.end method

.method protected O(ZZ)V
    .locals 0

    return-void
.end method

.method protected P(ZZ)V
    .locals 0

    return-void
.end method

.method public Q(Lcom/tangxiaolv/telegramgallery/Actionbar/f;)Z
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->U(Lcom/tangxiaolv/telegramgallery/Actionbar/f;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public R(Lcom/tangxiaolv/telegramgallery/Actionbar/f;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->V(Lcom/tangxiaolv/telegramgallery/Actionbar/f;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public S(Lcom/tangxiaolv/telegramgallery/Actionbar/f;ZZ)Z
    .locals 2

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->W(Lcom/tangxiaolv/telegramgallery/Actionbar/f;ZZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public T()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->a0(Lcom/tangxiaolv/telegramgallery/Actionbar/f;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public U(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public V(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected W(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    if-eq v0, p1, :cond_4

    .line 2
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    .line 3
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->c:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->c:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eq p1, v1, :cond_1

    .line 8
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->c:Landroid/view/View;

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    .line 11
    :try_start_1
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eq p1, v1, :cond_3

    .line 14
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    .line 15
    :cond_3
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    if-nez v0, :cond_4

    .line 16
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->q(Landroid/content/Context;)Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    move-result-object p1

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    .line 17
    iput-object p0, p1, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->u:Lcom/tangxiaolv/telegramgallery/Actionbar/f;

    :cond_4
    return-void
.end method

.method public X(Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->b:Landroid/app/Dialog;

    return-void
.end method

.method public Y(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->Z(Landroid/app/Dialog;Z)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public Z(Landroid/app/Dialog;Z)Landroid/app/Dialog;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    if-eqz v1, :cond_2

    iget-boolean v2, v1, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->n:Z

    if-nez v2, :cond_2

    iget-boolean v2, v1, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->k:Z

    if-nez v2, :cond_2

    if-nez p2, :cond_0

    invoke-virtual {v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->D()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->b:Landroid/app/Dialog;

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 4
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->b:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 5
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    :cond_1
    :goto_0
    :try_start_1
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->b:Landroid/app/Dialog;

    const/4 p2, 0x1

    .line 7
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 8
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->b:Landroid/app/Dialog;

    new-instance p2, Lcom/tangxiaolv/telegramgallery/Actionbar/f$a;

    invoke-direct {p2, p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/f$a;-><init>(Lcom/tangxiaolv/telegramgallery/Actionbar/f;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 9
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->b:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 10
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->b:Landroid/app/Dialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-object v0
.end method

.method public a0(Landroid/content/Intent;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->e0(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method protected p()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->c:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->c:Landroid/view/View;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 8
    :try_start_1
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    :cond_2
    :goto_1
    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    .line 11
    :cond_3
    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    return-void
.end method

.method protected q(Landroid/content/Context;)Lcom/tangxiaolv/telegramgallery/Actionbar/a;
    .locals 2

    .line 1
    new-instance v0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-direct {v0, p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/r;->f(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 3
    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/r;->e(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->setItemsBackgroundColor(I)V

    return-object v0
.end method

.method public r(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public s(Landroid/app/Dialog;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public t()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->u(Z)V

    return-void
.end method

.method public u(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public v()Lcom/tangxiaolv/telegramgallery/Actionbar/a;
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    return-object v0
.end method

.method public w()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->g:Landroid/os/Bundle;

    return-object v0
.end method

.method public x()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->c:Landroid/view/View;

    return-object v0
.end method

.method public y()Lcom/tangxiaolv/telegramgallery/GalleryActivity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->E:Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public z()Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->b:Landroid/app/Dialog;

    return-object v0
.end method
