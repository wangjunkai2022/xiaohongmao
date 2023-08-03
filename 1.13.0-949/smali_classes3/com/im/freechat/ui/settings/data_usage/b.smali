.class public final synthetic Lcom/im/freechat/ui/settings/data_usage/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/AppCompatActivity;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/settings/data_usage/b;->a:Landroidx/appcompat/app/AppCompatActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/settings/data_usage/b;->a:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v0, p1}, Lcom/im/freechat/ui/settings/data_usage/DataUsageFragment;->l0(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V

    return-void
.end method
