.class public final synthetic Lcom/im/freechat/ui/contacts/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/im/freechat/ui/contacts/c;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/ui/contacts/c;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/contacts/a;->a:Lcom/im/freechat/ui/contacts/c;

    iput p2, p0, Lcom/im/freechat/ui/contacts/a;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/ui/contacts/a;->a:Lcom/im/freechat/ui/contacts/c;

    iget v1, p0, Lcom/im/freechat/ui/contacts/a;->b:I

    invoke-static {v0, v1, p1}, Lcom/im/freechat/ui/contacts/c;->d(Lcom/im/freechat/ui/contacts/c;ILandroid/view/View;)V

    return-void
.end method
