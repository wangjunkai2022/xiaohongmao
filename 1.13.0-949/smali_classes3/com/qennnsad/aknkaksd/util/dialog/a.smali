.class public Lcom/qennnsad/aknkaksd/util/dialog/a;
.super Landroid/app/Dialog;
.source "CustomDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/util/dialog/a$c;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Z

.field private final d:Landroid/view/View;

.field private final e:I

.field private final f:I

.field private g:Z


# direct methods
.method private constructor <init>(Lcom/qennnsad/aknkaksd/util/dialog/a$c;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/qennnsad/aknkaksd/util/dialog/a;-><init>(Lcom/qennnsad/aknkaksd/util/dialog/a$c;I)V

    return-void
.end method

.method private constructor <init>(Lcom/qennnsad/aknkaksd/util/dialog/a$c;I)V
    .locals 1

    .line 4
    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/dialog/a$c;->a(Lcom/qennnsad/aknkaksd/util/dialog/a$c;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Lcom/qennnsad/aknkaksd/util/dialog/a;->g:Z

    .line 6
    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/dialog/a$c;->a(Lcom/qennnsad/aknkaksd/util/dialog/a$c;)Landroid/content/Context;

    .line 7
    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/dialog/a$c;->b(Lcom/qennnsad/aknkaksd/util/dialog/a$c;)I

    move-result p2

    iput p2, p0, Lcom/qennnsad/aknkaksd/util/dialog/a;->a:I

    .line 8
    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/dialog/a$c;->c(Lcom/qennnsad/aknkaksd/util/dialog/a$c;)I

    move-result p2

    iput p2, p0, Lcom/qennnsad/aknkaksd/util/dialog/a;->b:I

    .line 9
    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/dialog/a$c;->d(Lcom/qennnsad/aknkaksd/util/dialog/a$c;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/qennnsad/aknkaksd/util/dialog/a;->c:Z

    .line 10
    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/dialog/a$c;->e(Lcom/qennnsad/aknkaksd/util/dialog/a$c;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/qennnsad/aknkaksd/util/dialog/a;->g:Z

    .line 11
    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/dialog/a$c;->f(Lcom/qennnsad/aknkaksd/util/dialog/a$c;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/util/dialog/a;->d:Landroid/view/View;

    .line 12
    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/dialog/a$c;->g(Lcom/qennnsad/aknkaksd/util/dialog/a$c;)I

    move-result p2

    iput p2, p0, Lcom/qennnsad/aknkaksd/util/dialog/a;->e:I

    .line 13
    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/dialog/a$c;->h(Lcom/qennnsad/aknkaksd/util/dialog/a$c;)I

    move-result p1

    iput p1, p0, Lcom/qennnsad/aknkaksd/util/dialog/a;->f:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/qennnsad/aknkaksd/util/dialog/a$c;ILcom/qennnsad/aknkaksd/util/dialog/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/util/dialog/a;-><init>(Lcom/qennnsad/aknkaksd/util/dialog/a$c;I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qennnsad/aknkaksd/util/dialog/a$c;Lcom/qennnsad/aknkaksd/util/dialog/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/util/dialog/a;-><init>(Lcom/qennnsad/aknkaksd/util/dialog/a$c;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    new-instance v0, Lcom/qennnsad/aknkaksd/util/dialog/a$a;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/util/dialog/a$a;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/text/SpannableStringBuilder;Landroid/text/style/URLSpan;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 2
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 3
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    .line 4
    new-instance v3, Lcom/qennnsad/aknkaksd/util/dialog/a$b;

    invoke-direct {v3, p1}, Lcom/qennnsad/aknkaksd/util/dialog/a$b;-><init>(Landroid/text/style/URLSpan;)V

    .line 5
    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method


# virtual methods
.method public b()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/dialog/a;->d:Landroid/view/View;

    return-object v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "---action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dialog"

    invoke-static {v1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 3
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/dialog/a;->d:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 3
    iget-boolean p1, p0, Lcom/qennnsad/aknkaksd/util/dialog/a;->c:Z

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 4
    iget-boolean p1, p0, Lcom/qennnsad/aknkaksd/util/dialog/a;->g:Z

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public show()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 3
    iget v1, p0, Lcom/qennnsad/aknkaksd/util/dialog/a;->e:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qennnsad/aknkaksd/util/dialog/a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "--height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qennnsad/aknkaksd/util/dialog/a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CustomDialog"

    invoke-static {v2, v1}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget v1, p0, Lcom/qennnsad/aknkaksd/util/dialog/a;->b:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 6
    iget v1, p0, Lcom/qennnsad/aknkaksd/util/dialog/a;->a:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/qennnsad/aknkaksd/util/dialog/a;->f:I

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
