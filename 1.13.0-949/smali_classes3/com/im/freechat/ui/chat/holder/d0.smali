.class public abstract Lcom/im/freechat/ui/chat/holder/d0;
.super Lcom/im/freechat/ui/chat/holder/BaseChatHolder;
.source "ImageMessageHolder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/ui/chat/holder/d0$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008&\u0018\u00002\u00020\u0001:\u0001\u001fB\u0017\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010\u001c\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ*\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0014J\u0018\u0010\u000c\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J(\u0010\u0012\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0008H\u0004R\u0014\u0010\u0015\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0017\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0014\u00a8\u0006 "
    }
    d2 = {
        "Lcom/im/freechat/ui/chat/holder/d0;",
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
        "z0",
        "Landroid/view/View;",
        "resizeView",
        "width",
        "height",
        "hasText",
        "B0",
        "t",
        "I",
        "maxWidth",
        "u",
        "maxHeight",
        "v",
        "minSize",
        "Landroidx/viewbinding/ViewBinding;",
        "binding",
        "isGroup",
        "<init>",
        "(Landroidx/viewbinding/ViewBinding;Z)V",
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


# instance fields
.field private final t:I

.field private final u:I

.field private final v:I


# direct methods
.method public constructor <init>(Landroidx/viewbinding/ViewBinding;Z)V
    .locals 1
    .param p1    # Landroidx/viewbinding/ViewBinding;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Landroidx/viewbinding/ViewBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;-><init>(Landroid/view/View;Z)V

    .line 2
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->M()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lb4/b$g;->v3:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/im/freechat/ui/chat/holder/d0;->t:I

    .line 3
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->M()Landroid/content/Context;

    move-result-object p1

    const-string p2, "getContext()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/im/freechat/extend/f;->v(Landroid/content/Context;)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    div-int/lit8 p1, p1, 0x5

    iput p1, p0, Lcom/im/freechat/ui/chat/holder/d0;->u:I

    .line 4
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->M()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lb4/b$g;->w3:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/im/freechat/ui/chat/holder/d0;->v:I

    return-void
.end method

.method private static final A0(Lcom/im/freechat/ui/chat/holder/d0;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Landroid/view/View;)V
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

.method public static synthetic y0(Lcom/im/freechat/ui/chat/holder/d0;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/im/freechat/ui/chat/holder/d0;->A0(Lcom/im/freechat/ui/chat/holder/d0;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected final B0(Landroid/view/View;IIZ)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "resizeView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    int-to-float v1, p2

    int-to-float v2, p3

    div-float/2addr v1, v2

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    if-eqz p4, :cond_1

    .line 1
    new-instance p4, Lcom/im/freechat/ui/chat/holder/d0$a;

    .line 2
    iget v2, p0, Lcom/im/freechat/ui/chat/holder/d0;->t:I

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 3
    iget v2, p0, Lcom/im/freechat/ui/chat/holder/d0;->u:I

    const/4 v3, 0x1

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    mul-int v2, v2, v0

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 4
    invoke-direct {p4, p2, p3}, Lcom/im/freechat/ui/chat/holder/d0$a;-><init>(II)V

    goto :goto_5

    :cond_1
    if-lez p3, :cond_9

    if-gtz p2, :cond_2

    goto :goto_4

    .line 5
    :cond_2
    iget p4, p0, Lcom/im/freechat/ui/chat/holder/d0;->u:I

    if-gt p3, p4, :cond_7

    iget v2, p0, Lcom/im/freechat/ui/chat/holder/d0;->t:I

    if-le p2, v2, :cond_3

    goto :goto_2

    .line 6
    :cond_3
    iget p4, p0, Lcom/im/freechat/ui/chat/holder/d0;->v:I

    if-lt p3, p4, :cond_5

    if-ge p2, p4, :cond_4

    goto :goto_1

    .line 7
    :cond_4
    new-instance p4, Lcom/im/freechat/ui/chat/holder/d0$a;

    invoke-direct {p4, p2, p3}, Lcom/im/freechat/ui/chat/holder/d0$a;-><init>(II)V

    goto :goto_5

    :cond_5
    :goto_1
    cmpg-float p2, v1, v0

    if-gez p2, :cond_6

    .line 8
    new-instance p2, Lcom/im/freechat/ui/chat/holder/d0$a;

    int-to-float p3, p4

    div-float/2addr p3, v1

    float-to-int p3, p3

    invoke-direct {p2, p4, p3}, Lcom/im/freechat/ui/chat/holder/d0$a;-><init>(II)V

    goto :goto_3

    .line 9
    :cond_6
    new-instance p2, Lcom/im/freechat/ui/chat/holder/d0$a;

    int-to-float p3, p4

    mul-float p3, p3, v1

    float-to-int p3, p3

    invoke-direct {p2, p3, p4}, Lcom/im/freechat/ui/chat/holder/d0$a;-><init>(II)V

    goto :goto_3

    :cond_7
    :goto_2
    cmpg-float p2, v1, v0

    if-gez p2, :cond_8

    .line 10
    new-instance p2, Lcom/im/freechat/ui/chat/holder/d0$a;

    int-to-float p3, p4

    mul-float p3, p3, v1

    float-to-int p3, p3

    .line 11
    iget p4, p0, Lcom/im/freechat/ui/chat/holder/d0;->t:I

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 12
    iget p4, p0, Lcom/im/freechat/ui/chat/holder/d0;->u:I

    .line 13
    invoke-direct {p2, p3, p4}, Lcom/im/freechat/ui/chat/holder/d0$a;-><init>(II)V

    goto :goto_3

    .line 14
    :cond_8
    new-instance p2, Lcom/im/freechat/ui/chat/holder/d0$a;

    .line 15
    iget p3, p0, Lcom/im/freechat/ui/chat/holder/d0;->t:I

    int-to-float v0, p3

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 16
    invoke-static {v0, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 17
    invoke-direct {p2, p3, p4}, Lcom/im/freechat/ui/chat/holder/d0$a;-><init>(II)V

    :goto_3
    move-object p4, p2

    goto :goto_5

    .line 18
    :cond_9
    :goto_4
    new-instance p4, Lcom/im/freechat/ui/chat/holder/d0$a;

    .line 19
    iget p2, p0, Lcom/im/freechat/ui/chat/holder/d0;->v:I

    .line 20
    invoke-direct {p4, p2, p2}, Lcom/im/freechat/ui/chat/holder/d0$a;-><init>(II)V

    .line 21
    :goto_5
    invoke-virtual {p4}, Lcom/im/freechat/ui/chat/holder/d0$a;->a()I

    move-result p2

    invoke-virtual {p4}, Lcom/im/freechat/ui/chat/holder/d0$a;->b()I

    move-result p3

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    .line 23
    iput p2, p4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 24
    iput p3, p4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 25
    invoke-virtual {p1, p4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
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
    invoke-super {p0, p1, p2, p3, p4}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->F(Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Lcom/im/freechat/shared/entities/message/Message;IZ)V

    .line 2
    invoke-virtual {p0, p1, p3}, Lcom/im/freechat/ui/chat/holder/d0;->z0(Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;I)V

    return-void
.end method

.method public z0(Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;I)V
    .locals 8
    .param p1    # Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string p2, "messageWrapper"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object p2

    invoke-static {p2}, Lcom/im/freechat/extend/p;->G(Lcom/im/freechat/shared/entities/message/Message;)Lcom/im/freechat/shared/entities/message/ImageAttachment;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object v0

    invoke-static {v0}, Lcom/im/freechat/extend/p;->o(Lcom/im/freechat/shared/entities/message/Message;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object v0

    invoke-static {v0}, Lcom/im/freechat/extend/p;->x(Lcom/im/freechat/shared/entities/message/Message;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/Message;->getRepliedMessage()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 5
    :goto_1
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->O()Landroid/widget/ImageView;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 6
    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/message/ImageAttachment;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/message/ImageAttachment;->getHeight()I

    move-result v2

    invoke-virtual {p0, v7, v1, v2, v0}, Lcom/im/freechat/ui/chat/holder/d0;->B0(Landroid/view/View;IIZ)V

    .line 7
    invoke-static {p2}, Lcom/im/freechat/extend/p;->l(Lcom/im/freechat/shared/entities/message/ImageAttachment;)Ljava/lang/Object;

    move-result-object v1

    .line 8
    invoke-static {p2}, Lcom/im/freechat/extend/p;->h(Lcom/im/freechat/shared/entities/message/ImageAttachment;)Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v3, v7

    .line 9
    invoke-static/range {v1 .. v6}, Lcom/im/freechat/extend/m;->u(Ljava/lang/Object;Ljava/lang/Object;Landroid/widget/ImageView;IILjava/lang/Object;)V

    .line 10
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object p2

    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/message/Message;->getMessageStatus()Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    move-result-object p2

    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/message/Message$MessageStatus;->isSent()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 11
    new-instance p2, Lcom/im/freechat/ui/chat/holder/c0;

    invoke-direct {p2, p0, p1}, Lcom/im/freechat/ui/chat/holder/c0;-><init>(Lcom/im/freechat/ui/chat/holder/d0;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;)V

    invoke-virtual {v7, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 12
    invoke-virtual {v7, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    :goto_2
    return-void
.end method
