.class final Lcom/im/freechat/ui/chat/history/HistoryTabFragment$d;
.super Lkotlin/jvm/internal/Lambda;
.source "HistoryTabFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/ui/chat/history/HistoryTabFragment;->s0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/im/freechat/ui/chat/history/a;",
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
        "Lcom/im/freechat/ui/chat/history/a;",
        "wrapper",
        "",
        "a",
        "(Lcom/im/freechat/ui/chat/history/a;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/im/freechat/ui/chat/history/HistoryTabFragment;


# direct methods
.method constructor <init>(Lcom/im/freechat/ui/chat/history/HistoryTabFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/im/freechat/ui/chat/history/HistoryTabFragment$d;->a:Lcom/im/freechat/ui/chat/history/HistoryTabFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/im/freechat/ui/chat/history/a;)V
    .locals 9
    .param p1    # Lcom/im/freechat/ui/chat/history/a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "wrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/history/a;->h()Lcom/im/freechat/shared/entities/message/Attachment;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/im/freechat/shared/entities/message/ImageAttachment;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    instance-of v1, v0, Lcom/im/freechat/shared/entities/message/VideoAttachment;

    :goto_0
    if-eqz v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/im/freechat/ui/chat/history/HistoryTabFragment$d;->a:Lcom/im/freechat/ui/chat/history/HistoryTabFragment;

    .line 5
    sget-object v1, Lcom/im/freechat/ui/chat/history/HistoryTabViewModel$Directions;->GALLERY:Lcom/im/freechat/ui/chat/history/HistoryTabViewModel$Directions;

    const/4 v3, 0x2

    new-array v3, v3, [Lkotlin/Pair;

    const/4 v4, 0x0

    .line 6
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/history/a;->i()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "chatId"

    invoke-static {v6, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/history/a;->h()Lcom/im/freechat/shared/entities/message/Attachment;

    move-result-object p1

    invoke-interface {p1}, Lcom/im/freechat/shared/entities/message/Attachment;->getMediaId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v4, "clicked_item"

    invoke-static {v4, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {v3}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object p1

    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/im/freechat/base/f;->c0(Ljava/lang/Enum;Landroid/os/Bundle;)V

    goto :goto_1

    .line 8
    :cond_1
    instance-of v1, v0, Lcom/im/freechat/shared/entities/message/AudioAttachment;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/im/freechat/ui/chat/history/HistoryTabFragment$d;->a:Lcom/im/freechat/ui/chat/history/HistoryTabFragment;

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/history/HistoryTabFragment;->q0()Lcom/im/freechat/ui/chat/history/HistoryTabViewModel;

    move-result-object v1

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/history/a;->h()Lcom/im/freechat/shared/entities/message/Attachment;

    move-result-object p1

    invoke-interface {p1}, Lcom/im/freechat/shared/entities/message/Attachment;->getMessageId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/im/freechat/ui/chat/history/HistoryTabViewModel;->n(Lcom/im/freechat/ui/chat/history/HistoryTabViewModel;JJZILjava/lang/Object;)V

    goto :goto_1

    .line 9
    :cond_2
    instance-of v0, v0, Lcom/im/freechat/shared/entities/message/FileAttachment;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/im/freechat/ui/chat/history/HistoryTabFragment$d;->a:Lcom/im/freechat/ui/chat/history/HistoryTabFragment;

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/history/HistoryTabFragment;->q0()Lcom/im/freechat/ui/chat/history/HistoryTabViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/im/freechat/ui/chat/history/HistoryTabViewModel;->q(Lcom/im/freechat/ui/chat/history/a;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/im/freechat/ui/chat/history/a;

    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/chat/history/HistoryTabFragment$d;->a(Lcom/im/freechat/ui/chat/history/a;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
