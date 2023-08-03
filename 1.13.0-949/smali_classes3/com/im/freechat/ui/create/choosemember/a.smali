.class public final synthetic Lcom/im/freechat/ui/create/choosemember/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic a:Lcom/im/freechat/ui/create/choosemember/b;


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/ui/create/choosemember/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/create/choosemember/a;->a:Lcom/im/freechat/ui/create/choosemember/b;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/create/choosemember/a;->a:Lcom/im/freechat/ui/create/choosemember/b;

    invoke-static {v0, p1, p2, p3}, Lcom/im/freechat/ui/create/choosemember/b;->d(Lcom/im/freechat/ui/create/choosemember/b;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
