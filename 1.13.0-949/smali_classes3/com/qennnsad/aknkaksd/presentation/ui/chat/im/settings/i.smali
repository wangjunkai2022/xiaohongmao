.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/i;
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

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/i;->a:Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/i;->a:Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;->Y(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;Ljava/lang/Boolean;)V

    return-void
.end method
