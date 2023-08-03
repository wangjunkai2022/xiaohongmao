.class public Leltos/simpledialogfragment/form/g;
.super Leltos/simpledialogfragment/b;
.source "SimpleFormDialog.java"

# interfaces
.implements Leltos/simpledialogfragment/f$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leltos/simpledialogfragment/form/g$b;,
        Leltos/simpledialogfragment/form/g$c;,
        Leltos/simpledialogfragment/form/g$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leltos/simpledialogfragment/b<",
        "Leltos/simpledialogfragment/form/g;",
        ">;",
        "Leltos/simpledialogfragment/f$c;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SimpleFormDialog."

.field protected static final u:Ljava/lang/String; = "SimpleFormDialog.inputFields"

.field protected static final v:Ljava/lang/String; = "SimpleFormDialog.autofocus"

.field protected static final w:Ljava/lang/String; = "form."


# instance fields
.field private r:Leltos/simpledialogfragment/form/g$c;

.field s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Leltos/simpledialogfragment/form/d<",
            "*>;>;"
        }
    .end annotation
.end field

.field t:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Leltos/simpledialogfragment/b;-><init>()V

    .line 2
    new-instance v0, Leltos/simpledialogfragment/form/g$c;

    invoke-direct {v0, p0}, Leltos/simpledialogfragment/form/g$c;-><init>(Leltos/simpledialogfragment/form/g;)V

    iput-object v0, p0, Leltos/simpledialogfragment/form/g;->r:Leltos/simpledialogfragment/form/g$c;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Leltos/simpledialogfragment/form/g;->s:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic W0(Leltos/simpledialogfragment/form/g;I)Z
    .locals 0

    invoke-direct {p0, p1}, Leltos/simpledialogfragment/form/g;->o1(I)Z

    move-result p0

    return p0
.end method

.method static synthetic X0(Leltos/simpledialogfragment/form/g;I)Z
    .locals 0

    invoke-direct {p0, p1}, Leltos/simpledialogfragment/form/g;->n1(I)Z

    move-result p0

    return p0
.end method

.method static synthetic Y0(Leltos/simpledialogfragment/form/g;)V
    .locals 0

    invoke-virtual {p0}, Leltos/simpledialogfragment/b;->S0()V

    return-void
.end method

.method static synthetic Z0(Leltos/simpledialogfragment/form/g;I)I
    .locals 0

    invoke-direct {p0, p1}, Leltos/simpledialogfragment/form/g;->l1(I)I

    move-result p0

    return p0
.end method

.method public static b1()Leltos/simpledialogfragment/form/g;
    .locals 1

    new-instance v0, Leltos/simpledialogfragment/form/g;

    invoke-direct {v0}, Leltos/simpledialogfragment/form/g;-><init>()V

    return-object v0
.end method

