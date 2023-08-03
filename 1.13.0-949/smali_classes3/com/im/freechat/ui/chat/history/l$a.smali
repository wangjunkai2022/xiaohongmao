.class public final Lcom/im/freechat/ui/chat/history/l$a;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "HistoryMediaAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/ui/chat/history/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
        "Lcom/im/freechat/ui/chat/history/a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016J\u0018\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/im/freechat/ui/chat/history/l$a",
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;",
        "Lcom/im/freechat/ui/chat/history/a;",
        "oldItem",
        "newItem",
        "",
        "b",
        "a",
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
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/im/freechat/ui/chat/history/a;Lcom/im/freechat/ui/chat/history/a;)Z
    .locals 1
    .param p1    # Lcom/im/freechat/ui/chat/history/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/ui/chat/history/a;
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

    check-cast p1, Lcom/im/freechat/ui/chat/history/a;

    check-cast p2, Lcom/im/freechat/ui/chat/history/a;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/chat/history/l$a;->a(Lcom/im/freechat/ui/chat/history/a;Lcom/im/freechat/ui/chat/history/a;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/im/freechat/ui/chat/history/a;

    check-cast p2, Lcom/im/freechat/ui/chat/history/a;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/chat/history/l$a;->b(Lcom/im/freechat/ui/chat/history/a;Lcom/im/freechat/ui/chat/history/a;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/im/freechat/ui/chat/history/a;Lcom/im/freechat/ui/chat/history/a;)Z
    .locals 3
    .param p1    # Lcom/im/freechat/ui/chat/history/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/ui/chat/history/a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/history/a;->h()Lcom/im/freechat/shared/entities/message/Attachment;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/im/freechat/shared/entities/message/Attachment;->getMessageId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    invoke-virtual {p2}, Lcom/im/freechat/ui/chat/history/a;->h()Lcom/im/freechat/shared/entities/message/Attachment;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/im/freechat/shared/entities/message/Attachment;->getMessageId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
