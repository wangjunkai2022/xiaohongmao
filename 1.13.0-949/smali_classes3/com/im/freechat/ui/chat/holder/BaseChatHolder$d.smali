.class final Lcom/im/freechat/ui/chat/holder/BaseChatHolder$d;
.super Lkotlin/jvm/internal/Lambda;
.source "BaseChatHolder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->J(Lcom/im/freechat/shared/entities/message/Message;)Landroid/text/SpannableStringBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/Unit;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "",
        "<anonymous parameter 0>",
        "a",
        "(Lkotlin/Unit;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/im/freechat/ui/chat/holder/BaseChatHolder;

.field final synthetic b:Lcom/im/freechat/shared/entities/message/MessageStyle;


# direct methods
.method constructor <init>(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Lcom/im/freechat/shared/entities/message/MessageStyle;)V
    .locals 0

    iput-object p1, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder$d;->a:Lcom/im/freechat/ui/chat/holder/BaseChatHolder;

    iput-object p2, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder$d;->b:Lcom/im/freechat/shared/entities/message/MessageStyle;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/Unit;)V
    .locals 2
    .param p1    # Lkotlin/Unit;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder$d;->a:Lcom/im/freechat/ui/chat/holder/BaseChatHolder;

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->T()Lkotlin/jvm/functions/Function2;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder$d;->b:Lcom/im/freechat/shared/entities/message/MessageStyle;

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/MessageStyle;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder$d;->b:Lcom/im/freechat/shared/entities/message/MessageStyle;

    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/message/MessageStyle;->getUrlTarget()Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder$d;->a(Lkotlin/Unit;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
