.class public Leltos/simpledialogfragment/d;
.super Leltos/simpledialogfragment/b;
.source "SimpleCheckDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leltos/simpledialogfragment/b<",
        "Leltos/simpledialogfragment/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SimpleCheckDialog."

.field public static final s:Ljava/lang/String; = "SimpleCheckDialog.CHECKED"

.field protected static final t:Ljava/lang/String; = "simpleCheckDialog.check_label"

.field protected static final u:Ljava/lang/String; = "simpleCheckDialog.check_required"


# instance fields
.field private r:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Leltos/simpledialogfragment/b;-><init>()V

    return-void
.end method

.method static synthetic W0(Leltos/simpledialogfragment/d;)Z
    .locals 0

    invoke-direct {p0}, Leltos/simpledialogfragment/d;->Y0()Z

    move-result p0

    return p0
.end method

.method public static X0()Leltos/simpledialogfragment/d;
    .locals 1

    new-instance v0, Leltos/simpledialogfragment/d;

    invoke-direct {v0}, Leltos/simpledialogfragment/d;-><init>()V

    return-object v0
.end method

.method private Y0()Z
    .locals 2

    iget-object v0, p0, Leltos/simpledialogfragment/d;->r:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "simpleCheckDialog.check_required"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public M0(Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 1
    sget v0, Leltos/simpledialogfragment/c$l;->H0:I

    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/b;->K0(I)Landroid/view/View;

    move-result-object v0

    .line 2
    sget v1, Leltos/simpledialogfragment/c$i;->E0:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Leltos/simpledialogfragment/d;->r:Landroid/widget/CheckBox;

    const-string v2, "simpleCheckDialog.check_label"

    .line 3
    invoke-virtual {p0, v2}, Leltos/simpledialogfragment/f;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    const-string v2, "SimpleCheckDialog.CHECKED"

    if-eqz p1, :cond_0

    .line 4
    iget-object v3, p0, Leltos/simpledialogfragment/d;->r:Landroid/widget/CheckBox;

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Leltos/simpledialogfragment/d;->r:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 6
    :goto_0
    iget-object p1, p0, Leltos/simpledialogfragment/d;->r:Landroid/widget/CheckBox;

    new-instance v1, Leltos/simpledialogfragment/d$a;

    invoke-direct {v1, p0}, Leltos/simpledialogfragment/d$a;-><init>(Leltos/simpledialogfragment/d;)V

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object v0
.end method

.method protected N0()V
    .locals 1

    invoke-direct {p0}, Leltos/simpledialogfragment/d;->Y0()Z

    move-result v0

    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/b;->V0(Z)V

    return-void
.end method

.method public R0(I)Landroid/os/Bundle;
    .locals 2

    .line 1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v0, p0, Leltos/simpledialogfragment/d;->r:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const-string v1, "SimpleCheckDialog.CHECKED"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p1
.end method

.method public Z0(Z)Leltos/simpledialogfragment/d;
    .locals 1

    const-string v0, "SimpleCheckDialog.CHECKED"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->w0(Ljava/lang/String;Z)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/d;

    return-object p1
.end method

.method public a1(Z)Leltos/simpledialogfragment/d;
    .locals 1

    const-string v0, "simpleCheckDialog.check_required"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->w0(Ljava/lang/String;Z)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/d;

    return-object p1
.end method

.method public b1(I)Leltos/simpledialogfragment/d;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    const-string v0, "simpleCheckDialog.check_label"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->t0(Ljava/lang/String;I)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/d;

    return-object p1
.end method

.method public c1(Ljava/lang/String;)Leltos/simpledialogfragment/d;
    .locals 1

    const-string v0, "simpleCheckDialog.check_label"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->v0(Ljava/lang/String;Ljava/lang/String;)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/d;

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Leltos/simpledialogfragment/d;->r:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const-string v1, "SimpleCheckDialog.CHECKED"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
