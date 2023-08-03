.class public final synthetic Lcom/im/freechat/ui/chat/group_manager/o;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic a:Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/group_manager/o;->a:Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/o;->a:Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;

    invoke-static {v0, p1, p2, p3}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->k0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
