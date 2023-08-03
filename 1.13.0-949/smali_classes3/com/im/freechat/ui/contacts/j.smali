.class public final synthetic Lcom/im/freechat/ui/contacts/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/im/freechat/ui/contacts/ContactListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/ui/contacts/ContactListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/contacts/j;->a:Lcom/im/freechat/ui/contacts/ContactListFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/contacts/j;->a:Lcom/im/freechat/ui/contacts/ContactListFragment;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/im/freechat/ui/contacts/ContactListFragment;->m0(Lcom/im/freechat/ui/contacts/ContactListFragment;Ljava/util/List;)V

    return-void
.end method
