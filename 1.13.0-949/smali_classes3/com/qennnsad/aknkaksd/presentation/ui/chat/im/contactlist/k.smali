.class public final Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/k;
.super Ljava/lang/Object;
.source "ContactListViewModel_Factory.java"

# interfaces
.implements Ldagger/internal/h;


# annotations
.annotation build Ldagger/internal/e;
.end annotation

.annotation build Ldagger/internal/r;
.end annotation

.annotation build Ldagger/internal/s;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/h<",
        "Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/ContactListViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/im/freechat/sdk/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lcom/im/freechat/sdk/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/k;->a:Lu7/c;

    return-void
.end method

.method public static a(Lu7/c;)Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lcom/im/freechat/sdk/a;",
            ">;)",
            "Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/k;"
        }
    .end annotation

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/k;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/k;-><init>(Lu7/c;)V

    return-object v0
.end method

.method public static c(Lcom/im/freechat/sdk/a;)Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/ContactListViewModel;
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/ContactListViewModel;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/ContactListViewModel;-><init>(Lcom/im/freechat/sdk/a;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/ContactListViewModel;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/k;->a:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/sdk/a;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/k;->c(Lcom/im/freechat/sdk/a;)Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/ContactListViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/k;->b()Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/ContactListViewModel;

    move-result-object v0

    return-object v0
.end method
