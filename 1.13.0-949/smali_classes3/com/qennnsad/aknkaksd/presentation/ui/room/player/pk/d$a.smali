.class Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/d$a;
.super Landroid/os/CountDownTimer;
.source "PkAcceptDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/d;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/d;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/d;JJLandroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/d$a;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/d;

    iput-object p6, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/d$a;->a:Landroid/widget/TextView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method

.method public static synthetic a(Landroid/widget/TextView;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/d$a;->b(Landroid/widget/TextView;J)V

    return-void
.end method

.method private static synthetic b(Landroid/widget/TextView;J)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u62d2\u7edd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "s"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/d$a;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/d;->c(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/d;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/d$a;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/d;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/d$a;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/d;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/d$a;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/c;

    invoke-direct {v1, v0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/c;-><init>(Landroid/widget/TextView;J)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
