.class public abstract Lcom/im/freechat/ui/chat/holder/q0;
.super Lcom/im/freechat/ui/chat/holder/BaseChatHolder;
.source "TextMessageHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008&\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0002J*\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0002H\u0014\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/im/freechat/ui/chat/holder/q0;",
        "Lcom/im/freechat/ui/chat/holder/BaseChatHolder;",
        "",
        "nextMessageSenderIsTheSame",
        "isFromCurrentUser",
        "",
        "y0",
        "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;",
        "messageWrapper",
        "Lcom/im/freechat/shared/entities/message/Message;",
        "prev",
        "",
        "position",
        "selectionMode",
        "F",
        "Landroidx/viewbinding/ViewBinding;",
        "binding",
        "isGroup",
        "<init>",
        "(Landroidx/viewbinding/ViewBinding;Z)V",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>(Landroidx/viewbinding/ViewBinding;Z)V
    .locals 1
    .param p1    # Landroidx/viewbinding/ViewBinding;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroidx/viewbinding/ViewBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;-><init>(Landroid/view/View;Z)V

    return-void
.end method

.method private final y0(ZZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->U()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 2
    sget p1, Lb4/b$h;->D6:I

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    sget p1, Lb4/b$h;->F6:I

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 4
    sget p1, Lb4/b$h;->E6:I

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 5
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method protected F(Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Lcom/im/freechat/shared/entities/message/Message;IZ)V
    .locals 1
    .param p1    # Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/shared/entities/message/Message;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string v0, "messageWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->F(Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Lcom/im/freechat/shared/entities/message/Message;IZ)V

    .line 2
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->l()Z

    move-result p2

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/Message;->getSender()Lcom/im/freechat/shared/entities/contact/Sender;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/contact/Sender;->isCurrentUser()Z

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/im/freechat/ui/chat/holder/q0;->y0(ZZ)V

    return-void
.end method
