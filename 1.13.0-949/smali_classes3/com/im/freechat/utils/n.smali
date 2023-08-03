.class public final synthetic Lcom/im/freechat/utils/n;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Landroidx/activity/result/ActivityResultLauncher;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Landroidx/activity/result/ActivityResultLauncher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/utils/n;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/im/freechat/utils/n;->b:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/utils/n;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/im/freechat/utils/n;->b:Landroidx/activity/result/ActivityResultLauncher;

    invoke-static {v0, v1, p1, p2}, Lcom/im/freechat/utils/r;->b(Landroid/app/Activity;Landroidx/activity/result/ActivityResultLauncher;Landroid/content/DialogInterface;I)V

    return-void
.end method
