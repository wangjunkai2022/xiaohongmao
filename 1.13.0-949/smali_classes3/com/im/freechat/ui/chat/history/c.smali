.class public final Lcom/im/freechat/ui/chat/history/c;
.super Lcom/im/freechat/ui/chat/history/g;
.source "HistoryMediaAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0018\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00040\u0006\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R&\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00040\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\n\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/im/freechat/ui/chat/history/c;",
        "Lcom/im/freechat/ui/chat/history/g;",
        "Lcom/im/freechat/ui/chat/history/a;",
        "attachmentWrapper",
        "",
        "b",
        "Lkotlin/Function2;",
        "Lcom/im/freechat/shared/entities/message/AudioAttachment;",
        "",
        "c",
        "Lkotlin/jvm/functions/Function2;",
        "onSeek",
        "Lf4/i1;",
        "binding",
        "<init>",
        "(Lf4/i1;Lkotlin/jvm/functions/Function2;)V",
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
.field private final b:Lf4/i1;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/im/freechat/shared/entities/message/AudioAttachment;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf4/i1;Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .param p1    # Lf4/i1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf4/i1;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/im/freechat/shared/entities/message/AudioAttachment;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSeek"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lf4/i1;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/im/freechat/ui/chat/history/g;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/ui/chat/history/c;->b:Lf4/i1;

    .line 3
    iput-object p2, p0, Lcom/im/freechat/ui/chat/history/c;->c:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public static synthetic f(Lcom/im/freechat/ui/chat/history/c;Lcom/im/freechat/ui/chat/history/a;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/im/freechat/ui/chat/history/c;->h(Lcom/im/freechat/ui/chat/history/c;Lcom/im/freechat/ui/chat/history/a;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic g(Lcom/im/freechat/ui/chat/history/c;)Lkotlin/jvm/functions/Function2;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/history/c;->c:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method private static final h(Lcom/im/freechat/ui/chat/history/c;Lcom/im/freechat/ui/chat/history/a;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$attachmentWrapper"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/history/g;->c()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public b(Lcom/im/freechat/ui/chat/history/a;)V
    .locals 7
    .param p1    # Lcom/im/freechat/ui/chat/history/a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "attachmentWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/history/a;->h()Lcom/im/freechat/shared/entities/message/Attachment;

    move-result-object v0

    instance-of v0, v0, Lcom/im/freechat/shared/entities/message/AudioAttachment;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/im/freechat/ui/chat/history/c;->b:Lf4/i1;

    .line 3
    iget-object v1, v0, Lf4/i1;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/history/a;->l()Lcom/im/freechat/shared/entities/contact/Sender;

    move-result-object v2

    invoke-virtual {v2}, Lcom/im/freechat/shared/entities/contact/Sender;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/history/a;->h()Lcom/im/freechat/shared/entities/message/Attachment;

    move-result-object v1

    .line 5
    iget-object v2, v0, Lf4/i1;->d:Landroid/widget/ImageButton;

    move-object v3, v1

    check-cast v3, Lcom/im/freechat/shared/entities/message/AudioAttachment;

    invoke-virtual {v3}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->getPlaying()Z

    move-result v4

    if-eqz v4, :cond_1

    sget v4, Lb4/b$h;->A4:I

    goto :goto_0

    :cond_1
    sget v4, Lb4/b$h;->B4:I

    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 6
    invoke-virtual {v3}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->getPlaying()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->getCurPosition()F

    move-result v2

    goto :goto_1

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    .line 7
    :goto_1
    iget-object v4, v0, Lf4/i1;->b:Lcom/im/freechat/utils/AudioView;

    invoke-virtual {v3}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->getMessageId()J

    move-result-wide v5

    invoke-static {v5, v6}, La5/a;->a(J)I

    move-result v5

    invoke-virtual {v3}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->getDuration()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/im/freechat/utils/AudioView;->a(II)V

    .line 8
    iget-object v4, v0, Lf4/i1;->b:Lcom/im/freechat/utils/AudioView;

    new-instance v5, Lcom/im/freechat/ui/chat/history/c$a;

    invoke-direct {v5, p0, v1}, Lcom/im/freechat/ui/chat/history/c$a;-><init>(Lcom/im/freechat/ui/chat/history/c;Lcom/im/freechat/shared/entities/message/Attachment;)V

    invoke-virtual {v4, v5}, Lcom/im/freechat/utils/AudioView;->setOnSeek(Lkotlin/jvm/functions/Function1;)V

    .line 9
    iget-object v1, v0, Lf4/i1;->b:Lcom/im/freechat/utils/AudioView;

    invoke-virtual {v1, v2}, Lcom/im/freechat/utils/AudioView;->setCurPos(F)V

    .line 10
    iget-object v1, v0, Lf4/i1;->f:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->getDuration()I

    move-result v2

    invoke-static {v2}, Lcom/im/freechat/extend/m;->h(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, v0, Lf4/i1;->d:Landroid/widget/ImageButton;

    new-instance v1, Lcom/im/freechat/ui/chat/history/b;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/ui/chat/history/b;-><init>(Lcom/im/freechat/ui/chat/history/c;Lcom/im/freechat/ui/chat/history/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
