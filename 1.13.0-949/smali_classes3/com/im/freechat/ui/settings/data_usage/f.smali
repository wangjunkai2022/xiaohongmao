.class public final synthetic Lcom/im/freechat/ui/settings/data_usage/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic a:Lcom/im/freechat/ui/settings/data_usage/DataUsageFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/ui/settings/data_usage/DataUsageFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/settings/data_usage/f;->a:Lcom/im/freechat/ui/settings/data_usage/DataUsageFragment;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/settings/data_usage/f;->a:Lcom/im/freechat/ui/settings/data_usage/DataUsageFragment;

    check-cast p1, Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/im/freechat/ui/settings/data_usage/DataUsageFragment;->s0(Lcom/im/freechat/ui/settings/data_usage/DataUsageFragment;Ljava/util/Map;)V

    return-void
.end method
