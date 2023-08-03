.class public Leltos/simpledialogfragment/SimpleProgressDialog;
.super Leltos/simpledialogfragment/b;
.source "SimpleProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leltos/simpledialogfragment/SimpleProgressDialog$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leltos/simpledialogfragment/b<",
        "Leltos/simpledialogfragment/SimpleProgressDialog;",
        ">;"
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "SimpleProgressDialog.text_progress"

.field private static final B:Ljava/lang/String; = "SimpleProgressDialog.text_info"

.field private static final C:Ljava/lang/String; = "SimpleProgressDialog.type"

.field private static final D:Ljava/lang/String; = "SimpleProgressDialog.auto_dismiss"

.field public static final E:I = 0x5

.field public static final TAG:Ljava/lang/String; = "SimpleProgressDialog."

.field private static final v:Ljava/lang/String; = "SimpleProgressDialog.indeterminate"

.field private static final w:Ljava/lang/String; = "SimpleProgressDialog.max"

.field private static final x:Ljava/lang/String; = "SimpleProgressDialog.progress"

.field private static final y:Ljava/lang/String; = "SimpleProgressDialog.progress2"

.field private static final z:Ljava/lang/String; = "SimpleProgressDialog.percentage"


# instance fields
.field protected r:Landroid/widget/ProgressBar;

.field protected s:Landroid/widget/TextView;

.field protected t:Landroid/widget/TextView;

.field protected u:Leltos/simpledialogfragment/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leltos/simpledialogfragment/g<",
            "***>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Leltos/simpledialogfragment/b;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/f;->W(Z)Leltos/simpledialogfragment/f;

    const/high16 v0, 0x1040000

    .line 3
    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/f;->p0(I)Leltos/simpledialogfragment/f;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/f;->s0(Ljava/lang/String;)Leltos/simpledialogfragment/f;

    return-void
.end method

.method public static W0()Leltos/simpledialogfragment/SimpleProgressDialog;
    .locals 2

    .line 1
    invoke-static {}, Leltos/simpledialogfragment/SimpleProgressDialog;->X0()Leltos/simpledialogfragment/SimpleProgressDialog;

    move-result-object v0

    sget-object v1, Leltos/simpledialogfragment/SimpleProgressDialog$Type;->BAR:Leltos/simpledialogfragment/SimpleProgressDialog$Type;

    .line 2
    invoke-virtual {v0, v1}, Leltos/simpledialogfragment/SimpleProgressDialog;->b1(Leltos/simpledialogfragment/SimpleProgressDialog$Type;)Leltos/simpledialogfragment/SimpleProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Leltos/simpledialogfragment/SimpleProgressDialog;->Z0(Z)Leltos/simpledialogfragment/SimpleProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static X0()Leltos/simpledialogfragment/SimpleProgressDialog;
    .locals 1

    new-instance v0, Leltos/simpledialogfragment/SimpleProgressDialog;

    invoke-direct {v0}, Leltos/simpledialogfragment/SimpleProgressDialog;-><init>()V

    return-object v0
.end method

