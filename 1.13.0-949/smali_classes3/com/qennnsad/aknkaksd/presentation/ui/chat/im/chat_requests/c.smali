.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/d$a;

.field public final synthetic b:Lcom/im/freechat/shared/entities/chat/FriendStatus;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/d$a;Lcom/im/freechat/shared/entities/chat/FriendStatus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/c;->a:Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/d$a;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/c;->b:Lcom/im/freechat/shared/entities/chat/FriendStatus;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/c;->a:Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/d$a;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/c;->b:Lcom/im/freechat/shared/entities/chat/FriendStatus;

    invoke-static {v0, v1, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/d$a;->c(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/d$a;Lcom/im/freechat/shared/entities/chat/FriendStatus;Landroid/view/View;)V

    return-void
.end method
