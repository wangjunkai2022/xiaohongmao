.class public final synthetic Lcom/im/freechat/ui/settings/data_usage/n;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/im/freechat/domain/r;


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/domain/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/settings/data_usage/n;->a:Lcom/im/freechat/domain/r;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/settings/data_usage/n;->a:Lcom/im/freechat/domain/r;

    invoke-static {v0, p1, p2}, Lcom/im/freechat/ui/settings/data_usage/o$a;->b(Lcom/im/freechat/domain/r;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
