.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/h;->a:Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/h;->a:Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;

    check-cast p1, Lcom/im/freechat/shared/entities/auth/UserInfo;

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;->a0(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;Lcom/im/freechat/shared/entities/auth/UserInfo;)V

    return-void
.end method
