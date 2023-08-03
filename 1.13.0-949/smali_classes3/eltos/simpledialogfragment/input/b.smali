.class public Leltos/simpledialogfragment/input/b;
.super Leltos/simpledialogfragment/b;
.source "SimpleInputDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leltos/simpledialogfragment/input/b$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leltos/simpledialogfragment/b<",
        "Leltos/simpledialogfragment/input/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SimpleInputDialog."

.field public static final t:Ljava/lang/String; = "SimpleInputDialog.text"

.field protected static final u:Ljava/lang/String; = "SimpleInputDialog.hint"

.field protected static final v:Ljava/lang/String; = "SimpleInputDialog.input_type"

.field protected static final w:Ljava/lang/String; = "SimpleInputDialog.allow_empty"

.field protected static final x:Ljava/lang/String; = "SimpleInputDialog.max_length"

.field protected static final y:Ljava/lang/String; = "SimpleInputDialog.suggestions"


# instance fields
.field private r:Landroid/widget/AutoCompleteTextView;

.field private s:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Leltos/simpledialogfragment/b;-><init>()V

    return-void
.end method

.method static synthetic W0(Leltos/simpledialogfragment/input/b;)V
    .locals 0

    invoke-virtual {p0}, Leltos/simpledialogfragment/b;->S0()V

    return-void
.end method

.method public static Y0()Leltos/simpledialogfragment/input/b;
    .locals 1

    new-instance v0, Leltos/simpledialogfragment/input/b;

    invoke-direct {v0}, Leltos/simpledialogfragment/input/b;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected H0()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Leltos/simpledialogfragment/input/b;->Z0()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/input/b;->f1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v2, p0, Leltos/simpledialogfragment/input/b;->s:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Leltos/simpledialogfragment/input/b;->s:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    const/4 v0, 0x0

    return v0
.end method

