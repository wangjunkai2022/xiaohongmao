.class public final synthetic Lcom/im/freechat/extend/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/extend/j;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/im/freechat/extend/j;->b:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/extend/j;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/im/freechat/extend/j;->b:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/im/freechat/extend/k;->a(Landroid/content/Context;Landroid/content/ComponentName;)V

    return-void
.end method
