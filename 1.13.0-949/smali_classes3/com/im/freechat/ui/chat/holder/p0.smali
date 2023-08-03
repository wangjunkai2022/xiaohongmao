.class public final Lcom/im/freechat/ui/chat/holder/p0;
.super Lcom/im/freechat/ui/chat/holder/BaseChatHolder;
.source "TextMessageHolder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextMessageHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextMessageHolder.kt\ncom/im/freechat/ui/chat/holder/TextMessageChannelHolder\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,106:1\n254#2,2:107\n*S KotlinDebug\n*F\n+ 1 TextMessageHolder.kt\ncom/im/freechat/ui/chat/holder/TextMessageChannelHolder\n*L\n102#1:107,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0001\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010%\u001a\u00020$\u00a2\u0006\u0004\u0008&\u0010\'J*\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0014R\u001a\u0010\u0011\u001a\u00020\u000c8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0017\u001a\u00020\u00128\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u001d\u001a\u00020\u00188\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001cR\u001c\u0010#\u001a\u0004\u0018\u00010\u001e8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"\u00a8\u0006("
    }
    d2 = {
        "Lcom/im/freechat/ui/chat/holder/p0;",
        "Lcom/im/freechat/ui/chat/holder/BaseChatHolder;",
        "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;",
        "messageWrapper",
        "Lcom/im/freechat/shared/entities/message/Message;",
        "prev",
        "",
        "position",
        "",
        "selectionMode",
        "",
        "F",
        "Landroid/widget/TextView;",
        "u",
        "Landroid/widget/TextView;",
        "X",
        "()Landroid/widget/TextView;",
        "tvEditTag",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "v",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "z0",
        "()Landroidx/constraintlayout/widget/ConstraintLayout;",
        "messageContent",
        "Landroidx/emoji2/widget/EmojiTextView;",
        "w",
        "Landroidx/emoji2/widget/EmojiTextView;",
        "A0",
        "()Landroidx/emoji2/widget/EmojiTextView;",
        "tvTextContent",
        "",
        "x",
        "Ljava/lang/Void;",
        "y0",
        "()Ljava/lang/Void;",
        "ivPreview",
        "Lf4/u0;",
        "binding",
        "<init>",
        "(Lf4/u0;)V",
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
.field private final t:Lf4/u0;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final u:Landroid/widget/TextView;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final v:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final w:Landroidx/emoji2/widget/EmojiTextView;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final x:Ljava/lang/Void;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf4/u0;)V
    .locals 2
    .param p1    # Lf4/u0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lf4/u0;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;-><init>(Landroid/view/View;Z)V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/ui/chat/holder/p0;->t:Lf4/u0;

    .line 3
    iget-object v0, p1, Lf4/u0;->f:Landroid/widget/TextView;

    const-string v1, "binding.tvTime"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/im/freechat/ui/chat/holder/p0;->u:Landroid/widget/TextView;

    .line 4
    iget-object v0, p1, Lf4/u0;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "binding.messageContent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/im/freechat/ui/chat/holder/p0;->v:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 5
    iget-object p1, p1, Lf4/u0;->d:Landroidx/emoji2/widget/EmojiTextView;

    const-string v0, "binding.tvMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/holder/p0;->w:Landroidx/emoji2/widget/EmojiTextView;

    return-void
.end method


# virtual methods
.method public A0()Landroidx/emoji2/widget/EmojiTextView;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/p0;->w:Landroidx/emoji2/widget/EmojiTextView;

    return-object v0
.end method

.method protected F(Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Lcom/im/freechat/shared/entities/message/Message;IZ)V
    .locals 2
    .param p1    # Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/shared/entities/message/Message;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string p3, "messageWrapper"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/p0;->A0()Landroidx/emoji2/widget/EmojiTextView;

    move-result-object p3

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object p4

    invoke-virtual {p0, p3, p4}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->v0(Landroid/widget/TextView;Lcom/im/freechat/shared/entities/message/Message;)V

    .line 2
    iget-object p3, p0, Lcom/im/freechat/ui/chat/holder/p0;->t:Lf4/u0;

    iget-object p3, p3, Lf4/u0;->e:Landroid/widget/TextView;

    .line 3
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object p4

    invoke-virtual {p4}, Lcom/im/freechat/shared/entities/message/Message;->getSendTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/im/freechat/extend/m;->g(J)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p4, ""

    .line 4
    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/message/Message;->getSendTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/Message;->getSendTime()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/im/freechat/extend/m;->f(JLjava/lang/Long;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/16 p4, 0x8

    .line 5
    :goto_2
    invoke-virtual {p3, p4}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic O()Landroid/widget/ImageView;
    .locals 1

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/p0;->y0()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public bridge synthetic U()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/p0;->z0()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public X()Landroid/widget/TextView;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/p0;->u:Landroid/widget/TextView;

    return-object v0
.end method

.method public bridge synthetic Y()Landroid/widget/TextView;
    .locals 1

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/p0;->A0()Landroidx/emoji2/widget/EmojiTextView;

    move-result-object v0

    return-object v0
.end method

.method public y0()Ljava/lang/Void;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/p0;->x:Ljava/lang/Void;

    return-object v0
.end method

.method public z0()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/p0;->v:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
