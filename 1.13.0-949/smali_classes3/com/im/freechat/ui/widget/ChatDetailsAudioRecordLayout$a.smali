.class public final Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout$a;
.super Ljava/util/TimerTask;
.source "Timer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Timer.kt\nkotlin/concurrent/TimersKt$timerTask$1\n+ 2 ChatDetailsAudioRecordLayout.kt\ncom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout\n*L\n1#1,148:1\n30#2,5:149\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016\u00a8\u0006\u0004\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlin/concurrent/TimersKt$timerTask$1",
        "Ljava/util/TimerTask;",
        "",
        "run",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout;


# direct methods
.method public constructor <init>(Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout$a;->a:Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout$a;->a:Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout;

    invoke-static {v0}, Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout;->a(Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout;)I

    move-result v0

    iget-object v1, p0, Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout$a;->a:Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout;->b(Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout;I)V

    .line 2
    iget-object v0, p0, Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout$a;->a:Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout;

    invoke-virtual {v0}, Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout;->getBinding()Lf4/t1;

    move-result-object v0

    iget-object v0, v0, Lf4/t1;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout$b;

    iget-object v2, p0, Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout$a;->a:Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout;

    invoke-direct {v1, v2}, Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout$b;-><init>(Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
