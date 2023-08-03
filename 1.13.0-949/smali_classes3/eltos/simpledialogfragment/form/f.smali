.class Leltos/simpledialogfragment/form/f;
.super Leltos/simpledialogfragment/form/d;
.source "InputViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leltos/simpledialogfragment/form/d<",
        "Leltos/simpledialogfragment/form/Input;",
        ">;"
    }
.end annotation


# static fields
.field protected static final d:Ljava/lang/String; = "savedText"


# instance fields
.field private b:Leltos/simpledialogfragment/input/TextInputAutoCompleteTextView;

.field private c:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method constructor <init>(Leltos/simpledialogfragment/form/Input;)V
    .locals 0

    invoke-direct {p0, p1}, Leltos/simpledialogfragment/form/d;-><init>(Leltos/simpledialogfragment/form/FormElement;)V

    return-void
.end method

.method static synthetic h(Leltos/simpledialogfragment/form/f;)Leltos/simpledialogfragment/input/TextInputAutoCompleteTextView;
    .locals 0

    iget-object p0, p0, Leltos/simpledialogfragment/form/f;->b:Leltos/simpledialogfragment/input/TextInputAutoCompleteTextView;

    return-object p0
.end method

.method private j()Z
    .locals 1

    invoke-virtual {p0}, Leltos/simpledialogfragment/form/f;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Leltos/simpledialogfragment/form/f;->i()Ljava/lang/String;

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

