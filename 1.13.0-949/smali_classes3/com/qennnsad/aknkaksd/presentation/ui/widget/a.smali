.class public Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;
.super Landroid/app/Dialog;
.source "MessageDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/ui/widget/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/qennnsad/aknkaksd/presentation/ui/widget/a$a;

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f14010b

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-string p1, "\u786e\u8ba4"

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;->g:Ljava/lang/String;

    const-string p1, "\u53d6\u6d88"

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;->h:Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 1

    const v0, 0x7f0a01fd

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;->b:Landroid/widget/TextView;

    const v0, 0x7f0a01fb

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;->c:Landroid/widget/Button;

    const v0, 0x7f0a01fc

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;->d:Landroid/widget/Button;

    const v0, 0x7f0a0205

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;->a:Landroid/widget/TextView;

    return-void
.end method

.method private c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;->e:Ljava/lang/String;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;->a:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    :goto_1
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;->j:Z

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;->c:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;->c:Landroid/widget/Button;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;->d:Landroid/widget/Button;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public b()Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;->j:Z

    return-object p0
.end method

.method public d(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;->h:Ljava/lang/String;

    return-void
.end method

.method public f(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;->g(Ljava/lang/String;)V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;->g:Ljava/lang/String;

    return-void
.end method

.method public h(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;->f:Ljava/lang/String;

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;->f:Ljava/lang/String;

    return-void
.end method

.method public j(Lcom/qennnsad/aknkaksd/presentation/ui/widget/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;->i:Lcom/qennnsad/aknkaksd/presentation/ui/widget/a$a;

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;->e:Ljava/lang/String;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;->c:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;->i:Lcom/qennnsad/aknkaksd/presentation/ui/widget/a$a;

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a$a;->a(Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;->i:Lcom/qennnsad/aknkaksd/presentation/ui/widget/a$a;

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a$a;->b(Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d005c

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 3
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;->a()V

    .line 4
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;->c()V

    return-void
.end method
