.class final Lcom/im/freechat/ui/chat/chatdetails/messagelist/b$c;
.super Lkotlin/jvm/internal/Lambda;
.source "ChatDetailsAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->s(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;",
        "it",
        "",
        "a",
        "(Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;


# direct methods
.method constructor <init>(Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;)V
    .locals 0

    iput-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b$c;->a:Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;)V
    .locals 2
    .param p1    # Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/Message;->getMessageStatus()Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/Message$MessageStatus;->isSent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b$c;->a:Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b$c;->a:Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->m()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->j()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 4
    invoke-interface {v0, p1, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b$c;->a:Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->j()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;

    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b$c;->a(Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
