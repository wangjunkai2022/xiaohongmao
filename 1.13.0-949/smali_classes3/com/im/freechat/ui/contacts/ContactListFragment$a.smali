.class public final Lcom/im/freechat/ui/contacts/ContactListFragment$a;
.super Ljava/lang/Object;
.source "ContactListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/ui/contacts/ContactListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ2\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/im/freechat/ui/contacts/ContactListFragment$a;",
        "",
        "Lcom/im/freechat/shared/entities/contact/ContactType;",
        "type",
        "",
        "standalone",
        "showService",
        "smallItems",
        "searchViewEnabled",
        "Lcom/im/freechat/ui/contacts/ContactListFragment;",
        "a",
        "<init>",
        "()V",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/im/freechat/ui/contacts/ContactListFragment$a;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/im/freechat/ui/contacts/ContactListFragment$a;Lcom/im/freechat/shared/entities/contact/ContactType;ZZZZILjava/lang/Object;)Lcom/im/freechat/ui/contacts/ContactListFragment;
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    move v4, p4

    :goto_0
    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const/4 p5, 0x1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v5, p5

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/im/freechat/ui/contacts/ContactListFragment$a;->a(Lcom/im/freechat/shared/entities/contact/ContactType;ZZZZ)Lcom/im/freechat/ui/contacts/ContactListFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/im/freechat/shared/entities/contact/ContactType;ZZZZ)Lcom/im/freechat/ui/contacts/ContactListFragment;
    .locals 3
    .param p1    # Lcom/im/freechat/shared/entities/contact/ContactType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/im/freechat/ui/contacts/ContactListFragment;

    invoke-direct {v0}, Lcom/im/freechat/ui/contacts/ContactListFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "contactListType"

    .line 3
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "standalone"

    .line 4
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "showServiceContact"

    .line 5
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "smallItems"

    .line 6
    invoke-virtual {v1, p1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "searchViewEnabled"

    .line 7
    invoke-virtual {v1, p1, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
