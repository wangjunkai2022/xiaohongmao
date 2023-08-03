.class public final Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$d;
.super Landroid/os/CountDownTimer;
.source "PkPlayerManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->D0(JLkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0006\u001a\u00020\u0004H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$d",
        "Landroid/os/CountDownTimer;",
        "",
        "millisUntilFinished",
        "",
        "onTick",
        "onFinish",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

.field final synthetic c:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(JLandroid/widget/TextView;Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/widget/TextView;",
            "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$d;->a:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$d;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

    iput-object p5, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$d;->c:Lkotlin/jvm/functions/Function0;

    const-wide/16 p3, 0x3e8

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$d;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$d;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->G()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$d;->c:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$d;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$d;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

    .line 2
    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->M()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->G()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->p:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$a;

    invoke-virtual {v1, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$a;->f(J)Ljava/lang/String;

    move-result-object p1

    .line 5
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
