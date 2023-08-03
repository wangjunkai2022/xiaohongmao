.class final Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/g$c;
.super Lkotlin/jvm/internal/Lambda;
.source "FriendRequestFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/g;->b0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/im/freechat/shared/entities/chat/FriendStatus;",
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
        "Lcom/im/freechat/shared/entities/chat/FriendStatus;",
        "it",
        "",
        "a",
        "(Lcom/im/freechat/shared/entities/chat/FriendStatus;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/g;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/g;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/g$c;->a:Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/g;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/im/freechat/shared/entities/chat/FriendStatus;)V
    .locals 3
    .param p1    # Lcom/im/freechat/shared/entities/chat/FriendStatus;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/im/freechat/sdk/SDKManager;->d()Lcom/im/freechat/sdk/a;

    move-result-object v0

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/g$c;->a:Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/g;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/g;->X(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/g;)Lcom/im/freechat/sdk/a$a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/chat/FriendStatus;->getUser()Lcom/im/freechat/shared/entities/contact/UserModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getUserId()I

    move-result p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/im/freechat/sdk/a;->x(Lcom/im/freechat/sdk/a$a;IZ)Lkotlinx/coroutines/j2;

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/im/freechat/shared/entities/chat/FriendStatus;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/g$c;->a(Lcom/im/freechat/shared/entities/chat/FriendStatus;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
