.class Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView$a;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;->a(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;->C()V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;->b(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;Z)Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;->e(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;I)I

    .line 5
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onJustify()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;->d(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;->f(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;)Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;

    move-result-object v0

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;->d(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->l(II)V

    :cond_0
    return-void
.end method

.method public onScroll(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;->c(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;I)V

    .line 2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;->d(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;)I

    move-result v0

    if-le v0, p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;->e(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;I)I

    .line 5
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;->f(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;)Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->p()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;->d(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;)I

    move-result v0

    neg-int p1, p1

    if-ge v0, p1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;->e(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;I)I

    .line 8
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;->f(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;)Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->p()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStarted()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;->b(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;Z)Z

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;->D()V

    return-void
.end method
