.class public final synthetic Lcom/im/freechat/ui/contacts/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Landroidx/lifecycle/MediatorLiveData;

.field public final synthetic b:Lcom/im/freechat/ui/contacts/ContactListViewModel;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/MediatorLiveData;Lcom/im/freechat/ui/contacts/ContactListViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/contacts/m;->a:Landroidx/lifecycle/MediatorLiveData;

    iput-object p2, p0, Lcom/im/freechat/ui/contacts/m;->b:Lcom/im/freechat/ui/contacts/ContactListViewModel;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/ui/contacts/m;->a:Landroidx/lifecycle/MediatorLiveData;

    iget-object v1, p0, Lcom/im/freechat/ui/contacts/m;->b:Lcom/im/freechat/ui/contacts/ContactListViewModel;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/im/freechat/ui/contacts/ContactListViewModel;->i(Landroidx/lifecycle/MediatorLiveData;Lcom/im/freechat/ui/contacts/ContactListViewModel;Ljava/util/List;)V

    return-void
.end method
