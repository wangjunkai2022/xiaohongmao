.class public final synthetic Lcom/im/freechat/ui/create/choosemember/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:Landroid/widget/EditText;

.field public final synthetic b:Lcom/im/freechat/ui/create/choosemember/b;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;Lcom/im/freechat/ui/create/choosemember/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/create/choosemember/c;->a:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/im/freechat/ui/create/choosemember/c;->b:Lcom/im/freechat/ui/create/choosemember/b;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/ui/create/choosemember/c;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/im/freechat/ui/create/choosemember/c;->b:Lcom/im/freechat/ui/create/choosemember/b;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/im/freechat/ui/create/choosemember/b$b;->b(Landroid/widget/EditText;Lcom/im/freechat/ui/create/choosemember/b;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
