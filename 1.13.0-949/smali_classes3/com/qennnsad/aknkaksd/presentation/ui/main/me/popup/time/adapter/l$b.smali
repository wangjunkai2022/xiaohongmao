.class Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l$b;
.super Landroid/os/Handler;
.source "WheelScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;->c(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;->c(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;->a(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;)I

    move-result v1

    sub-int/2addr v1, v0

    .line 4
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;

    invoke-static {v2, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;->b(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;I)I

    if-eqz v1, :cond_0

    .line 5
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;->e(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;)Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l$c;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l$c;->onScroll(I)V

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;->c(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;->c(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    .line 8
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;->c(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;->c(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;->f(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;)Landroid/os/Handler;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 11
    :cond_2
    iget p1, p1, Landroid/os/Message;->what:I

    if-nez p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;->g(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;)V

    goto :goto_0

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/l;->i()V

    :goto_0
    return-void
.end method
