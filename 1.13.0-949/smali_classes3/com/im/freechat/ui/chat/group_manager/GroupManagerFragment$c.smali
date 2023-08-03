.class final Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$c;
.super Lkotlin/jvm/internal/Lambda;
.source "GroupManagerFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/im/freechat/ui/contacts/ContactListFragment;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lcom/im/freechat/ui/contacts/ContactListFragment;",
        "a",
        "()Lcom/im/freechat/ui/contacts/ContactListFragment;"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final a:Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$c;

    invoke-direct {v0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$c;-><init>()V

    sput-object v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$c;->a:Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$c;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/im/freechat/ui/contacts/ContactListFragment;
    .locals 8
    .annotation build Lm8/g;
    .end annotation

    .line 1
    sget-object v0, Lcom/im/freechat/ui/contacts/ContactListFragment;->i:Lcom/im/freechat/ui/contacts/ContactListFragment$a;

    .line 2
    sget-object v1, Lcom/im/freechat/shared/entities/contact/ContactType;->FOLLOW:Lcom/im/freechat/shared/entities/contact/ContactType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 3
    invoke-static/range {v0 .. v7}, Lcom/im/freechat/ui/contacts/ContactListFragment$a;->b(Lcom/im/freechat/ui/contacts/ContactListFragment$a;Lcom/im/freechat/shared/entities/contact/ContactType;ZZZZILjava/lang/Object;)Lcom/im/freechat/ui/contacts/ContactListFragment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$c;->a()Lcom/im/freechat/ui/contacts/ContactListFragment;

    move-result-object v0

    return-object v0
.end method
