.class final Lcom/im/freechat/ui/chat/chatdetails/messagelist/b$g;
.super Lkotlin/jvm/internal/Lambda;
.source "ChatDetailsAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


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
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/String;",
        "Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0014\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "",
        "s",
        "Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;",
        "styleUrlTarget",
        "",
        "a",
        "(Ljava/lang/String;Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;)V"
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

    iput-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b$g;->a:Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "styleUrlTarget"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b$g;->a:Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->o()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b$g;->a(Ljava/lang/String;Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
