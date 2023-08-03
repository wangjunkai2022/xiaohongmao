.class public final synthetic Lcom/im/freechat/ui/chat/chatdetails/q1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/arch/core/util/Function;


# instance fields
.field public final synthetic a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/q1;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/q1;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->p(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
