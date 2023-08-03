.class public final synthetic Lcom/im/freechat/ui/chat/group_manager/p;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic a:Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/group_manager/p;->a:Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/p;->a:Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;

    check-cast p1, Landroid/net/Uri;

    invoke-static {v0, p1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->s0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Landroid/net/Uri;)V

    return-void
.end method
