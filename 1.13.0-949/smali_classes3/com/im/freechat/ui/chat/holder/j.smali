.class public final synthetic Lcom/im/freechat/ui/chat/holder/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/im/freechat/ui/chat/holder/BaseChatHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/holder/j;->a:Lcom/im/freechat/ui/chat/holder/BaseChatHolder;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/j;->a:Lcom/im/freechat/ui/chat/holder/BaseChatHolder;

    check-cast p1, Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->d(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Ljava/util/Map;)V

    return-void
.end method
