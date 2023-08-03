.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/ContactListFragment;

.field public final synthetic c:Lcom/im/freechat/shared/entities/contact/UserModel;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/ContactListFragment;Lcom/im/freechat/shared/entities/contact/UserModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/f;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/f;->b:Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/ContactListFragment;

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/f;->c:Lcom/im/freechat/shared/entities/contact/UserModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/f;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/f;->b:Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/ContactListFragment;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/f;->c:Lcom/im/freechat/shared/entities/contact/UserModel;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/ContactListFragment;->z0(Ljava/util/ArrayList;Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/ContactListFragment;Lcom/im/freechat/shared/entities/contact/UserModel;Landroid/content/DialogInterface;I)V

    return-void
.end method
