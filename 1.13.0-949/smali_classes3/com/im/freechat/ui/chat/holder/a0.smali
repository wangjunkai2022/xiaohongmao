.class public final Lcom/im/freechat/ui/chat/holder/a0;
.super Lcom/im/freechat/ui/chat/holder/d0;
.source "ImageMessageHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0001\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u00a2\u0006\u0004\u0008!\u0010\"J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016R\u001a\u0010\r\u001a\u00020\u00088\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0013\u001a\u00020\u000e8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u00148\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u00148\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u0016\u001a\u0004\u0008\u001b\u0010\u0018\u00a8\u0006#"
    }
    d2 = {
        "Lcom/im/freechat/ui/chat/holder/a0;",
        "Lcom/im/freechat/ui/chat/holder/d0;",
        "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;",
        "messageWrapper",
        "",
        "position",
        "",
        "z0",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "w",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "C0",
        "()Landroidx/constraintlayout/widget/ConstraintLayout;",
        "messageContent",
        "Landroid/widget/ImageView;",
        "x",
        "Landroid/widget/ImageView;",
        "O",
        "()Landroid/widget/ImageView;",
        "ivPreview",
        "",
        "y",
        "Ljava/lang/Void;",
        "E0",
        "()Ljava/lang/Void;",
        "tvTextContent",
        "z",
        "D0",
        "tvEditTag",
        "Lf4/t0;",
        "binding",
        "",
        "isGroup",
        "<init>",
        "(Lf4/t0;Z)V",
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
.field private final w:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final x:Landroid/widget/ImageView;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final y:Ljava/lang/Void;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final z:Ljava/lang/Void;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf4/t0;Z)V
    .locals 1
    .param p1    # Lf4/t0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/im/freechat/ui/chat/holder/d0;-><init>(Landroidx/viewbinding/ViewBinding;Z)V

    .line 2
    iget-object p2, p1, Lf4/t0;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v0, "binding.messageContent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/im/freechat/ui/chat/holder/a0;->w:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 3
    iget-object p1, p1, Lf4/t0;->c:Landroid/widget/ImageView;

    const-string p2, "binding.ivPre"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/holder/a0;->x:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public C0()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/a0;->w:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.method public D0()Ljava/lang/Void;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/a0;->z:Ljava/lang/Void;

    return-object v0
.end method

.method public E0()Ljava/lang/Void;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/a0;->y:Ljava/lang/Void;

    return-object v0
.end method

.method public O()Landroid/widget/ImageView;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/a0;->x:Landroid/widget/ImageView;

    return-object v0
.end method

.method public bridge synthetic U()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/a0;->C0()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic X()Landroid/widget/TextView;
    .locals 1

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/a0;->D0()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public bridge synthetic Y()Landroid/widget/TextView;
    .locals 1

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/a0;->E0()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public z0(Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;I)V
    .locals 7
    .param p1    # Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string p2, "messageWrapper"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object p2

    invoke-static {p2}, Lcom/im/freechat/extend/p;->o(Lcom/im/freechat/shared/entities/message/Message;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object p2

    invoke-static {p2}, Lcom/im/freechat/extend/p;->x(Lcom/im/freechat/shared/entities/message/Message;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object p2

    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/message/Message;->getRepliedMessage()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 2
    :goto_1
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object v1

    invoke-static {v1}, Lcom/im/freechat/extend/p;->n(Lcom/im/freechat/shared/entities/message/Message;)Lcom/im/freechat/shared/entities/message/GifAttachment;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/a0;->O()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/message/GifAttachment;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/message/GifAttachment;->getHeight()I

    move-result v6

    invoke-virtual {p0, v4, v5, v6, p2}, Lcom/im/freechat/ui/chat/holder/d0;->B0(Landroid/view/View;IIZ)V

    .line 4
    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/message/GifAttachment;->getRemoteUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/a0;->O()Landroid/widget/ImageView;

    move-result-object v4

    invoke-static {v1, v4, v0, v3, v2}, Lcom/im/freechat/extend/m;->q(Ljava/lang/Object;Landroid/widget/ImageView;IILjava/lang/Object;)V

    .line 5
    :cond_2
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object p1

    invoke-static {p1}, Lcom/im/freechat/extend/p;->c(Lcom/im/freechat/shared/entities/message/Message;)Lcom/im/freechat/shared/entities/message/FileAttachment;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/a0;->O()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p0, v1, v0, v0, p2}, Lcom/im/freechat/ui/chat/holder/d0;->B0(Landroid/view/View;IIZ)V

    .line 7
    invoke-static {p1}, Lcom/im/freechat/extend/p;->k(Lcom/im/freechat/shared/entities/message/Attachment;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/a0;->O()Landroid/widget/ImageView;

    move-result-object p2

    invoke-static {p1, p2, v0, v3, v2}, Lcom/im/freechat/extend/m;->q(Ljava/lang/Object;Landroid/widget/ImageView;IILjava/lang/Object;)V

    :cond_3
    return-void
.end method
