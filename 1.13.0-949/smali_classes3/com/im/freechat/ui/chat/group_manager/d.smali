.class public final synthetic Lcom/im/freechat/ui/chat/group_manager/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;

.field public final synthetic c:Lcom/im/freechat/shared/entities/contact/UserModel;

.field public final synthetic d:Lcom/im/freechat/shared/entities/chat/ChatMember;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Lcom/im/freechat/shared/entities/contact/UserModel;Lcom/im/freechat/shared/entities/chat/ChatMember;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/group_manager/d;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/im/freechat/ui/chat/group_manager/d;->b:Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;

    iput-object p3, p0, Lcom/im/freechat/ui/chat/group_manager/d;->c:Lcom/im/freechat/shared/entities/contact/UserModel;

    iput-object p4, p0, Lcom/im/freechat/ui/chat/group_manager/d;->d:Lcom/im/freechat/shared/entities/chat/ChatMember;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/d;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/im/freechat/ui/chat/group_manager/d;->b:Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;

    iget-object v2, p0, Lcom/im/freechat/ui/chat/group_manager/d;->c:Lcom/im/freechat/shared/entities/contact/UserModel;

    iget-object v3, p0, Lcom/im/freechat/ui/chat/group_manager/d;->d:Lcom/im/freechat/shared/entities/chat/ChatMember;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->z0(Ljava/util/ArrayList;Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Lcom/im/freechat/shared/entities/contact/UserModel;Lcom/im/freechat/shared/entities/chat/ChatMember;Landroid/content/DialogInterface;I)V

    return-void
.end method
