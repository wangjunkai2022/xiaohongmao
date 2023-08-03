.class final Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$e;
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

    iput-object p1, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$e;->a:Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/im/freechat/shared/entities/chat/ChatMember;)V
    .locals 1
    .param p1    # Lcom/im/freechat/shared/entities/chat/ChatMember;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$e;->a:Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;

    invoke-static {v0, p1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->C0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;Lcom/im/freechat/shared/entities/chat/ChatMember;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/im/freechat/shared/entities/chat/ChatMember;

    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$e;->a(Lcom/im/freechat/shared/entities/chat/ChatMember;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
