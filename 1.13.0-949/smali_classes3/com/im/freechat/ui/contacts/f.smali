.class public final synthetic Lcom/im/freechat/ui/contacts/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/im/freechat/ui/contacts/ContactListFragment;

.field public final synthetic b:Lcom/im/freechat/shared/entities/contact/UserModel;

.field public final synthetic c:Lf4/g;


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/ui/contacts/ContactListFragment;Lcom/im/freechat/shared/entities/contact/UserModel;Lf4/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/contacts/f;->a:Lcom/im/freechat/ui/contacts/ContactListFragment;

    iput-object p2, p0, Lcom/im/freechat/ui/contacts/f;->b:Lcom/im/freechat/shared/entities/contact/UserModel;

    iput-object p3, p0, Lcom/im/freechat/ui/contacts/f;->c:Lf4/g;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/im/freechat/ui/contacts/f;->a:Lcom/im/freechat/ui/contacts/ContactListFragment;

    iget-object v1, p0, Lcom/im/freechat/ui/contacts/f;->b:Lcom/im/freechat/shared/entities/contact/UserModel;

    iget-object v2, p0, Lcom/im/freechat/ui/contacts/f;->c:Lf4/g;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/im/freechat/ui/contacts/ContactListFragment;->k0(Lcom/im/freechat/ui/contacts/ContactListFragment;Lcom/im/freechat/shared/entities/contact/UserModel;Lf4/g;Landroid/content/DialogInterface;I)V

    return-void
.end method
