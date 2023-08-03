.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/a0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/b0;

.field public final synthetic b:Lcom/qennnsad/aknkaksd/data/bean/user/SettingsBean;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/b0;Lcom/qennnsad/aknkaksd/data/bean/user/SettingsBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/a0;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/b0;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/a0;->b:Lcom/qennnsad/aknkaksd/data/bean/user/SettingsBean;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/a0;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/b0;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/a0;->b:Lcom/qennnsad/aknkaksd/data/bean/user/SettingsBean;

    invoke-static {v0, v1, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/b0;->b(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/b0;Lcom/qennnsad/aknkaksd/data/bean/user/SettingsBean;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
