.class public final synthetic Lcom/im/freechat/ui/contacts/i;
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

    iput-object p1, p0, Lcom/im/freechat/ui/contacts/i;->a:Lcom/im/freechat/ui/contacts/ContactListFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/contacts/i;->a:Lcom/im/freechat/ui/contacts/ContactListFragment;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/im/freechat/ui/contacts/ContactListFragment;->n0(Lcom/im/freechat/ui/contacts/ContactListFragment;Ljava/lang/Boolean;)V

    return-void
.end method
