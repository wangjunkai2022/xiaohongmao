.class public final synthetic Lcom/im/freechat/ui/settings/l;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/im/freechat/ui/settings/SettingsFragment;

.field public final synthetic b:Lf4/g;


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/ui/settings/SettingsFragment;Lf4/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/settings/l;->a:Lcom/im/freechat/ui/settings/SettingsFragment;

    iput-object p2, p0, Lcom/im/freechat/ui/settings/l;->b:Lf4/g;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/ui/settings/l;->a:Lcom/im/freechat/ui/settings/SettingsFragment;

    iget-object v1, p0, Lcom/im/freechat/ui/settings/l;->b:Lf4/g;

    invoke-static {v0, v1, p1, p2}, Lcom/im/freechat/ui/settings/SettingsFragment;->v0(Lcom/im/freechat/ui/settings/SettingsFragment;Lf4/g;Landroid/content/DialogInterface;I)V

    return-void
.end method
