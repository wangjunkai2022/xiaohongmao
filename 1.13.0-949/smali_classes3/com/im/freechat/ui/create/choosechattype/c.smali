.class public final synthetic Lcom/im/freechat/ui/create/choosechattype/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/create/choosechattype/c;->a:Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/create/choosechattype/c;->a:Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment;

    check-cast p1, Lcom/im/freechat/shared/entities/auth/UserInfo;

    invoke-static {v0, p1}, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment;->n0(Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment;Lcom/im/freechat/shared/entities/auth/UserInfo;)V

    return-void
.end method
