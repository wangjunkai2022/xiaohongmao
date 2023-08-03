.class public Lcom/qennnsad/aknkaksd/util/dialog/c;
.super Landroid/app/Dialog;
.source "LodingDialog.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/wang/avi/AVLoadingIndicatorView;

.field private c:Landroid/widget/TextView;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x7f140377

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-string v0, " "

    .line 2
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/dialog/c;->d:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/dialog/c;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x7f140377

    .line 6
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-string v0, " "

    .line 7
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/dialog/c;->d:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 8
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/util/dialog/c;->d:Ljava/lang/String;

    .line 9
    :cond_0
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/dialog/c;->a:Landroid/content/Context;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/DialogInterface$OnCancelListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    const-string p1, " "

    .line 5
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/dialog/c;->d:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/qennnsad/aknkaksd/util/dialog/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/util/dialog/c;->b()V

    return-void
.end method

.method private synthetic b()V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/dialog/c;->b:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {v0}, Lcom/wang/avi/AVLoadingIndicatorView;->hide()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/dialog/c;->b:Lcom/wang/avi/AVLoadingIndicatorView;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v1, Lcom/qennnsad/aknkaksd/util/dialog/b;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/util/dialog/b;-><init>(Lcom/qennnsad/aknkaksd/util/dialog/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/util/dialog/c;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/util/dialog/c;->e:Z

    .line 3
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 4
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/dialog/c;->a:Landroid/content/Context;

    const v0, 0x7f0d005b

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0358

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/dialog/c;->c:Landroid/widget/TextView;

    .line 6
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/dialog/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0003

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wang/avi/AVLoadingIndicatorView;

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/dialog/c;->b:Lcom/wang/avi/AVLoadingIndicatorView;

    .line 8
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/util/dialog/c;->e:Z

    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/dialog/c;->a:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/dialog/c;->b:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {v0}, Lcom/wang/avi/AVLoadingIndicatorView;->show()V

    :cond_0
    return-void
.end method
