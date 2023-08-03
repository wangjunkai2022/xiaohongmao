.class public final synthetic Lcom/im/freechat/ui/contacts/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic a:Lf4/g;

.field public final synthetic b:Lcom/im/freechat/shared/entities/contact/UserModel;


# direct methods
.method public synthetic constructor <init>(Lf4/g;Lcom/im/freechat/shared/entities/contact/UserModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/contacts/h;->a:Lf4/g;

    iput-object p2, p0, Lcom/im/freechat/ui/contacts/h;->b:Lcom/im/freechat/shared/entities/contact/UserModel;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/ui/contacts/h;->a:Lf4/g;

    iget-object v1, p0, Lcom/im/freechat/ui/contacts/h;->b:Lcom/im/freechat/shared/entities/contact/UserModel;

    invoke-static {v0, v1, p1}, Lcom/im/freechat/ui/contacts/ContactListFragment;->o0(Lf4/g;Lcom/im/freechat/shared/entities/contact/UserModel;Landroid/content/DialogInterface;)V

    return-void
.end method