.method public M0(Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .line 1
    sget v0, Leltos/simpledialogfragment/c$l;->W0:I

    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/b;->K0(I)Landroid/view/View;

    move-result-object v0

    .line 2
    sget v1, Leltos/simpledialogfragment/c$i;->D1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    iput-object v1, p0, Leltos/simpledialogfragment/input/b;->r:Landroid/widget/AutoCompleteTextView;

    .line 3
    sget v1, Leltos/simpledialogfragment/c$i;->k2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v1, p0, Leltos/simpledialogfragment/input/b;->s:Lcom/google/android/material/textfield/TextInputLayout;

    .line 4
    iget-object v1, p0, Leltos/simpledialogfragment/input/b;->r:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "SimpleInputDialog.input_type"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 5
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 6
    iget-object v1, p0, Leltos/simpledialogfragment/input/b;->r:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    invoke-direct {v2}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 7
    :cond_0
    iget-object v1, p0, Leltos/simpledialogfragment/input/b;->s:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v2, "SimpleInputDialog.hint"

    invoke-virtual {p0, v2}, Leltos/simpledialogfragment/f;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "SimpleInputDialog.max_length"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 9
    iget-object v1, p0, Leltos/simpledialogfragment/input/b;->s:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterMaxLength(I)V

    .line 10
    iget-object v1, p0, Leltos/simpledialogfragment/input/b;->s:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterEnabled(Z)V

    :cond_1
    const-string v1, "SimpleInputDialog.text"

    if-eqz p1, :cond_2

    .line 11
    iget-object v2, p0, Leltos/simpledialogfragment/input/b;->r:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Leltos/simpledialogfragment/input/b;->r:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0, v1}, Leltos/simpledialogfragment/f;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, p0, Leltos/simpledialogfragment/input/b;->r:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/AutoCompleteTextView;->setSelection(II)V

    .line 14
    :goto_0
    iget-object p1, p0, Leltos/simpledialogfragment/input/b;->r:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    .line 15
    iget-object p1, p0, Leltos/simpledialogfragment/input/b;->r:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Leltos/simpledialogfragment/input/b$a;

    invoke-direct {v1, p0}, Leltos/simpledialogfragment/input/b$a;-><init>(Leltos/simpledialogfragment/input/b;)V

    invoke-virtual {p1, v1}, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 16
    iget-object p1, p0, Leltos/simpledialogfragment/input/b;->r:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Leltos/simpledialogfragment/input/b$b;

    invoke-direct {v1, p0}, Leltos/simpledialogfragment/input/b$b;-><init>(Leltos/simpledialogfragment/input/b;)V

    invoke-virtual {p1, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 17
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "SimpleInputDialog.suggestions"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 18
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1090003

    invoke-direct {v1, v2, v3, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 19
    iget-object p1, p0, Leltos/simpledialogfragment/input/b;->r:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 20
    iget-object p1, p0, Leltos/simpledialogfragment/input/b;->r:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1, v4}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    :cond_3
    return-object v0
.end method

.method protected N0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Leltos/simpledialogfragment/input/b;->h1()Z

    move-result v0

    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/b;->V0(Z)V

    .line 2
    iget-object v0, p0, Leltos/simpledialogfragment/input/b;->r:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/f;->D0(Landroid/view/View;)V

    return-void
.end method

.method public R0(I)Landroid/os/Bundle;
    .locals 2

    .line 1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-virtual {p0}, Leltos/simpledialogfragment/input/b;->Z0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimpleInputDialog.text"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public X0(Z)Leltos/simpledialogfragment/input/b;
    .locals 1

    const-string v0, "SimpleInputDialog.allow_empty"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->w0(Ljava/lang/String;Z)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/input/b;

    return-object p1
.end method

.method public Z0()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Leltos/simpledialogfragment/input/b;->r:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leltos/simpledialogfragment/input/b;->r:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public a1(I)Leltos/simpledialogfragment/input/b;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    const-string v0, "SimpleInputDialog.hint"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->t0(Ljava/lang/String;I)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/input/b;

    return-object p1
.end method

.method public b1(Ljava/lang/String;)Leltos/simpledialogfragment/input/b;
    .locals 1

    const-string v0, "SimpleInputDialog.hint"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->v0(Ljava/lang/String;Ljava/lang/String;)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/input/b;

    return-object p1
.end method

.method public c1(I)Leltos/simpledialogfragment/input/b;
    .locals 1

    const-string v0, "SimpleInputDialog.input_type"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->t0(Ljava/lang/String;I)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/input/b;

    return-object p1
.end method

.method public d1()Z
    .locals 1

    invoke-virtual {p0}, Leltos/simpledialogfragment/input/b;->Z0()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Leltos/simpledialogfragment/input/b;->Z0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public e1(I)Leltos/simpledialogfragment/input/b;
    .locals 1

    const-string v0, "SimpleInputDialog.max_length"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->t0(Ljava/lang/String;I)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/input/b;

    return-object p1
.end method

.method protected f1(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->a0()Landroid/os/Bundle;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Leltos/simpledialogfragment/input/b$c;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Leltos/simpledialogfragment/input/b$c;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, v0}, Leltos/simpledialogfragment/input/b$c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Leltos/simpledialogfragment/input/b$c;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Leltos/simpledialogfragment/input/b$c;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, v0}, Leltos/simpledialogfragment/input/b$c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public g1()V
    .locals 1

    iget-object v0, p0, Leltos/simpledialogfragment/input/b;->r:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/f;->D0(Landroid/view/View;)V

    return-void
.end method

.method protected h1()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Leltos/simpledialogfragment/input/b;->d1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SimpleInputDialog.allow_empty"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Leltos/simpledialogfragment/input/b;->Z0()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Leltos/simpledialogfragment/input/b;->Z0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0}, Leltos/simpledialogfragment/input/b;->Z0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "SimpleInputDialog.max_length"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-gt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public i1(Landroid/content/Context;[I)Leltos/simpledialogfragment/input/b;
    .locals 3

    .line 1
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 3
    aget v2, p2, v1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/input/b;->j1([Ljava/lang/String;)Leltos/simpledialogfragment/input/b;

    move-result-object p1

    return-object p1
.end method

.method public j1([Ljava/lang/String;)Leltos/simpledialogfragment/input/b;
    .locals 2

    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SimpleInputDialog.suggestions"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-object p0
.end method

.method public k1(I)Leltos/simpledialogfragment/input/b;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    const-string v0, "SimpleInputDialog.text"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->t0(Ljava/lang/String;I)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/input/b;

    return-object p1
.end method

.method public l1(Ljava/lang/String;)Leltos/simpledialogfragment/input/b;
    .locals 1

    const-string v0, "SimpleInputDialog.text"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->v0(Ljava/lang/String;Ljava/lang/String;)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/input/b;

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Leltos/simpledialogfragment/input/b;->Z0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimpleInputDialog.text"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
