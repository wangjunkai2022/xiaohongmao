.class public final synthetic Lcom/im/freechat/ui/settings/n;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic a:Lcom/im/freechat/ui/settings/SettingsFragment;

.field public final synthetic b:Lf4/f;


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/ui/settings/SettingsFragment;Lf4/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/settings/n;->a:Lcom/im/freechat/ui/settings/SettingsFragment;

    iput-object p2, p0, Lcom/im/freechat/ui/settings/n;->b:Lf4/f;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/ui/settings/n;->a:Lcom/im/freechat/ui/settings/SettingsFragment;

    iget-object v1, p0, Lcom/im/freechat/ui/settings/n;->b:Lf4/f;

    invoke-static {v0, v1, p1}, Lcom/im/freechat/ui/settings/SettingsFragment;->z0(Lcom/im/freechat/ui/settings/SettingsFragment;Lf4/f;Landroid/content/DialogInterface;)V

    return-void
.end method
