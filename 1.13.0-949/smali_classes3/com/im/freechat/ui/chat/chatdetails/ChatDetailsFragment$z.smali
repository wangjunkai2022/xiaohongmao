.class final Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$z;
.super Lkotlin/jvm/internal/Lambda;
.source "ChatDetailsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->F2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "()Ljava/lang/Boolean;"
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
.field final synthetic a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;


# direct methods
.method constructor <init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$z;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$z;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    invoke-static {v0}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->I1(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$z;->invoke()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
