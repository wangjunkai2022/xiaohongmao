.class public final synthetic Lcom/im/freechat/ui/chat/userprofile/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;


# instance fields
.field public final synthetic a:Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/userprofile/i;->a:Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;

    return-void
.end method


# virtual methods
.method public final onConfigureTab(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/chat/userprofile/i;->a:Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;

    invoke-static {v0, p1, p2}, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;->q0(Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    return-void
.end method
