.class public final Lcom/im/freechat/ui/chat/history/j;
.super Lcom/im/freechat/ui/chat/history/g;
.source "HistoryMediaAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHistoryMediaAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HistoryMediaAdapter.kt\ncom/im/freechat/ui/chat/history/HistoryLinkHolder\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,256:1\n254#2,2:257\n254#2,2:260\n1#3:259\n*S KotlinDebug\n*F\n+ 1 HistoryMediaAdapter.kt\ncom/im/freechat/ui/chat/history/HistoryLinkHolder\n*L\n239#1:257,2\n241#1:260,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/im/freechat/ui/chat/history/j;",
        "Lcom/im/freechat/ui/chat/history/g;",
        "Lcom/im/freechat/ui/chat/history/a;",
        "attachmentWrapper",
        "",
        "b",
        "Lf4/l1;",
        "binding",
        "<init>",
        "(Lf4/l1;)V",
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
.field private final b:Lf4/l1;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf4/l1;)V
    .locals 2
    .param p1    # Lf4/l1;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lf4/l1;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/im/freechat/ui/chat/history/g;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/history/j;->b:Lf4/l1;

    return-void
.end method


# virtual methods
.method public b(Lcom/im/freechat/ui/chat/history/a;)V
    .locals 13
    .param p1    # Lcom/im/freechat/ui/chat/history/a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "attachmentWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/im/freechat/ui/chat/history/j;->b:Lf4/l1;

    .line 2
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/history/a;->l()Lcom/im/freechat/shared/entities/contact/Sender;

    move-result-object v1

    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/contact/Sender;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, v0, Lf4/l1;->e:Landroid/widget/TextView;

    invoke-static {v1}, Lkotlin/text/StringsKt;->first(Ljava/lang/CharSequence;)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v2, v0, Lf4/l1;->e:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/im/freechat/extend/r;->a(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 5
    iget-object v2, v0, Lf4/l1;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v3, v0, Lf4/l1;->g:Landroid/widget/TextView;

    const-string v1, "tvSender"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/history/a;->l()Lcom/im/freechat/shared/entities/contact/Sender;

    move-result-object v1

    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/contact/Sender;->getManagementRole()Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    move-result-object v1

    invoke-static {v1}, Lcom/im/freechat/extend/m;->m(Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x16

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/im/freechat/utils/v;->d(Landroid/widget/TextView;Ljava/lang/Integer;ZZZZILjava/lang/Object;)V

    .line 7
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/history/a;->l()Lcom/im/freechat/shared/entities/contact/Sender;

    move-result-object v1

    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/contact/Sender;->getAvatar()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ivIcon"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 8
    iget-object v4, v0, Lf4/l1;->d:Landroid/widget/ImageView;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 9
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object v4, p0, Lcom/im/freechat/ui/chat/history/j;->b:Lf4/l1;

    iget-object v4, v4, Lf4/l1;->d:Landroid/widget/ImageView;

    const-string v5, "binding.ivIcon"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v1}, Lcom/im/freechat/extend/m;->o(Landroid/widget/ImageView;Ljava/lang/Object;)V

    .line 11
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-nez v1, :cond_1

    .line 12
    iget-object v1, v0, Lf4/l1;->d:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    .line 13
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    :cond_1
    iget-object v1, v0, Lf4/l1;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/history/a;->k()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/im/freechat/extend/f;->o(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v1, v0, Lf4/l1;->f:Landroidx/emoji2/widget/EmojiTextView;

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/history/a;->j()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/im/freechat/extend/p;->m(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3e

    const/4 v12, 0x0

    const-string v5, "\n"

    invoke-static/range {v4 .. v12}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object p1, v0, Lf4/l1;->f:Landroidx/emoji2/widget/EmojiTextView;

    new-instance v0, Lcom/im/freechat/ui/chat/holder/g0;

    invoke-static {}, Lcom/im/freechat/ui/chat/holder/t;->a()Lcom/im/freechat/ui/chat/holder/g0$a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/im/freechat/ui/chat/holder/g0;-><init>(Lcom/im/freechat/ui/chat/holder/g0$a;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method
