.class Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText$a;
.super Ljava/lang/Thread;
.source "ScrollingText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->onDraw(Landroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0xbb8

    .line 1
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->a(Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x111

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method
