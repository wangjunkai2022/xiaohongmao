.class public final synthetic Lcom/im/freechat/ui/create/choosemember/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/im/freechat/ui/create/choosemember/b;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/ui/create/choosemember/b;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/create/choosemember/d;->a:Lcom/im/freechat/ui/create/choosemember/b;

    iput p2, p0, Lcom/im/freechat/ui/create/choosemember/d;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/ui/create/choosemember/d;->a:Lcom/im/freechat/ui/create/choosemember/b;

    iget v1, p0, Lcom/im/freechat/ui/create/choosemember/d;->b:I

    invoke-static {v0, v1, p1}, Lcom/im/freechat/ui/create/choosemember/b$c;->b(Lcom/im/freechat/ui/create/choosemember/b;ILandroid/view/View;)V

    return-void
.end method
