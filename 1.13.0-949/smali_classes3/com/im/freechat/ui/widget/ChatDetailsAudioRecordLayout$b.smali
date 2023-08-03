.class final Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout$b;
.super Ljava/lang/Object;
.source "ChatDetailsAudioRecordLayout.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout;


# direct methods
.method constructor <init>(Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout$b;->a:Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout$b;->a:Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout;

    invoke-virtual {v0}, Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout;->getBinding()Lf4/t1;

    move-result-object v0

    iget-object v0, v0, Lf4/t1;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout$b;->a:Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout;

    invoke-static {v1}, Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout;->a(Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout;)I

    move-result v1

    invoke-static {v1}, Lcom/im/freechat/extend/m;->h(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
