.class public final synthetic Lcom/im/freechat/ui/chat/userprofile/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/userprofile/c;->a:Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/chat/userprofile/c;->a:Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;

    check-cast p1, Lcom/im/freechat/shared/entities/contact/UserModel;

    invoke-static {v0, p1}, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;->r0(Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;Lcom/im/freechat/shared/entities/contact/UserModel;)V

    return-void
.end method
