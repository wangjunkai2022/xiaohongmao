.class Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText$b;
.super Landroid/os/Handler;
.source "ScrollingText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x111

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->b(Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->postInvalidateDelayed(J)V

    :cond_0
    return-void
.end method
