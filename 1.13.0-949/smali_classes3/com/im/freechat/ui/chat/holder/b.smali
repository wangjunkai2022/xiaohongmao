.class public abstract Lcom/im/freechat/ui/chat/holder/b;
.super Lcom/im/freechat/ui/chat/holder/BaseChatHolder;
.source "AudioMessageHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008&\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0018\u0010\u0010\u001a\u0014\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\n0\u000c\u0012\u0006\u0010\u001f\u001a\u00020\u0008\u00a2\u0006\u0004\u0008 \u0010!J*\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0015R&\u0010\u0010\u001a\u0014\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\n0\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u00118$X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u00158$X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u001c\u001a\u00020\u00198$X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\""
    }
    d2 = {
        "Lcom/im/freechat/ui/chat/holder/b;",
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
        "Lkotlin/Function2;",
        "Lcom/im/freechat/shared/entities/message/AudioAttachment;",
        "t",
        "Lkotlin/jvm/functions/Function2;",
        "onSeek",
        "Landroid/widget/ImageButton;",
        "C0",
        "()Landroid/widget/ImageButton;",
        "btnCancelOrPlay",
        "Lcom/im/freechat/utils/AudioView;",
        "B0",
        "()Lcom/im/freechat/utils/AudioView;",
        "audioView",
        "Landroid/widget/TextView;",
        "D0",
        "()Landroid/widget/TextView;",
        "tvAudioTime",
        "Landroidx/viewbinding/ViewBinding;",
        "binding",
        "isGroup",
        "<init>",
        "(Landroidx/viewbinding/ViewBinding;Lkotlin/jvm/functions/Function2;Z)V",
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
.field private final t:Lkotlin/jvm/functions/Function2;
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
.method public constructor <init>(Landroidx/viewbinding/ViewBinding;Lkotlin/jvm/functions/Function2;Z)V
    .locals 1
    .param p1    # Landroidx/viewbinding/ViewBinding;
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
            "Landroidx/viewbinding/ViewBinding;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/im/freechat/shared/entities/message/AudioAttachment;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSeek"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Landroidx/viewbinding/ViewBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;-><init>(Landroid/view/View;Z)V

    .line 2
    iput-object p2, p0, Lcom/im/freechat/ui/chat/holder/b;->t:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method private static final A0(Lcom/im/freechat/ui/chat/holder/b;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$messageWrapper"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->K()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static synthetic y0(Lcom/im/freechat/ui/chat/holder/b;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/im/freechat/ui/chat/holder/b;->A0(Lcom/im/freechat/ui/chat/holder/b;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic z0(Lcom/im/freechat/ui/chat/holder/b;)Lkotlin/jvm/functions/Function2;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/holder/b;->t:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method


# virtual methods
.method protected abstract B0()Lcom/im/freechat/utils/AudioView;
    .annotation build Lm8/g;
    .end annotation
.end method

.method protected abstract C0()Landroid/widget/ImageButton;
    .annotation build Lm8/g;
    .end annotation
.end method

.method protected abstract D0()Landroid/widget/TextView;
    .annotation build Lm8/g;
    .end annotation
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
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const-string v0, "messageWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->F(Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Lcom/im/freechat/shared/entities/message/Message;IZ)V

    .line 2
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object p2

    invoke-static {p2}, Lcom/im/freechat/extend/p;->D(Lcom/im/freechat/shared/entities/message/Message;)Lcom/im/freechat/shared/entities/message/AudioAttachment;

    move-result-object p2

    .line 3
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/b;->C0()Landroid/widget/ImageButton;

    move-result-object p3

    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->getPlaying()Z

    move-result p4

    if-eqz p4, :cond_0

    sget p4, Lb4/b$h;->A4:I

    goto :goto_0

    :cond_0
    sget p4, Lb4/b$h;->B4:I

    :goto_0
    invoke-virtual {p3, p4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 4
    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->getPlaying()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->getCurPosition()F

    move-result p3

    goto :goto_1

    :cond_1
    const/high16 p3, 0x3f800000    # 1.0f

    .line 5
    :goto_1
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/b;->B0()Lcom/im/freechat/utils/AudioView;

    move-result-object p4

    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->getMessageId()J

    move-result-wide v0

    invoke-static {v0, v1}, La5/a;->a(J)I

    move-result v0

    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->getDuration()I

    move-result v1

    invoke-virtual {p4, v0, v1}, Lcom/im/freechat/utils/AudioView;->a(II)V

    .line 6
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/b;->B0()Lcom/im/freechat/utils/AudioView;

    move-result-object p4

    new-instance v0, Lcom/im/freechat/ui/chat/holder/b$a;

    invoke-direct {v0, p0, p2}, Lcom/im/freechat/ui/chat/holder/b$a;-><init>(Lcom/im/freechat/ui/chat/holder/b;Lcom/im/freechat/shared/entities/message/AudioAttachment;)V

    invoke-virtual {p4, v0}, Lcom/im/freechat/utils/AudioView;->setOnSeek(Lkotlin/jvm/functions/Function1;)V

    .line 7
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/b;->B0()Lcom/im/freechat/utils/AudioView;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/im/freechat/utils/AudioView;->setCurPos(F)V

    .line 8
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/b;->D0()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->getDuration()I

    move-result p2

    invoke-static {p2}, Lcom/im/freechat/extend/m;->h(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/b;->C0()Landroid/widget/ImageButton;

    move-result-object p2

    new-instance p3, Lcom/im/freechat/ui/chat/holder/a;

    invoke-direct {p3, p0, p1}, Lcom/im/freechat/ui/chat/holder/a;-><init>(Lcom/im/freechat/ui/chat/holder/b;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
