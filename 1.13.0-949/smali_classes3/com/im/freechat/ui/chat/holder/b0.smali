.class public final Lcom/im/freechat/ui/chat/holder/b0;
.super Lcom/im/freechat/ui/chat/holder/d0;
.source "ImageMessageHolder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/ui/chat/holder/b0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageMessageHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageMessageHolder.kt\ncom/im/freechat/ui/chat/holder/ImageGroupMessageHolder\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,275:1\n254#2,2:276\n*S KotlinDebug\n*F\n+ 1 ImageMessageHolder.kt\ncom/im/freechat/ui/chat/holder/ImageGroupMessageHolder\n*L\n161#1:276,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0001\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010%\u001a\u00020\u0008\u00a2\u0006\u0004\u0008&\u0010\'J*\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0014J\u0010\u0010\r\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\u0004H\u0016R\u001a\u0010\u0013\u001a\u00020\u000e8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0019\u001a\u00020\u00148\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u001a8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001eR\u001c\u0010\"\u001a\u0004\u0018\u00010\u001a8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008 \u0010\u001c\u001a\u0004\u0008!\u0010\u001e\u00a8\u0006("
    }
    d2 = {
        "Lcom/im/freechat/ui/chat/holder/b0;",
        "Lcom/im/freechat/ui/chat/holder/d0;",
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
        "message",
        "I",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "x",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "C0",
        "()Landroidx/constraintlayout/widget/ConstraintLayout;",
        "messageContent",
        "Landroid/widget/ImageView;",
        "y",
        "Landroid/widget/ImageView;",
        "O",
        "()Landroid/widget/ImageView;",
        "ivPreview",
        "",
        "z",
        "Ljava/lang/Void;",
        "E0",
        "()Ljava/lang/Void;",
        "tvTextContent",
        "A",
        "D0",
        "tvEditTag",
        "Lf4/o1;",
        "binding",
        "isGroup",
        "<init>",
        "(Lf4/o1;Z)V",
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
.field private final A:Ljava/lang/Void;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final w:Lf4/o1;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final x:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final y:Landroid/widget/ImageView;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final z:Ljava/lang/Void;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf4/o1;Z)V
    .locals 1
    .param p1    # Lf4/o1;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/im/freechat/ui/chat/holder/d0;-><init>(Landroidx/viewbinding/ViewBinding;Z)V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/ui/chat/holder/b0;->w:Lf4/o1;

    .line 3
    iget-object p2, p1, Lf4/o1;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v0, "binding.container"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/im/freechat/ui/chat/holder/b0;->x:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 4
    iget-object p1, p1, Lf4/o1;->e:Landroid/widget/ImageView;

    const-string p2, "binding.ivPre"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/holder/b0;->y:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public C0()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/b0;->x:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.method public D0()Ljava/lang/Void;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/b0;->A:Ljava/lang/Void;

    return-object v0
.end method

.method public E0()Ljava/lang/Void;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/b0;->z:Ljava/lang/Void;

    return-object v0
.end method

.method protected F(Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Lcom/im/freechat/shared/entities/message/Message;IZ)V
    .locals 1
    .param p1    # Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/shared/entities/message/Message;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string v0, "messageWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/im/freechat/ui/chat/holder/d0;->F(Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Lcom/im/freechat/shared/entities/message/Message;IZ)V

    .line 2
    iget-object p2, p0, Lcom/im/freechat/ui/chat/holder/b0;->w:Lf4/o1;

    iget-object p2, p2, Lf4/o1;->c:Lf4/q0;

    invoke-virtual {p2}, Lf4/q0;->b()Landroid/widget/FrameLayout;

    move-result-object p2

    const-string p3, "binding.cbSelect.root"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/16 p3, 0x8

    .line 3
    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p2, p0, Lcom/im/freechat/ui/chat/holder/b0;->w:Lf4/o1;

    iget-object p2, p2, Lf4/o1;->c:Lf4/q0;

    iget-object p2, p2, Lf4/q0;->b:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->j()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public I(Lcom/im/freechat/shared/entities/message/Message;)V
    .locals 4
    .param p1    # Lcom/im/freechat/shared/entities/message/Message;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/b0;->w:Lf4/o1;

    .line 2
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/Message;->getMessageStatus()Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    move-result-object p1

    sget-object v1, Lcom/im/freechat/ui/chat/holder/b0$a;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 3
    iget-object p1, v0, Lf4/o1;->f:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    iget-object p1, v0, Lf4/o1;->b:Landroid/widget/ImageButton;

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, v0, Lf4/o1;->f:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 6
    iget-object p1, v0, Lf4/o1;->b:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, v0, Lf4/o1;->f:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 8
    iget-object p1, v0, Lf4/o1;->b:Landroid/widget/ImageButton;

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public O()Landroid/widget/ImageView;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/b0;->y:Landroid/widget/ImageView;

    return-object v0
.end method

.method public bridge synthetic U()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/b0;->C0()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic X()Landroid/widget/TextView;
    .locals 1

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/b0;->D0()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public bridge synthetic Y()Landroid/widget/TextView;
    .locals 1

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/b0;->E0()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method
