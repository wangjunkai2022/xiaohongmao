.class public Leltos/simpledialogfragment/input/c;
.super Leltos/simpledialogfragment/b;
.source "SimplePinDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leltos/simpledialogfragment/b<",
        "Leltos/simpledialogfragment/input/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SimplePinDialog."

.field public static final t:Ljava/lang/String; = "SimplePinDialog.pin"

.field protected static final u:Ljava/lang/String; = "SimplePinDialog.mask"

.field protected static final v:Ljava/lang/String; = "SimplePinDialog.length"

.field protected static final w:Ljava/lang/String; = "SimplePinDialog.checkPin"


# instance fields
.field private r:Lcom/alimuzaffar/lib/pin/PinEntryEditText;

.field private s:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Leltos/simpledialogfragment/b;-><init>()V

    .line 2
    sget v0, Leltos/simpledialogfragment/c$n;->S0:I

    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/f;->F0(I)Leltos/simpledialogfragment/f;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/f;->s0(Ljava/lang/String;)Leltos/simpledialogfragment/f;

    return-void
.end method

.method static synthetic W0(Leltos/simpledialogfragment/input/c;)V
    .locals 0

    invoke-virtual {p0}, Leltos/simpledialogfragment/b;->S0()V

    return-void
.end method

.method static synthetic X0(Leltos/simpledialogfragment/input/c;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    iget-object p0, p0, Leltos/simpledialogfragment/input/c;->s:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static synthetic Y0(Leltos/simpledialogfragment/input/c;)V
    .locals 0

    invoke-virtual {p0}, Leltos/simpledialogfragment/b;->S0()V

    return-void
.end method

.method public static Z0()Leltos/simpledialogfragment/input/c;
    .locals 1

    new-instance v0, Leltos/simpledialogfragment/input/c;

    invoke-direct {v0}, Leltos/simpledialogfragment/input/c;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected H0()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Leltos/simpledialogfragment/input/c;->a1()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/input/c;->c1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v2, p0, Leltos/simpledialogfragment/input/c;->s:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Leltos/simpledialogfragment/input/c;->s:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    const/4 v0, 0x0

    return v0
.end method

.method public M0(Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .line 1
    sget v0, Leltos/simpledialogfragment/c$l;->Z0:I

    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/b;->K0(I)Landroid/view/View;

    move-result-object v0

    .line 2
    sget v1, Leltos/simpledialogfragment/c$i;->B3:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    iput-object v1, p0, Leltos/simpledialogfragment/input/c;->r:Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    .line 3
    sget v1, Leltos/simpledialogfragment/c$i;->k2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v1, p0, Leltos/simpledialogfragment/input/c;->s:Lcom/google/android/material/textfield/TextInputLayout;

    .line 4
    iget-object v1, p0, Leltos/simpledialogfragment/input/c;->r:Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "SimplePinDialog.length"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->setMaxLength(I)V

    if-eqz p1, :cond_0

    .line 5
    iget-object v1, p0, Leltos/simpledialogfragment/input/c;->r:Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    const-string v2, "SimplePinDialog.pin"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :cond_0
    iget-object p1, p0, Leltos/simpledialogfragment/input/c;->r:Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 7
    iget-object p1, p0, Leltos/simpledialogfragment/input/c;->r:Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    new-instance v1, Leltos/simpledialogfragment/input/c$a;

    invoke-direct {v1, p0}, Leltos/simpledialogfragment/input/c$a;-><init>(Leltos/simpledialogfragment/input/c;)V

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 8
    iget-object p1, p0, Leltos/simpledialogfragment/input/c;->r:Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    new-instance v1, Leltos/simpledialogfragment/input/c$b;

    invoke-direct {v1, p0}, Leltos/simpledialogfragment/input/c$b;-><init>(Leltos/simpledialogfragment/input/c;)V

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 9
    iget-object p1, p0, Leltos/simpledialogfragment/input/c;->r:Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    new-instance v1, Leltos/simpledialogfragment/input/c$c;

    invoke-direct {v1, p0}, Leltos/simpledialogfragment/input/c$c;-><init>(Leltos/simpledialogfragment/input/c;)V

    invoke-virtual {p1, v1}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->setOnPinEnteredListener(Lcom/alimuzaffar/lib/pin/PinEntryEditText$i;)V

    return-object v0
.end method

.method protected N0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Leltos/simpledialogfragment/input/c;->f1()Z

    move-result v0

    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/b;->V0(Z)V

    .line 2
    iget-object v0, p0, Leltos/simpledialogfragment/input/c;->r:Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/f;->D0(Landroid/view/View;)V

    return-void
.end method

.method public R0(I)Landroid/os/Bundle;
    .locals 2

    .line 1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-virtual {p0}, Leltos/simpledialogfragment/input/c;->a1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimplePinDialog.pin"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public a1()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Leltos/simpledialogfragment/input/c;->r:Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leltos/simpledialogfragment/input/c;->r:Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public b1(I)Leltos/simpledialogfragment/input/c;
    .locals 1

    const-string v0, "SimplePinDialog.length"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->t0(Ljava/lang/String;I)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/input/c;

    return-object p1
.end method

.method protected c1(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SimplePinDialog.checkPin"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Leltos/simpledialogfragment/input/c;->a1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget p1, Leltos/simpledialogfragment/c$n;->b1:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->a0()Landroid/os/Bundle;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Leltos/simpledialogfragment/input/b$c;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Leltos/simpledialogfragment/input/b$c;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, v0}, Leltos/simpledialogfragment/input/b$c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Leltos/simpledialogfragment/input/b$c;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Leltos/simpledialogfragment/input/b$c;

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, v0}, Leltos/simpledialogfragment/input/b$c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public d1()V
    .locals 1

    iget-object v0, p0, Leltos/simpledialogfragment/input/c;->r:Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/f;->D0(Landroid/view/View;)V

    return-void
.end method

.method public e1(Ljava/lang/String;)Leltos/simpledialogfragment/input/c;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/input/c;->b1(I)Leltos/simpledialogfragment/input/c;

    :cond_0
    const-string v0, "SimplePinDialog.checkPin"

    .line 2
    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->v0(Ljava/lang/String;Ljava/lang/String;)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/input/c;

    return-object p1
.end method

.method protected f1()Z
    .locals 4

    invoke-virtual {p0}, Leltos/simpledialogfragment/input/c;->a1()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Leltos/simpledialogfragment/input/c;->a1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x4

    const-string v3, "SimplePinDialog.length"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Leltos/simpledialogfragment/input/c;->a1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimplePinDialog.pin"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
