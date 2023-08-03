.class public final synthetic Lcom/im/freechat/ui/chat/group_manager/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/im/freechat/ui/chat/group_manager/c;

.field public final synthetic b:Lcom/im/freechat/shared/entities/chat/ChatMember;


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/ui/chat/group_manager/c;Lcom/im/freechat/shared/entities/chat/ChatMember;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/group_manager/a;->a:Lcom/im/freechat/ui/chat/group_manager/c;

    iput-object p2, p0, Lcom/im/freechat/ui/chat/group_manager/a;->b:Lcom/im/freechat/shared/entities/chat/ChatMember;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/a;->a:Lcom/im/freechat/ui/chat/group_manager/c;

    iget-object v1, p0, Lcom/im/freechat/ui/chat/group_manager/a;->b:Lcom/im/freechat/shared/entities/chat/ChatMember;

    invoke-static {v0, v1, p1}, Lcom/im/freechat/ui/chat/group_manager/c$a;->b(Lcom/im/freechat/ui/chat/group_manager/c;Lcom/im/freechat/shared/entities/chat/ChatMember;Landroid/view/View;)V

    return-void
.end method
