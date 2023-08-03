.class public final Lcom/im/freechat/ui/contacts/ContactListFragment$f;
.super Ljava/lang/Object;
.source "ContactListFragment.kt"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/ui/contacts/ContactListFragment;->A0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0002H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/im/freechat/ui/contacts/ContactListFragment$f",
        "Landroidx/appcompat/widget/SearchView$OnQueryTextListener;",
        "",
        "query",
        "",
        "onQueryTextSubmit",
        "newText",
        "onQueryTextChange",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/im/freechat/ui/contacts/ContactListFragment;


# direct methods
.method constructor <init>(Lcom/im/freechat/ui/contacts/ContactListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/im/freechat/ui/contacts/ContactListFragment$f;->a:Lcom/im/freechat/ui/contacts/ContactListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "newText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/im/freechat/ui/contacts/ContactListFragment$f;->a:Lcom/im/freechat/ui/contacts/ContactListFragment;

    invoke-virtual {v0}, Lcom/im/freechat/ui/contacts/ContactListFragment;->w0()Lcom/im/freechat/ui/contacts/ContactListViewModel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/im/freechat/ui/contacts/ContactListViewModel;->E(Ljava/lang/String;Z)V

    return v1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/im/freechat/ui/contacts/ContactListFragment$f;->a:Lcom/im/freechat/ui/contacts/ContactListFragment;

    invoke-virtual {v0}, Lcom/im/freechat/ui/contacts/ContactListFragment;->w0()Lcom/im/freechat/ui/contacts/ContactListViewModel;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/im/freechat/ui/contacts/ContactListViewModel;->F(Lcom/im/freechat/ui/contacts/ContactListViewModel;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method
