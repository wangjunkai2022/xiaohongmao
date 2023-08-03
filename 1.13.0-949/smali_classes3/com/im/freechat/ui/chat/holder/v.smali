.class public abstract Lcom/im/freechat/ui/chat/holder/v;
.super Lcom/im/freechat/ui/chat/holder/BaseChatHolder;
.source "FileMessageHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008&\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010%\u001a\u00020\u0008\u00a2\u0006\u0004\u0008&\u0010\'J*\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0014J\u001c\u0010\u0010\u001a\u00020\n2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000cH\u0016R\"\u0010\u0018\u001a\u00020\u00118\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u001c\u001a\u00020\u00198$X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u001e\u001a\u00020\u00198$X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001bR\u0014\u0010\"\u001a\u00020\u001f8$X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!\u00a8\u0006("
    }
    d2 = {
        "Lcom/im/freechat/ui/chat/holder/v;",
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
        "",
        "",
        "Lcom/im/freechat/shared/entities/DownloadInfo;",
        "downloadInfos",
        "h0",
        "Lcom/im/freechat/shared/entities/message/FileAttachment;",
        "t",
        "Lcom/im/freechat/shared/entities/message/FileAttachment;",
        "A0",
        "()Lcom/im/freechat/shared/entities/message/FileAttachment;",
        "E0",
        "(Lcom/im/freechat/shared/entities/message/FileAttachment;)V",
        "message",
        "Landroid/widget/TextView;",
        "C0",
        "()Landroid/widget/TextView;",
        "tvFileName",
        "D0",
        "tvFileSize",
        "Landroid/widget/ProgressBar;",
        "B0",
        "()Landroid/widget/ProgressBar;",
        "pbLoaded",
        "Landroidx/viewbinding/ViewBinding;",
        "binding",
        "isGroup",
        "<init>",
        "(Landroidx/viewbinding/ViewBinding;Z)V",
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
.field public t:Lcom/im/freechat/shared/entities/message/FileAttachment;


# direct methods
.method public constructor <init>(Landroidx/viewbinding/ViewBinding;Z)V
    .locals 1
    .param p1    # Landroidx/viewbinding/ViewBinding;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroidx/viewbinding/ViewBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;-><init>(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic y0(Lcom/im/freechat/ui/chat/holder/v;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/im/freechat/ui/chat/holder/v;->z0(Lcom/im/freechat/ui/chat/holder/v;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Landroid/view/View;)V

    return-void
.end method

.method private static final z0(Lcom/im/freechat/ui/chat/holder/v;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Landroid/view/View;)V
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


# virtual methods
.method public final A0()Lcom/im/freechat/shared/entities/message/FileAttachment;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/v;->t:Lcom/im/freechat/shared/entities/message/FileAttachment;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "message"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract B0()Landroid/widget/ProgressBar;
    .annotation build Lm8/g;
    .end annotation
.end method

.method protected abstract C0()Landroid/widget/TextView;
    .annotation build Lm8/g;
    .end annotation
.end method

.method protected abstract D0()Landroid/widget/TextView;
    .annotation build Lm8/g;
    .end annotation
.end method

.method public final E0(Lcom/im/freechat/shared/entities/message/FileAttachment;)V
    .locals 1
    .param p1    # Lcom/im/freechat/shared/entities/message/FileAttachment;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/holder/v;->t:Lcom/im/freechat/shared/entities/message/FileAttachment;

    return-void
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

    const-string v0, "messageWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->F(Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Lcom/im/freechat/shared/entities/message/Message;IZ)V

    .line 2
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object p2

    invoke-static {p2}, Lcom/im/freechat/extend/p;->E(Lcom/im/freechat/shared/entities/message/Message;)Lcom/im/freechat/shared/entities/message/FileAttachment;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/im/freechat/ui/chat/holder/v;->E0(Lcom/im/freechat/shared/entities/message/FileAttachment;)V

    .line 3
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->M()Landroid/content/Context;

    move-result-object p2

    .line 4
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object p3

    invoke-virtual {p3}, Lcom/im/freechat/shared/entities/message/Message;->getSender()Lcom/im/freechat/shared/entities/contact/Sender;

    move-result-object p3

    invoke-virtual {p3}, Lcom/im/freechat/shared/entities/contact/Sender;->isCurrentUser()Z

    move-result p3

    if-eqz p3, :cond_0

    sget p3, Lb4/b$f;->V1:I

    goto :goto_0

    :cond_0
    sget p3, Lb4/b$f;->Z1:I

    .line 5
    :goto_0
    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    .line 6
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/v;->C0()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/v;->A0()Lcom/im/freechat/shared/entities/message/FileAttachment;

    move-result-object p4

    invoke-virtual {p4}, Lcom/im/freechat/shared/entities/message/FileAttachment;->getFileName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/v;->C0()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/v;->D0()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/v;->A0()Lcom/im/freechat/shared/entities/message/FileAttachment;

    move-result-object p4

    invoke-virtual {p4}, Lcom/im/freechat/shared/entities/message/FileAttachment;->getFileSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/im/freechat/extend/n;->c(J)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/v;->D0()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->U()Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/im/freechat/ui/chat/holder/u;

    invoke-direct {p3, p0, p1}, Lcom/im/freechat/ui/chat/holder/u;-><init>(Lcom/im/freechat/ui/chat/holder/v;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public h0(Ljava/util/Map;)V
    .locals 7
    .param p1    # Ljava/util/Map;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/im/freechat/shared/entities/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "downloadInfos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->h0(Ljava/util/Map;)V

    .line 2
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/v;->A0()Lcom/im/freechat/shared/entities/message/FileAttachment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/FileAttachment;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x64

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/v;->B0()Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/v;->A0()Lcom/im/freechat/shared/entities/message/FileAttachment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/FileAttachment;->getMediaId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/im/freechat/shared/entities/DownloadInfo;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/DownloadInfo;->getFileSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/DownloadInfo;->getDownloaded()J

    move-result-wide v2

    int-to-long v0, v1

    mul-long v2, v2, v0

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/DownloadInfo;->getFileSize()J

    move-result-wide v0

    div-long/2addr v2, v0

    long-to-int p1, v2

    move v0, p1

    .line 7
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/v;->B0()Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