.method public static c1(Ljava/lang/String;)Leltos/simpledialogfragment/form/g;
    .locals 3

    .line 1
    invoke-static {}, Leltos/simpledialogfragment/form/g;->b1()Leltos/simpledialogfragment/form/g;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Leltos/simpledialogfragment/form/FormElement;

    .line 2
    invoke-static {p0}, Leltos/simpledialogfragment/form/Input;->email(Ljava/lang/String;)Leltos/simpledialogfragment/form/Input;

    move-result-object p0

    invoke-virtual {p0}, Leltos/simpledialogfragment/form/FormElement;->required()Leltos/simpledialogfragment/form/FormElement;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 3
    invoke-virtual {v0, v1}, Leltos/simpledialogfragment/form/g;->j1([Leltos/simpledialogfragment/form/FormElement;)Leltos/simpledialogfragment/form/g;

    move-result-object p0

    return-object p0
.end method

.method public static d1(Ljava/lang/String;Ljava/lang/String;)Leltos/simpledialogfragment/form/g;
    .locals 3

    .line 1
    invoke-static {}, Leltos/simpledialogfragment/form/g;->b1()Leltos/simpledialogfragment/form/g;

    move-result-object v0

    sget v1, Leltos/simpledialogfragment/c$n;->Y:I

    .line 2
    invoke-virtual {v0, v1}, Leltos/simpledialogfragment/f;->F0(I)Leltos/simpledialogfragment/f;

    move-result-object v0

    check-cast v0, Leltos/simpledialogfragment/form/g;

    .line 3
    invoke-virtual {v0, v1}, Leltos/simpledialogfragment/f;->r0(I)Leltos/simpledialogfragment/f;

    move-result-object v0

    check-cast v0, Leltos/simpledialogfragment/form/g;

    const/4 v1, 0x2

    new-array v1, v1, [Leltos/simpledialogfragment/form/FormElement;

    .line 4
    invoke-static {p0}, Leltos/simpledialogfragment/form/Input;->plain(Ljava/lang/String;)Leltos/simpledialogfragment/form/Input;

    move-result-object p0

    sget v2, Leltos/simpledialogfragment/c$n;->a1:I

    invoke-virtual {p0, v2}, Leltos/simpledialogfragment/form/Input;->hint(I)Leltos/simpledialogfragment/form/Input;

    move-result-object p0

    invoke-virtual {p0}, Leltos/simpledialogfragment/form/FormElement;->required()Leltos/simpledialogfragment/form/FormElement;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 5
    invoke-static {p1}, Leltos/simpledialogfragment/form/Input;->password(Ljava/lang/String;)Leltos/simpledialogfragment/form/Input;

    move-result-object p0

    invoke-virtual {p0}, Leltos/simpledialogfragment/form/FormElement;->required()Leltos/simpledialogfragment/form/FormElement;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    .line 6
    invoke-virtual {v0, v1}, Leltos/simpledialogfragment/form/g;->j1([Leltos/simpledialogfragment/form/FormElement;)Leltos/simpledialogfragment/form/g;

    move-result-object p0

    return-object p0
.end method

.method public static e1(Ljava/lang/String;Ljava/lang/String;)Leltos/simpledialogfragment/form/g;
    .locals 3

    .line 1
    invoke-static {}, Leltos/simpledialogfragment/form/g;->b1()Leltos/simpledialogfragment/form/g;

    move-result-object v0

    sget v1, Leltos/simpledialogfragment/c$n;->Y:I

    .line 2
    invoke-virtual {v0, v1}, Leltos/simpledialogfragment/f;->F0(I)Leltos/simpledialogfragment/f;

    move-result-object v0

    check-cast v0, Leltos/simpledialogfragment/form/g;

    .line 3
    invoke-virtual {v0, v1}, Leltos/simpledialogfragment/f;->r0(I)Leltos/simpledialogfragment/f;

    move-result-object v0

    check-cast v0, Leltos/simpledialogfragment/form/g;

    const/4 v1, 0x2

    new-array v1, v1, [Leltos/simpledialogfragment/form/FormElement;

    .line 4
    invoke-static {p0}, Leltos/simpledialogfragment/form/Input;->email(Ljava/lang/String;)Leltos/simpledialogfragment/form/Input;

    move-result-object p0

    invoke-virtual {p0}, Leltos/simpledialogfragment/form/FormElement;->required()Leltos/simpledialogfragment/form/FormElement;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 5
    invoke-static {p1}, Leltos/simpledialogfragment/form/Input;->password(Ljava/lang/String;)Leltos/simpledialogfragment/form/Input;

    move-result-object p0

    invoke-virtual {p0}, Leltos/simpledialogfragment/form/FormElement;->required()Leltos/simpledialogfragment/form/FormElement;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    .line 6
    invoke-virtual {v0, v1}, Leltos/simpledialogfragment/form/g;->j1([Leltos/simpledialogfragment/form/FormElement;)Leltos/simpledialogfragment/form/g;

    move-result-object p0

    return-object p0
.end method

.method public static f1(Ljava/lang/String;)Leltos/simpledialogfragment/form/g;
    .locals 3

    .line 1
    invoke-static {}, Leltos/simpledialogfragment/form/g;->b1()Leltos/simpledialogfragment/form/g;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Leltos/simpledialogfragment/form/FormElement;

    .line 2
    invoke-static {p0}, Leltos/simpledialogfragment/form/Input;->phone(Ljava/lang/String;)Leltos/simpledialogfragment/form/Input;

    move-result-object p0

    invoke-virtual {p0}, Leltos/simpledialogfragment/form/FormElement;->required()Leltos/simpledialogfragment/form/FormElement;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 3
    invoke-virtual {v0, v1}, Leltos/simpledialogfragment/form/g;->j1([Leltos/simpledialogfragment/form/FormElement;)Leltos/simpledialogfragment/form/g;

    move-result-object p0

    return-object p0
.end method

.method public static g1(Ljava/lang/String;)Leltos/simpledialogfragment/form/g;
    .locals 3

    .line 1
    invoke-static {}, Leltos/simpledialogfragment/form/g;->b1()Leltos/simpledialogfragment/form/g;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Leltos/simpledialogfragment/form/FormElement;

    .line 2
    invoke-static {p0}, Leltos/simpledialogfragment/form/Input;->password(Ljava/lang/String;)Leltos/simpledialogfragment/form/Input;

    move-result-object p0

    invoke-virtual {p0}, Leltos/simpledialogfragment/form/FormElement;->required()Leltos/simpledialogfragment/form/FormElement;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 3
    invoke-virtual {v0, v1}, Leltos/simpledialogfragment/form/g;->j1([Leltos/simpledialogfragment/form/FormElement;)Leltos/simpledialogfragment/form/g;

    move-result-object p0

    return-object p0
.end method

.method public static h1(Ljava/lang/String;)Leltos/simpledialogfragment/form/g;
    .locals 3

    .line 1
    invoke-static {}, Leltos/simpledialogfragment/form/g;->b1()Leltos/simpledialogfragment/form/g;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Leltos/simpledialogfragment/form/FormElement;

    .line 2
    invoke-static {p0}, Leltos/simpledialogfragment/form/Input;->pin(Ljava/lang/String;)Leltos/simpledialogfragment/form/Input;

    move-result-object p0

    invoke-virtual {p0}, Leltos/simpledialogfragment/form/FormElement;->required()Leltos/simpledialogfragment/form/FormElement;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 3
    invoke-virtual {v0, v1}, Leltos/simpledialogfragment/form/g;->j1([Leltos/simpledialogfragment/form/FormElement;)Leltos/simpledialogfragment/form/g;

    move-result-object p0

    return-object p0
.end method

.method public static i1(Ljava/lang/String;I)Leltos/simpledialogfragment/form/g;
    .locals 2

    .line 1
    invoke-static {}, Leltos/simpledialogfragment/form/g;->b1()Leltos/simpledialogfragment/form/g;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Leltos/simpledialogfragment/form/FormElement;

    .line 2
    invoke-static {p0}, Leltos/simpledialogfragment/form/Input;->pin(Ljava/lang/String;)Leltos/simpledialogfragment/form/Input;

    move-result-object p0

    invoke-virtual {p0}, Leltos/simpledialogfragment/form/FormElement;->required()Leltos/simpledialogfragment/form/FormElement;

    move-result-object p0

    check-cast p0, Leltos/simpledialogfragment/form/Input;

    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/form/Input;->min(I)Leltos/simpledialogfragment/form/Input;

    move-result-object p0

    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/form/Input;->max(I)Leltos/simpledialogfragment/form/Input;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v1, p1

    .line 3
    invoke-virtual {v0, v1}, Leltos/simpledialogfragment/form/g;->j1([Leltos/simpledialogfragment/form/FormElement;)Leltos/simpledialogfragment/form/g;

    move-result-object p0

    return-object p0
.end method

.method private k1()I
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Leltos/simpledialogfragment/form/g;->l1(I)I

    move-result v0

    return v0
.end method

.method private l1(I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SimpleFormDialog.inputFields"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0, p1}, Leltos/simpledialogfragment/form/g;->m1(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return p1

    :cond_2
    :goto_0
    const p1, 0x7fffffff

    return p1
.end method

.method private m1(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SimpleFormDialog.inputFields"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-ltz p1, :cond_0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Leltos/simpledialogfragment/form/Hint;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private n1(I)Z
    .locals 1

    invoke-direct {p0, p1}, Leltos/simpledialogfragment/form/g;->m1(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Leltos/simpledialogfragment/form/g;->l1(I)I

    move-result p1

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private o1(I)Z
    .locals 1

    invoke-direct {p0}, Leltos/simpledialogfragment/form/g;->k1()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p1}, Leltos/simpledialogfragment/form/g;->n1(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method protected H0()Z
    .locals 8

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/form/g;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leltos/simpledialogfragment/form/d;

    .line 2
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Leltos/simpledialogfragment/form/d;->g(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    if-eqz v2, :cond_1

    .line 3
    iget-object v2, p0, Leltos/simpledialogfragment/form/g;->r:Leltos/simpledialogfragment/form/g$c;

    invoke-virtual {v3, v2}, Leltos/simpledialogfragment/form/d;->a(Leltos/simpledialogfragment/form/g$c;)Z

    :cond_1
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 4
    :cond_2
    instance-of v4, v3, Leltos/simpledialogfragment/form/f;

    if-eqz v4, :cond_0

    .line 5
    iget-object v4, v3, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    iget-object v4, v4, Leltos/simpledialogfragment/form/FormElement;->resultKey:Ljava/lang/String;

    move-object v6, v3

    check-cast v6, Leltos/simpledialogfragment/form/f;

    invoke-virtual {v6}, Leltos/simpledialogfragment/form/f;->i()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v4, v7}, Leltos/simpledialogfragment/form/g;->p1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v6, v1, v4}, Leltos/simpledialogfragment/form/f;->l(ZLjava/lang/String;)V

    if-eqz v2, :cond_1

    .line 7
    iget-object v2, p0, Leltos/simpledialogfragment/form/g;->r:Leltos/simpledialogfragment/form/g$c;

    invoke-virtual {v3, v2}, Leltos/simpledialogfragment/form/d;->a(Leltos/simpledialogfragment/form/g$c;)Z

    goto :goto_1

    :cond_3
    return v2
.end method

.method public M0(Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 1
    sget v0, Leltos/simpledialogfragment/c$l;->L0:I

    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/b;->K0(I)Landroid/view/View;

    move-result-object v0

    .line 2
    sget v1, Leltos/simpledialogfragment/c$i;->V0:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {p0, v1, p1}, Leltos/simpledialogfragment/form/g;->q1(Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Leltos/simpledialogfragment/form/g;->r1()Z

    move-result p1

    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/b;->V0(Z)V

    return-object v0
.end method

.method protected N0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Leltos/simpledialogfragment/form/g;->r1()Z

    move-result v0

    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/b;->V0(Z)V

    .line 4
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "SimpleFormDialog.autofocus"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/form/g;->s1(I)V

    :cond_1
    return-void
.end method

.method public R(Ljava/lang/String;ILandroid/os/Bundle;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SimpleFormDialog.inputFields"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Leltos/simpledialogfragment/form/g;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leltos/simpledialogfragment/form/d;

    .line 3
    instance-of v2, v1, Leltos/simpledialogfragment/f$c;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Leltos/simpledialogfragment/f$c;

    invoke-interface {v1, p1, p2, p3}, Leltos/simpledialogfragment/f$c;->R(Ljava/lang/String;ILandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public R0(I)Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v0, p0, Leltos/simpledialogfragment/form/g;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leltos/simpledialogfragment/form/d;

    .line 3
    iget-object v2, v1, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    iget-object v2, v2, Leltos/simpledialogfragment/form/FormElement;->resultKey:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Leltos/simpledialogfragment/form/d;->d(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public a1(Z)Leltos/simpledialogfragment/form/g;
    .locals 1

    const-string v0, "SimpleFormDialog.autofocus"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->w0(Ljava/lang/String;Z)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/form/g;

    return-object p1
.end method

.method public varargs j1([Leltos/simpledialogfragment/form/FormElement;)Leltos/simpledialogfragment/form/g;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "SimpleFormDialog.inputFields"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Leltos/simpledialogfragment/form/g;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget-object v2, p0, Leltos/simpledialogfragment/form/g;->s:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leltos/simpledialogfragment/form/d;

    invoke-virtual {v2, v1}, Leltos/simpledialogfragment/form/d;->e(Landroid/os/Bundle;)V

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "form."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected p1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->a0()Landroid/os/Bundle;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Leltos/simpledialogfragment/form/g$d;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Leltos/simpledialogfragment/form/g$d;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, v0}, Leltos/simpledialogfragment/form/g$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Leltos/simpledialogfragment/form/g$d;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Leltos/simpledialogfragment/form/g$d;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, v0}, Leltos/simpledialogfragment/form/g$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected q1(Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 9
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Leltos/simpledialogfragment/form/g;->t:Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "SimpleFormDialog.inputFields"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Leltos/simpledialogfragment/form/g;->s:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 6
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leltos/simpledialogfragment/form/FormElement;

    invoke-virtual {v3}, Leltos/simpledialogfragment/form/FormElement;->buildViewHolder()Leltos/simpledialogfragment/form/d;

    move-result-object v3

    .line 7
    invoke-virtual {v3}, Leltos/simpledialogfragment/form/d;->b()I

    move-result v4

    iget-object v5, p0, Leltos/simpledialogfragment/form/g;->t:Landroid/view/ViewGroup;

    invoke-virtual {p0, v4, v5, v1}, Leltos/simpledialogfragment/b;->L0(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    if-nez p2, :cond_0

    move-object v6, v5

    goto :goto_1

    .line 8
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "form."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 9
    :goto_1
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->getContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Leltos/simpledialogfragment/form/g$b;

    invoke-direct {v8, p0, v2, v0, v5}, Leltos/simpledialogfragment/form/g$b;-><init>(Leltos/simpledialogfragment/form/g;IILeltos/simpledialogfragment/form/g$a;)V

    invoke-virtual {v3, v4, v7, v6, v8}, Leltos/simpledialogfragment/form/d;->f(Landroid/view/View;Landroid/content/Context;Landroid/os/Bundle;Leltos/simpledialogfragment/form/g$b;)V

    .line 10
    iget-object v5, p0, Leltos/simpledialogfragment/form/g;->t:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 11
    iget-object v4, p0, Leltos/simpledialogfragment/form/g;->s:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected r1()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Leltos/simpledialogfragment/form/g;->k1()I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    invoke-direct {p0, v0}, Leltos/simpledialogfragment/form/g;->n1(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Leltos/simpledialogfragment/form/g;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Leltos/simpledialogfragment/form/g;->s:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leltos/simpledialogfragment/form/d;

    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Leltos/simpledialogfragment/form/d;->c(Landroid/content/Context;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected s1(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/form/g;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Leltos/simpledialogfragment/form/g;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/form/d;

    iget-object v0, p0, Leltos/simpledialogfragment/form/g;->r:Leltos/simpledialogfragment/form/g$c;

    invoke-virtual {p1, v0}, Leltos/simpledialogfragment/form/d;->a(Leltos/simpledialogfragment/form/g$c;)Z

    :cond_0
    return-void
.end method
