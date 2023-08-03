.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/module/main/profile/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/g;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/g;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;

    check-cast p1, Lcom/im/freechat/shared/entities/chat/FriendStatus;

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;->y0(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;Lcom/im/freechat/shared/entities/chat/FriendStatus;)V

    return-void
.end method
