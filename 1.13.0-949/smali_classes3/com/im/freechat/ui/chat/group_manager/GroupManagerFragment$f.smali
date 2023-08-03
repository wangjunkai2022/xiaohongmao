.class final Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$f;
.super Lkotlin/jvm/internal/Lambda;
.source "GroupManagerFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->S0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/im/freechat/shared/entities/chat/ChatMember;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lcom/im/freechat/shared/entities/chat/ChatMember;",
        "it",
        "",
        "a",
        "(Lcom/im/freechat/shared/entities/chat/ChatMember;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;


# direct methods
.method constructor <init>(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$f;->a:Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/im/freechat/shared/entities/chat/ChatMember;)V
    .locals 5
    .param p1    # Lcom/im/freechat/shared/entities/chat/ChatMember;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/chat/ChatMember;->getContact()Lcom/im/freechat/shared/entities/contact/UserModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/contact/UserModel;->isCurrentUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$f;->a:Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;

    .line 3
    sget-object v1, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;->USER_PROFILE:Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;

    const/4 v2, 0x1

    new-array v2, v2, [Lkotlin/Pair;

    const/4 v3, 0x0

    .line 4
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/chat/ChatMember;->getContact()Lcom/im/freechat/shared/entities/contact/UserModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getUserId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v4, "contactId"

    invoke-static {v4, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v2}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object p1

    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/im/freechat/base/f;->c0(Ljava/lang/Enum;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/im/freechat/shared/entities/chat/ChatMember;

    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$f;->a(Lcom/im/freechat/shared/entities/chat/ChatMember;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
