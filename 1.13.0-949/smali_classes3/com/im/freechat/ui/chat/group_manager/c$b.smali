.class public final Lcom/im/freechat/ui/chat/group_manager/c$b;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "GroupManagerAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/ui/chat/group_manager/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
        "Lcom/im/freechat/shared/entities/chat/ChatMember;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016J\u0018\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/im/freechat/ui/chat/group_manager/c$b;",
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;",
        "Lcom/im/freechat/shared/entities/chat/ChatMember;",
        "oldItem",
        "newItem",
        "",
        "b",
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
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/im/freechat/shared/entities/chat/ChatMember;Lcom/im/freechat/shared/entities/chat/ChatMember;)Z
    .locals 1
    .param p1    # Lcom/im/freechat/shared/entities/chat/ChatMember;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/shared/entities/chat/ChatMember;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/im/freechat/shared/entities/chat/ChatMember;

    check-cast p2, Lcom/im/freechat/shared/entities/chat/ChatMember;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/chat/group_manager/c$b;->a(Lcom/im/freechat/shared/entities/chat/ChatMember;Lcom/im/freechat/shared/entities/chat/ChatMember;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/im/freechat/shared/entities/chat/ChatMember;

    check-cast p2, Lcom/im/freechat/shared/entities/chat/ChatMember;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/chat/group_manager/c$b;->b(Lcom/im/freechat/shared/entities/chat/ChatMember;Lcom/im/freechat/shared/entities/chat/ChatMember;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/im/freechat/shared/entities/chat/ChatMember;Lcom/im/freechat/shared/entities/chat/ChatMember;)Z
    .locals 1
    .param p1    # Lcom/im/freechat/shared/entities/chat/ChatMember;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/shared/entities/chat/ChatMember;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/chat/ChatMember;->getContact()Lcom/im/freechat/shared/entities/contact/UserModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getUserId()I

    move-result p1

    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/chat/ChatMember;->getContact()Lcom/im/freechat/shared/entities/contact/UserModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/contact/UserModel;->getUserId()I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
