.class public final synthetic Lcom/im/freechat/ui/contacts/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/im/freechat/ui/contacts/c$a;

.field public final synthetic b:Lcom/im/freechat/shared/entities/contact/UserModel;


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/ui/contacts/c$a;Lcom/im/freechat/shared/entities/contact/UserModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/contacts/b;->a:Lcom/im/freechat/ui/contacts/c$a;

    iput-object p2, p0, Lcom/im/freechat/ui/contacts/b;->b:Lcom/im/freechat/shared/entities/contact/UserModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/ui/contacts/b;->a:Lcom/im/freechat/ui/contacts/c$a;

    iget-object v1, p0, Lcom/im/freechat/ui/contacts/b;->b:Lcom/im/freechat/shared/entities/contact/UserModel;

    invoke-static {v0, v1, p1}, Lcom/im/freechat/ui/contacts/c$a;->b(Lcom/im/freechat/ui/contacts/c$a;Lcom/im/freechat/shared/entities/contact/UserModel;Landroid/view/View;)V

    return-void
.end method
