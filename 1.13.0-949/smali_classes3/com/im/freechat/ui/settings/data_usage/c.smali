.class public final synthetic Lcom/im/freechat/ui/settings/data_usage/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/im/freechat/ui/settings/data_usage/DataUsageFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/ui/settings/data_usage/DataUsageFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/settings/data_usage/c;->a:Lcom/im/freechat/ui/settings/data_usage/DataUsageFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/settings/data_usage/c;->a:Lcom/im/freechat/ui/settings/data_usage/DataUsageFragment;

    invoke-static {v0, p1}, Lcom/im/freechat/ui/settings/data_usage/DataUsageFragment;->o0(Lcom/im/freechat/ui/settings/data_usage/DataUsageFragment;Landroid/view/View;)V

    return-void
.end method