.method public static Y0()Leltos/simpledialogfragment/SimpleProgressDialog;
    .locals 2

    .line 1
    invoke-static {}, Leltos/simpledialogfragment/SimpleProgressDialog;->X0()Leltos/simpledialogfragment/SimpleProgressDialog;

    move-result-object v0

    sget-object v1, Leltos/simpledialogfragment/SimpleProgressDialog$Type;->CIRCLE:Leltos/simpledialogfragment/SimpleProgressDialog$Type;

    .line 2
    invoke-virtual {v0, v1}, Leltos/simpledialogfragment/SimpleProgressDialog;->b1(Leltos/simpledialogfragment/SimpleProgressDialog$Type;)Leltos/simpledialogfragment/SimpleProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Leltos/simpledialogfragment/SimpleProgressDialog;->Z0(Z)Leltos/simpledialogfragment/SimpleProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method private k1(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/SimpleProgressDialog;->s:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Leltos/simpledialogfragment/SimpleProgressDialog;->s:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const-string v0, "SimpleProgressDialog.text_progress"

    .line 4
    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->v0(Ljava/lang/String;Ljava/lang/String;)Leltos/simpledialogfragment/f;

    :goto_1
    return-void
.end method


# virtual methods
.method protected M0(Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .line 1
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SimpleProgressDialog.type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Leltos/simpledialogfragment/SimpleProgressDialog$Type;->CIRCLE:Leltos/simpledialogfragment/SimpleProgressDialog$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2
    sget v0, Leltos/simpledialogfragment/c$l;->b1:I

    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/b;->K0(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    sget v0, Leltos/simpledialogfragment/c$l;->a1:I

    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/b;->K0(I)Landroid/view/View;

    move-result-object v0

    .line 4
    :goto_0
    sget v1, Leltos/simpledialogfragment/c$i;->F3:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Leltos/simpledialogfragment/SimpleProgressDialog;->r:Landroid/widget/ProgressBar;

    .line 5
    sget v1, Leltos/simpledialogfragment/c$i;->H3:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Leltos/simpledialogfragment/SimpleProgressDialog;->s:Landroid/widget/TextView;

    .line 6
    sget v1, Leltos/simpledialogfragment/c$i;->j2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Leltos/simpledialogfragment/SimpleProgressDialog;->t:Landroid/widget/TextView;

    if-nez p1, :cond_1

    .line 7
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object p1

    :cond_1
    const-string v1, "SimpleProgressDialog.text_info"

    .line 8
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Leltos/simpledialogfragment/SimpleProgressDialog;->e1(Ljava/lang/String;)V

    const-string v1, "SimpleProgressDialog.text_progress"

    .line 9
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Leltos/simpledialogfragment/SimpleProgressDialog;->k1(Ljava/lang/String;)V

    const/4 v1, 0x1

    const-string v2, "SimpleProgressDialog.indeterminate"

    .line 10
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "SimpleProgressDialog.progress"

    const/4 v3, 0x0

    .line 11
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "SimpleProgressDialog.progress2"

    .line 12
    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x64

    const-string v5, "SimpleProgressDialog.max"

    .line 13
    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 14
    invoke-virtual {p0, v1, v2, v3, p1}, Leltos/simpledialogfragment/SimpleProgressDialog;->i1(Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method

.method protected V(ILandroid/os/Bundle;)Z
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object p2, p0, Leltos/simpledialogfragment/SimpleProgressDialog;->u:Leltos/simpledialogfragment/g;

    if-eqz p2, :cond_1

    const/4 v0, -0x3

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p2, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_1
    const/4 p2, 0x0

    .line 3
    invoke-super {p0, p1, p2}, Leltos/simpledialogfragment/b;->V(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public Z0(Z)Leltos/simpledialogfragment/SimpleProgressDialog;
    .locals 1

    const-string v0, "SimpleProgressDialog.percentage"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->w0(Ljava/lang/String;Z)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/SimpleProgressDialog;

    return-object p1
.end method

.method public a1(Leltos/simpledialogfragment/g;ZZ)Leltos/simpledialogfragment/SimpleProgressDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leltos/simpledialogfragment/g<",
            "***>;ZZ)",
            "Leltos/simpledialogfragment/SimpleProgressDialog;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Leltos/simpledialogfragment/SimpleProgressDialog;->u:Leltos/simpledialogfragment/g;

    .line 2
    invoke-virtual {p1, p0}, Leltos/simpledialogfragment/g;->a(Leltos/simpledialogfragment/SimpleProgressDialog;)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/SimpleProgressDialog;->Z0(Z)Leltos/simpledialogfragment/SimpleProgressDialog;

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/f;->W(Z)Leltos/simpledialogfragment/f;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/high16 p2, 0x1040000

    .line 5
    invoke-virtual {p0, p2}, Leltos/simpledialogfragment/f;->p0(I)Leltos/simpledialogfragment/f;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/f;->q0(Ljava/lang/String;)Leltos/simpledialogfragment/f;

    :goto_0
    const-string p2, "SimpleProgressDialog.auto_dismiss"

    .line 7
    invoke-virtual {p0, p2, p3}, Leltos/simpledialogfragment/f;->w0(Ljava/lang/String;Z)Leltos/simpledialogfragment/f;

    if-eqz p3, :cond_1

    .line 8
    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/f;->s0(Ljava/lang/String;)Leltos/simpledialogfragment/f;

    goto :goto_1

    :cond_1
    const p2, 0x104000a

    .line 9
    invoke-virtual {p0, p2}, Leltos/simpledialogfragment/f;->r0(I)Leltos/simpledialogfragment/f;

    .line 10
    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/b;->V0(Z)V

    :goto_1
    return-object p0
.end method

.method public b1(Leltos/simpledialogfragment/SimpleProgressDialog$Type;)Leltos/simpledialogfragment/SimpleProgressDialog;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string v0, "SimpleProgressDialog.type"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->t0(Ljava/lang/String;I)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/SimpleProgressDialog;

    return-object p1
.end method

.method public c1()V
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v1, v1}, Leltos/simpledialogfragment/SimpleProgressDialog;->i1(Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 2
    iget-object v0, p0, Leltos/simpledialogfragment/SimpleProgressDialog;->u:Leltos/simpledialogfragment/g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/b;->V0(Z)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/b;->U0(Z)V

    .line 5
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SimpleProgressDialog.auto_dismiss"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    const/4 v0, 0x5

    .line 7
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0, v1}, Leltos/simpledialogfragment/SimpleProgressDialog;->V(ILandroid/os/Bundle;)Z

    :cond_0
    return-void
.end method

.method public d1()V
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Leltos/simpledialogfragment/SimpleProgressDialog;->i1(Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public e1(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/SimpleProgressDialog;->t:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Leltos/simpledialogfragment/SimpleProgressDialog;->t:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const-string v0, "SimpleProgressDialog.text_info"

    .line 4
    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->v0(Ljava/lang/String;Ljava/lang/String;)Leltos/simpledialogfragment/f;

    :goto_1
    return-void
.end method

.method public f1(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Leltos/simpledialogfragment/SimpleProgressDialog;->i1(Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public g1(I)V
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Leltos/simpledialogfragment/SimpleProgressDialog;->i1(Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public h1(II)V
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Leltos/simpledialogfragment/SimpleProgressDialog;->i1(Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public i1(Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/SimpleProgressDialog;->r:Landroid/widget/ProgressBar;

    if-nez v0, :cond_3

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "SimpleProgressDialog.indeterminate"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->w0(Ljava/lang/String;Z)Leltos/simpledialogfragment/f;

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "SimpleProgressDialog.progress"

    invoke-virtual {p0, p2, p1}, Leltos/simpledialogfragment/f;->t0(Ljava/lang/String;I)Leltos/simpledialogfragment/f;

    :cond_1
    if-eqz p3, :cond_2

    .line 4
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "SimpleProgressDialog.progress2"

    invoke-virtual {p0, p2, p1}, Leltos/simpledialogfragment/f;->t0(Ljava/lang/String;I)Leltos/simpledialogfragment/f;

    :cond_2
    if-eqz p4, :cond_a

    .line 5
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "SimpleProgressDialog.max"

    invoke-virtual {p0, p2, p1}, Leltos/simpledialogfragment/f;->t0(Ljava/lang/String;I)Leltos/simpledialogfragment/f;

    goto/16 :goto_1

    :cond_3
    if-eqz p1, :cond_4

    .line 6
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    :cond_4
    if-eqz p2, :cond_5

    .line 7
    iget-object p1, p0, Leltos/simpledialogfragment/SimpleProgressDialog;->r:Landroid/widget/ProgressBar;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_5
    if-eqz p3, :cond_6

    .line 8
    iget-object p1, p0, Leltos/simpledialogfragment/SimpleProgressDialog;->r:Landroid/widget/ProgressBar;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    :cond_6
    if-eqz p4, :cond_7

    .line 9
    iget-object p1, p0, Leltos/simpledialogfragment/SimpleProgressDialog;->r:Landroid/widget/ProgressBar;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 10
    :cond_7
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "SimpleProgressDialog.percentage"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 11
    iget-object p1, p0, Leltos/simpledialogfragment/SimpleProgressDialog;->r:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    .line 12
    invoke-direct {p0, p1}, Leltos/simpledialogfragment/SimpleProgressDialog;->k1(Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_8
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    if-lt p1, p2, :cond_9

    .line 14
    iget-object p1, p0, Leltos/simpledialogfragment/SimpleProgressDialog;->r:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    iget-object p2, p0, Leltos/simpledialogfragment/SimpleProgressDialog;->r:Landroid/widget/ProgressBar;

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getMin()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-double p1, p1

    mul-double p1, p1, p3

    iget-object p3, p0, Leltos/simpledialogfragment/SimpleProgressDialog;->r:Landroid/widget/ProgressBar;

    .line 15
    invoke-virtual {p3}, Landroid/widget/ProgressBar;->getMax()I

    move-result p3

    iget-object p4, p0, Leltos/simpledialogfragment/SimpleProgressDialog;->r:Landroid/widget/ProgressBar;

    invoke-virtual {p4}, Landroid/widget/ProgressBar;->getMin()I

    move-result p4

    sub-int/2addr p3, p4

    goto :goto_0

    .line 16
    :cond_9
    iget-object p1, p0, Leltos/simpledialogfragment/SimpleProgressDialog;->r:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    int-to-double p1, p1

    mul-double p1, p1, p3

    iget-object p3, p0, Leltos/simpledialogfragment/SimpleProgressDialog;->r:Landroid/widget/ProgressBar;

    invoke-virtual {p3}, Landroid/widget/ProgressBar;->getMax()I

    move-result p3

    :goto_0
    int-to-double p3, p3

    div-double/2addr p1, p3

    .line 17
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Leltos/simpledialogfragment/SimpleProgressDialog;->k1(Ljava/lang/String;)V

    :cond_a
    :goto_1
    return-void
.end method

.method public j1(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/SimpleProgressDialog;->Z0(Z)Leltos/simpledialogfragment/SimpleProgressDialog;

    .line 2
    invoke-direct {p0, p1}, Leltos/simpledialogfragment/SimpleProgressDialog;->k1(Ljava/lang/String;)V

    return-void
.end method

.method public l1(I)V
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, v1}, Leltos/simpledialogfragment/SimpleProgressDialog;->i1(Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Leltos/simpledialogfragment/b;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Leltos/simpledialogfragment/SimpleProgressDialog;->u:Leltos/simpledialogfragment/g;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Leltos/simpledialogfragment/SimpleProgressDialog;->r:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    const-string v1, "SimpleProgressDialog.indeterminate"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3
    iget-object v0, p0, Leltos/simpledialogfragment/SimpleProgressDialog;->r:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    const-string v1, "SimpleProgressDialog.max"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    iget-object v0, p0, Leltos/simpledialogfragment/SimpleProgressDialog;->r:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    const-string v1, "SimpleProgressDialog.progress"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    iget-object v0, p0, Leltos/simpledialogfragment/SimpleProgressDialog;->r:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v0

    const-string v1, "SimpleProgressDialog.progress2"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    iget-object v0, p0, Leltos/simpledialogfragment/SimpleProgressDialog;->t:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimpleProgressDialog.text_info"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Leltos/simpledialogfragment/SimpleProgressDialog;->s:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimpleProgressDialog.text_progress"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