.method private k()Z
    .locals 2

    iget-object v0, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast v0, Leltos/simpledialogfragment/form/Input;

    iget v0, v0, Leltos/simpledialogfragment/form/Input;->maxLength:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Leltos/simpledialogfragment/form/f;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Leltos/simpledialogfragment/form/f;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast v1, Leltos/simpledialogfragment/form/Input;

    iget v1, v1, Leltos/simpledialogfragment/form/Input;->maxLength:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected a(Leltos/simpledialogfragment/form/g$c;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast v0, Leltos/simpledialogfragment/form/Input;

    iget-boolean v0, v0, Leltos/simpledialogfragment/form/Input;->isSpinner:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Leltos/simpledialogfragment/form/g$c;->b()V

    .line 3
    iget-object p1, p0, Leltos/simpledialogfragment/form/f;->b:Leltos/simpledialogfragment/input/TextInputAutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Leltos/simpledialogfragment/form/f;->b:Leltos/simpledialogfragment/input/TextInputAutoCompleteTextView;

    invoke-virtual {p1, v0}, Leltos/simpledialogfragment/form/g$c;->c(Landroid/view/View;)V

    .line 5
    :goto_0
    iget-object p1, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast p1, Leltos/simpledialogfragment/form/Input;

    iget-boolean p1, p1, Leltos/simpledialogfragment/form/Input;->forceSuggestion:Z

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Leltos/simpledialogfragment/form/f;->b:Leltos/simpledialogfragment/input/TextInputAutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 7
    :cond_1
    iget-object p1, p0, Leltos/simpledialogfragment/form/f;->b:Leltos/simpledialogfragment/input/TextInputAutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    move-result p1

    return p1
.end method

.method protected b()I
    .locals 1

    sget v0, Leltos/simpledialogfragment/c$l;->Q0:I

    return v0
.end method

.method protected c(Landroid/content/Context;)Z
    .locals 0

    iget-object p1, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast p1, Leltos/simpledialogfragment/form/Input;

    iget-boolean p1, p1, Leltos/simpledialogfragment/form/FormElement;->required:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Leltos/simpledialogfragment/form/f;->j()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    invoke-direct {p0}, Leltos/simpledialogfragment/form/f;->k()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected d(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Leltos/simpledialogfragment/form/f;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected e(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Leltos/simpledialogfragment/form/f;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "savedText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected f(Landroid/view/View;Landroid/content/Context;Landroid/os/Bundle;Leltos/simpledialogfragment/form/g$b;)V
    .locals 3

    .line 1
    sget v0, Leltos/simpledialogfragment/c$i;->D1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Leltos/simpledialogfragment/input/TextInputAutoCompleteTextView;

    iput-object v0, p0, Leltos/simpledialogfragment/form/f;->b:Leltos/simpledialogfragment/input/TextInputAutoCompleteTextView;

    .line 2
    sget v0, Leltos/simpledialogfragment/c$i;->k2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p1, p0, Leltos/simpledialogfragment/form/f;->c:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 p1, 0x1

    if-nez p3, :cond_0

    .line 3
    iget-object p3, p0, Leltos/simpledialogfragment/form/f;->b:Leltos/simpledialogfragment/input/TextInputAutoCompleteTextView;

    iget-object v0, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast v0, Leltos/simpledialogfragment/form/Input;

    invoke-virtual {v0, p2}, Leltos/simpledialogfragment/form/Input;->getText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p3, p0, Leltos/simpledialogfragment/form/f;->b:Leltos/simpledialogfragment/input/TextInputAutoCompleteTextView;

    invoke-virtual {p3, p1}, Landroid/widget/AutoCompleteTextView;->setSelectAllOnFocus(Z)V

    .line 5
    iget-object p3, p0, Leltos/simpledialogfragment/form/f;->b:Leltos/simpledialogfragment/input/TextInputAutoCompleteTextView;

    new-instance v0, Leltos/simpledialogfragment/form/f$a;

    invoke-direct {v0, p0}, Leltos/simpledialogfragment/form/f$a;-><init>(Leltos/simpledialogfragment/form/f;)V

    invoke-virtual {p3, v0}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Leltos/simpledialogfragment/form/f;->b:Leltos/simpledialogfragment/input/TextInputAutoCompleteTextView;

    const-string v1, "savedText"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :goto_0
    iget-object p3, p0, Leltos/simpledialogfragment/form/f;->c:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast v0, Leltos/simpledialogfragment/form/Input;

    invoke-virtual {v0, p2}, Leltos/simpledialogfragment/form/Input;->getHint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p3, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    move-object v0, p3

    check-cast v0, Leltos/simpledialogfragment/form/Input;

    iget v0, v0, Leltos/simpledialogfragment/form/Input;->inputType:I

    and-int/lit8 v0, v0, 0xf

    if-nez v0, :cond_1

    .line 9
    move-object v0, p3

    check-cast v0, Leltos/simpledialogfragment/form/Input;

    iget v1, v0, Leltos/simpledialogfragment/form/Input;->inputType:I

    or-int/2addr v1, p1

    iput v1, v0, Leltos/simpledialogfragment/form/Input;->inputType:I

    .line 10
    :cond_1
    iget-object v0, p0, Leltos/simpledialogfragment/form/f;->b:Leltos/simpledialogfragment/input/TextInputAutoCompleteTextView;

    check-cast p3, Leltos/simpledialogfragment/form/Input;

    iget p3, p3, Leltos/simpledialogfragment/form/Input;->inputType:I

    invoke-virtual {v0, p3}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 11
    iget-object p3, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast p3, Leltos/simpledialogfragment/form/Input;

    iget p3, p3, Leltos/simpledialogfragment/form/Input;->inputType:I

    and-int/lit8 p3, p3, 0xf

    const/4 v0, 0x3

    if-ne p3, v0, :cond_2

    .line 12
    iget-object p3, p0, Leltos/simpledialogfragment/form/f;->b:Leltos/simpledialogfragment/input/TextInputAutoCompleteTextView;

    new-instance v1, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    invoke-direct {v1}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>()V

    invoke-virtual {p3, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 13
    :cond_2
    iget-object p3, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast p3, Leltos/simpledialogfragment/form/Input;

    iget-boolean p3, p3, Leltos/simpledialogfragment/form/Input;->passwordToggleVisible:Z

    if-eqz p3, :cond_3

    .line 14
    iget-object p3, p0, Leltos/simpledialogfragment/form/f;->c:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p3, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    .line 15
    :cond_3
    iget-object p3, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    move-object v1, p3

    check-cast v1, Leltos/simpledialogfragment/form/Input;

    iget v1, v1, Leltos/simpledialogfragment/form/Input;->maxLength:I

    if-lez v1, :cond_4

    .line 16
    iget-object v1, p0, Leltos/simpledialogfragment/form/f;->c:Lcom/google/android/material/textfield/TextInputLayout;

    check-cast p3, Leltos/simpledialogfragment/form/Input;

    iget p3, p3, Leltos/simpledialogfragment/form/Input;->maxLength:I

    invoke-virtual {v1, p3}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterMaxLength(I)V

    .line 17
    iget-object p3, p0, Leltos/simpledialogfragment/form/f;->c:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p3, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterEnabled(Z)V

    .line 18
    :cond_4
    iget-object p3, p0, Leltos/simpledialogfragment/form/f;->b:Leltos/simpledialogfragment/input/TextInputAutoCompleteTextView;

    invoke-virtual {p4}, Leltos/simpledialogfragment/form/g$b;->e()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    goto :goto_1

    :cond_5
    const/4 v1, 0x5

    :goto_1
    invoke-virtual {p3, v1}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    .line 19
    iget-object p3, p0, Leltos/simpledialogfragment/form/f;->b:Leltos/simpledialogfragment/input/TextInputAutoCompleteTextView;

    new-instance v1, Leltos/simpledialogfragment/form/f$b;

    invoke-direct {v1, p0, p4}, Leltos/simpledialogfragment/form/f$b;-><init>(Leltos/simpledialogfragment/form/f;Leltos/simpledialogfragment/form/g$b;)V

    invoke-virtual {p3, v1}, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 20
    iget-object p3, p0, Leltos/simpledialogfragment/form/f;->b:Leltos/simpledialogfragment/input/TextInputAutoCompleteTextView;

    new-instance v1, Leltos/simpledialogfragment/form/f$c;

    invoke-direct {v1, p0}, Leltos/simpledialogfragment/form/f$c;-><init>(Leltos/simpledialogfragment/form/f;)V

    invoke-virtual {p3, v1}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 21
    invoke-virtual {p4}, Leltos/simpledialogfragment/form/g$b;->f()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 22
    iget-object p3, p0, Leltos/simpledialogfragment/form/f;->b:Leltos/simpledialogfragment/input/TextInputAutoCompleteTextView;

    new-instance v1, Leltos/simpledialogfragment/form/f$d;

    invoke-direct {v1, p0, p4}, Leltos/simpledialogfragment/form/f$d;-><init>(Leltos/simpledialogfragment/form/f;Leltos/simpledialogfragment/form/g$b;)V

    invoke-virtual {p3, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 23
    :cond_6
    iget-object p3, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast p3, Leltos/simpledialogfragment/form/Input;

    invoke-virtual {p3, p2}, Leltos/simpledialogfragment/form/Input;->getSuggestions(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_a

    .line 24
    iget-object v1, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    move-object v2, v1

    check-cast v2, Leltos/simpledialogfragment/form/Input;

    iget-boolean v2, v2, Leltos/simpledialogfragment/form/Input;->isSpinner:Z

    if-eqz v2, :cond_7

    check-cast v1, Leltos/simpledialogfragment/form/Input;

    iget-boolean v1, v1, Leltos/simpledialogfragment/form/FormElement;->required:Z

    if-nez v1, :cond_7

    .line 25
    array-length v1, p3

    add-int/2addr v1, p1

    invoke-static {p3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    .line 26
    array-length v1, p3

    sub-int/2addr v1, p1

    const-string v2, ""

    aput-object v2, p3, v1

    .line 27
    :cond_7
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090003

    invoke-direct {v1, p2, v2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 28
    iget-object p2, p0, Leltos/simpledialogfragment/form/f;->b:Leltos/simpledialogfragment/input/TextInputAutoCompleteTextView;

    invoke-virtual {p2, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 29
    iget-object p2, p0, Leltos/simpledialogfragment/form/f;->b:Leltos/simpledialogfragment/input/TextInputAutoCompleteTextView;

    invoke-virtual {p2, p1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 30
    iget-object p2, p0, Leltos/simpledialogfragment/form/f;->b:Leltos/simpledialogfragment/input/TextInputAutoCompleteTextView;

    new-instance p3, Leltos/simpledialogfragment/form/f$e;

    invoke-direct {p3, p0, p4}, Leltos/simpledialogfragment/form/f$e;-><init>(Leltos/simpledialogfragment/form/f;Leltos/simpledialogfragment/form/g$b;)V

    invoke-virtual {p2, p3}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 31
    iget-object p2, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    move-object p3, p2

    check-cast p3, Leltos/simpledialogfragment/form/Input;

    iget-boolean p3, p3, Leltos/simpledialogfragment/form/Input;->isSpinner:Z

    if-nez p3, :cond_8

    move-object p3, p2

    check-cast p3, Leltos/simpledialogfragment/form/Input;

    iget-boolean p3, p3, Leltos/simpledialogfragment/form/Input;->forceSuggestion:Z

    if-eqz p3, :cond_9

    check-cast p2, Leltos/simpledialogfragment/form/Input;

    iget-boolean p2, p2, Leltos/simpledialogfragment/form/Input;->passwordToggleVisible:Z

    if-nez p2, :cond_9

    .line 32
    :cond_8
    iget-object p2, p0, Leltos/simpledialogfragment/form/f;->c:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxBackgroundMode(I)V

    .line 33
    iget-object p2, p0, Leltos/simpledialogfragment/form/f;->c:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p2, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    .line 34
    :cond_9
    iget-object p2, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast p2, Leltos/simpledialogfragment/form/Input;

    iget-boolean p2, p2, Leltos/simpledialogfragment/form/Input;->isSpinner:Z

    if-eqz p2, :cond_a

    .line 35
    iget-object p2, p0, Leltos/simpledialogfragment/form/f;->b:Leltos/simpledialogfragment/input/TextInputAutoCompleteTextView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 36
    iget-object p2, p0, Leltos/simpledialogfragment/form/f;->b:Leltos/simpledialogfragment/input/TextInputAutoCompleteTextView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 37
    iget-object p2, p0, Leltos/simpledialogfragment/form/f;->b:Leltos/simpledialogfragment/input/TextInputAutoCompleteTextView;

    iput-boolean p1, p2, Leltos/simpledialogfragment/input/TextInputAutoCompleteTextView;->a:Z

    .line 38
    new-instance p1, Leltos/simpledialogfragment/form/f$f;

    invoke-direct {p1, p0, p4}, Leltos/simpledialogfragment/form/f$f;-><init>(Leltos/simpledialogfragment/form/f;Leltos/simpledialogfragment/form/g$b;)V

    invoke-virtual {p2, p1}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    return-void
.end method

.method protected g(Landroid/content/Context;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast v0, Leltos/simpledialogfragment/form/Input;

    iget-boolean v0, v0, Leltos/simpledialogfragment/form/FormElement;->required:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Leltos/simpledialogfragment/form/f;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget v0, Leltos/simpledialogfragment/c$n;->T0:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Leltos/simpledialogfragment/form/f;->l(ZLjava/lang/String;)V

    return v1

    .line 3
    :cond_0
    invoke-direct {p0}, Leltos/simpledialogfragment/form/f;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, v2, p1}, Leltos/simpledialogfragment/form/f;->l(ZLjava/lang/String;)V

    return v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Leltos/simpledialogfragment/form/f;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Leltos/simpledialogfragment/form/f;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast v3, Leltos/simpledialogfragment/form/Input;

    iget v3, v3, Leltos/simpledialogfragment/form/Input;->minLength:I

    if-ge v0, v3, :cond_2

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Leltos/simpledialogfragment/c$m;->a:I

    iget-object v3, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    move-object v4, v3

    check-cast v4, Leltos/simpledialogfragment/form/Input;

    iget v4, v4, Leltos/simpledialogfragment/form/Input;->minLength:I

    new-array v5, v2, [Ljava/lang/Object;

    check-cast v3, Leltos/simpledialogfragment/form/Input;

    iget v3, v3, Leltos/simpledialogfragment/form/Input;->minLength:I

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v1

    .line 8
    invoke-virtual {p1, v0, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Leltos/simpledialogfragment/form/f;->l(ZLjava/lang/String;)V

    return v1

    .line 9
    :cond_2
    iget-object v0, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast v0, Leltos/simpledialogfragment/form/Input;

    iget-boolean v0, v0, Leltos/simpledialogfragment/form/Input;->forceSuggestion:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Leltos/simpledialogfragment/form/f;->j()Z

    move-result v0

    if-nez v0, :cond_6

    .line 10
    iget-object v0, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast v0, Leltos/simpledialogfragment/form/Input;

    invoke-virtual {v0, p1}, Leltos/simpledialogfragment/form/Input;->getSuggestions(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {p0}, Leltos/simpledialogfragment/form/f;->i()Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    .line 12
    array-length v4, v0

    if-lez v4, :cond_6

    .line 13
    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_5

    aget-object v6, v0, v5

    if-nez v6, :cond_3

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 15
    iget-object v0, p0, Leltos/simpledialogfragment/form/f;->b:Leltos/simpledialogfragment/input/TextInputAutoCompleteTextView;

    invoke-virtual {v0, v6}, Landroid/widget/AutoCompleteTextView;->setTextKeepState(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_6

    .line 16
    sget v0, Leltos/simpledialogfragment/c$n;->U:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Leltos/simpledialogfragment/form/f;->l(ZLjava/lang/String;)V

    return v1

    .line 17
    :cond_6
    iget-object v0, p0, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast v0, Leltos/simpledialogfragment/form/Input;

    invoke-virtual {p0}, Leltos/simpledialogfragment/form/f;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Leltos/simpledialogfragment/form/Input;->validatePattern(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    .line 18
    :goto_3
    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/form/f;->l(ZLjava/lang/String;)V

    if-nez p1, :cond_8

    const/4 v1, 0x1

    :cond_8
    return v1
.end method

.method protected i()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Leltos/simpledialogfragment/form/f;->b:Leltos/simpledialogfragment/input/TextInputAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leltos/simpledialogfragment/form/f;->b:Leltos/simpledialogfragment/input/TextInputAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected l(ZLjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/form/f;->c:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p2, p0, Leltos/simpledialogfragment/form/f;->c:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p2, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    return-void
.end method
