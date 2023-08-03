.class public Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;
.super Landroid/app/DialogFragment;
.source "PrivateSetStringDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->i(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->j(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->k(Landroid/view/View;)V

    return-void
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^[a-zA-Z0-9]+$"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 2
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private f(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f0a0523

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->b:Landroid/widget/TextView;

    const v0, 0x7f0a0522

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->c:Landroid/widget/TextView;

    const v0, 0x7f0a0521

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->a:Landroid/widget/EditText;

    .line 4
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/c;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/c;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 5
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->a:Landroid/widget/EditText;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 6
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const p1, 0x7f1302bd

    .line 7
    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/toast/a;->a(I)V

    .line 8
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->a:Landroid/widget/EditText;

    new-array v3, v3, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v4, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 11
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->b:Landroid/widget/TextView;

    const v1, 0x7f1303a4

    invoke-virtual {p0, v1}, Landroid/app/DialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->c:Landroid/widget/TextView;

    const v1, 0x7f1303a3

    invoke-virtual {p0, v1}, Landroid/app/DialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->a:Landroid/widget/EditText;

    const v1, 0x7f1303a2

    invoke-virtual {p0, v1}, Landroid/app/DialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 14
    :cond_1
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v4, "2"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->a:Landroid/widget/EditText;

    new-array v3, v3, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v4, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 16
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->b:Landroid/widget/TextView;

    const v1, 0x7f1303a7

    invoke-virtual {p0, v1}, Landroid/app/DialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->c:Landroid/widget/TextView;

    const v1, 0x7f1303a6

    invoke-virtual {p0, v1}, Landroid/app/DialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->a:Landroid/widget/EditText;

    const v1, 0x7f1303a5

    invoke-virtual {p0, v1}, Landroid/app/DialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 19
    :cond_2
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->a:Landroid/widget/EditText;

    new-array v1, v3, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 21
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->b:Landroid/widget/TextView;

    const v1, 0x7f1303a1

    invoke-virtual {p0, v1}, Landroid/app/DialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->c:Landroid/widget/TextView;

    const v1, 0x7f1303a0

    invoke-virtual {p0, v1}, Landroid/app/DialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->a:Landroid/widget/EditText;

    const v1, 0x7f13039f

    invoke-virtual {p0, v1}, Landroid/app/DialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 24
    :cond_3
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 25
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->a:Landroid/widget/EditText;

    new-array v1, v3, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 26
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->b:Landroid/widget/TextView;

    const v1, 0x7f1303aa

    invoke-virtual {p0, v1}, Landroid/app/DialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->c:Landroid/widget/TextView;

    const v1, 0x7f1303a9

    invoke-virtual {p0, v1}, Landroid/app/DialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->a:Landroid/widget/EditText;

    const v1, 0x7f1303a8

    invoke-virtual {p0, v1}, Landroid/app/DialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 29
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->d:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 30
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->d:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    const v0, 0x7f0a051f

    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/a;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0520

    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/b;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/b;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic i(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-eq p2, p1, :cond_1

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x42

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->e()V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic j(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->a:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/util/h1;->l(Landroid/view/View;Z)V

    .line 2
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    return-void
.end method

.method private synthetic k(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->e()V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f13039d

    .line 2
    invoke-static {v0}, Lcom/qennnsad/aknkaksd/util/toast/a;->h(I)V

    goto/16 :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f13039e

    .line 4
    invoke-static {v0}, Lcom/qennnsad/aknkaksd/util/toast/a;->h(I)V

    goto/16 :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->g(Ljava/lang/String;)Z

    move-result v0

    const v1, 0x7f13039c

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-static {v1}, Lcom/qennnsad/aknkaksd/util/toast/a;->h(I)V

    goto/16 :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v2, "3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-static {v1}, Lcom/qennnsad/aknkaksd/util/toast/a;->h(I)V

    goto :goto_0

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v2, "4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    invoke-static {v1}, Lcom/qennnsad/aknkaksd/util/toast/a;->h(I)V

    goto :goto_0

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->e:Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog$a;

    if-eqz v0, :cond_5

    .line 12
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->d:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_5
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/d;

    .line 15
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->d:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :goto_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->a:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->a:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/h1;->l(Landroid/view/View;Z)V

    .line 19
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public g(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^[0-9]*$"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method public h(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^\\w+$"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method public l(Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog$a;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->e:Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog$a;

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->a:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/util/h1;->l(Landroid/view/View;Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/app/DialogFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p3, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const p3, 0x7f0d0184

    .line 2
    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->d:Ljava/util/HashMap;

    if-nez p2, :cond_0

    .line 4
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->d:Ljava/util/HashMap;

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->f(Landroid/view/View;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p1
.end method
