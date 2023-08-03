.class public abstract Lcom/im/freechat/ui/chat/holder/w0;
.super Lcom/im/freechat/ui/chat/holder/BaseChatHolder;
.source "VideoMessageHolder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoMessageHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoMessageHolder.kt\ncom/im/freechat/ui/chat/holder/VideoMessageHolder\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,233:1\n254#2,2:234\n254#2,2:236\n254#2,2:238\n254#2,2:240\n254#2,2:242\n254#2,2:244\n254#2,2:246\n254#2,2:248\n254#2,2:250\n254#2,2:252\n275#2,2:254\n254#2,2:256\n254#2,2:258\n254#2,2:260\n254#2,2:262\n254#2,2:264\n*S KotlinDebug\n*F\n+ 1 VideoMessageHolder.kt\ncom/im/freechat/ui/chat/holder/VideoMessageHolder\n*L\n94#1:234,2\n95#1:236,2\n96#1:238,2\n97#1:240,2\n100#1:242,2\n102#1:244,2\n107#1:246,2\n108#1:248,2\n109#1:250,2\n110#1:252,2\n111#1:254,2\n115#1:256,2\n116#1:258,2\n117#1:260,2\n126#1:262,2\n127#1:264,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008&\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u00104\u001a\u000203\u0012\u0006\u00105\u001a\u00020\n\u00a2\u0006\u0004\u00086\u00107J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J*\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0014J\u001c\u0010\u0011\u001a\u00020\u00042\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rH\u0016R\"\u0010\u0018\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\"\u0010 \u001a\u00020\u00198\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u0014\u0010$\u001a\u00020!8$X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010#R\u0014\u0010&\u001a\u00020!8$X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010#R\u0014\u0010*\u001a\u00020\'8$X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010)R\u0014\u0010,\u001a\u00020\'8$X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010)R\u0014\u00100\u001a\u00020-8$X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008.\u0010/R\u0014\u00102\u001a\u00020!8$X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u00081\u0010#\u00a8\u00068"
    }
    d2 = {
        "Lcom/im/freechat/ui/chat/holder/w0;",
        "Lcom/im/freechat/ui/chat/holder/BaseChatHolder;",
        "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;",
        "messageWrapper",
        "",
        "A0",
        "Lcom/im/freechat/shared/entities/message/Message;",
        "prev",
        "",
        "position",
        "",
        "selectionMode",
        "F",
        "",
        "",
        "Lcom/im/freechat/shared/entities/DownloadInfo;",
        "downloadInfos",
        "h0",
        "t",
        "I",
        "D0",
        "()I",
        "L0",
        "(I)V",
        "chatId",
        "Lcom/im/freechat/shared/entities/message/VideoAttachment;",
        "u",
        "Lcom/im/freechat/shared/entities/message/VideoAttachment;",
        "F0",
        "()Lcom/im/freechat/shared/entities/message/VideoAttachment;",
        "M0",
        "(Lcom/im/freechat/shared/entities/message/VideoAttachment;)V",
        "message",
        "Landroid/widget/ImageView;",
        "H0",
        "()Landroid/widget/ImageView;",
        "playBtn",
        "E0",
        "downloadBtn",
        "Landroid/widget/TextView;",
        "K0",
        "()Landroid/widget/TextView;",
        "tvStatus",
        "J0",
        "tvDuration",
        "Landroid/widget/ProgressBar;",
        "G0",
        "()Landroid/widget/ProgressBar;",
        "pbLoading",
        "I0",
        "stopBtn",
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
.field private t:I

.field public u:Lcom/im/freechat/shared/entities/message/VideoAttachment;


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

.method private final A0(Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object v0

    invoke-static {v0}, Lcom/im/freechat/extend/p;->H(Lcom/im/freechat/shared/entities/message/Message;)Lcom/im/freechat/shared/entities/message/VideoAttachment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/im/freechat/ui/chat/holder/w0;->M0(Lcom/im/freechat/shared/entities/message/VideoAttachment;)V

    .line 2
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/Message;->getChatId()I

    move-result v0

    iput v0, p0, Lcom/im/freechat/ui/chat/holder/w0;->t:I

    .line 3
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->O()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/w0;->F0()Lcom/im/freechat/shared/entities/message/VideoAttachment;

    move-result-object v1

    invoke-static {v1}, Lcom/im/freechat/extend/p;->i(Lcom/im/freechat/shared/entities/message/VideoAttachment;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xa

    const/4 v6, 0x0

    move-object v3, v0

    .line 5
    invoke-static/range {v1 .. v6}, Lcom/im/freechat/extend/m;->u(Ljava/lang/Object;Ljava/lang/Object;Landroid/widget/ImageView;IILjava/lang/Object;)V

    .line 6
    new-instance v1, Lcom/im/freechat/ui/chat/holder/v0;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/ui/chat/holder/v0;-><init>(Lcom/im/freechat/ui/chat/holder/w0;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/w0;->I0()Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Lcom/im/freechat/ui/chat/holder/u0;

    invoke-direct {v0, p0}, Lcom/im/freechat/ui/chat/holder/u0;-><init>(Lcom/im/freechat/ui/chat/holder/w0;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/w0;->J0()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/w0;->F0()Lcom/im/freechat/shared/entities/message/VideoAttachment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/VideoAttachment;->getDuration()I

    move-result v0

    invoke-static {v0}, Lcom/im/freechat/extend/m;->y(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final B0(Lcom/im/freechat/ui/chat/holder/w0;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Landroid/view/View;)V
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

.method private static final C0(Lcom/im/freechat/ui/chat/holder/w0;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->N()Lcom/im/freechat/utils/f;

    move-result-object p1

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/w0;->F0()Lcom/im/freechat/shared/entities/message/VideoAttachment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/VideoAttachment;->getMediaId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/im/freechat/utils/f;->i(Ljava/util/List;)Lkotlinx/coroutines/j2;

    return-void
.end method

.method public static synthetic y0(Lcom/im/freechat/ui/chat/holder/w0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/chat/holder/w0;->C0(Lcom/im/freechat/ui/chat/holder/w0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic z0(Lcom/im/freechat/ui/chat/holder/w0;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/im/freechat/ui/chat/holder/w0;->B0(Lcom/im/freechat/ui/chat/holder/w0;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final D0()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/ui/chat/holder/w0;->t:I

    return v0
.end method

.method protected abstract E0()Landroid/widget/ImageView;
    .annotation build Lm8/g;
    .end annotation
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
    invoke-direct {p0, p1}, Lcom/im/freechat/ui/chat/holder/w0;->A0(Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;)V

    return-void
.end method

.method public final F0()Lcom/im/freechat/shared/entities/message/VideoAttachment;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/w0;->u:Lcom/im/freechat/shared/entities/message/VideoAttachment;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "message"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract G0()Landroid/widget/ProgressBar;
    .annotation build Lm8/g;
    .end annotation
.end method

.method protected abstract H0()Landroid/widget/ImageView;
    .annotation build Lm8/g;
    .end annotation
.end method

.method protected abstract I0()Landroid/widget/ImageView;
    .annotation build Lm8/g;
    .end annotation
.end method

.method protected abstract J0()Landroid/widget/TextView;
    .annotation build Lm8/g;
    .end annotation
.end method

.method protected abstract K0()Landroid/widget/TextView;
    .annotation build Lm8/g;
    .end annotation
.end method

.method public final L0(I)V
    .locals 0

    iput p1, p0, Lcom/im/freechat/ui/chat/holder/w0;->t:I

    return-void
.end method

.method public final M0(Lcom/im/freechat/shared/entities/message/VideoAttachment;)V
    .locals 1
    .param p1    # Lcom/im/freechat/shared/entities/message/VideoAttachment;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/holder/w0;->u:Lcom/im/freechat/shared/entities/message/VideoAttachment;

    return-void
.end method

.method public h0(Ljava/util/Map;)V
    .locals 17
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

    move-object/from16 v0, p1

    const-string v1, "downloadInfos"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super/range {p0 .. p1}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->h0(Ljava/util/Map;)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/im/freechat/ui/chat/holder/w0;->F0()Lcom/im/freechat/shared/entities/message/VideoAttachment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/message/VideoAttachment;->getMediaId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/shared/entities/DownloadInfo;

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/im/freechat/ui/chat/holder/w0;->F0()Lcom/im/freechat/shared/entities/message/VideoAttachment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/message/VideoAttachment;->getLocalPath()Ljava/lang/String;

    move-result-object v8

    const-string v1, ""

    if-eqz v8, :cond_1

    .line 4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v15, Lcom/im/freechat/shared/entities/DownloadInfo;

    move-object/from16 v14, p0

    .line 6
    iget v3, v14, Lcom/im/freechat/ui/chat/holder/w0;->t:I

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/im/freechat/ui/chat/holder/w0;->F0()Lcom/im/freechat/shared/entities/message/VideoAttachment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/im/freechat/shared/entities/message/VideoAttachment;->getMediaId()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/im/freechat/ui/chat/holder/w0;->F0()Lcom/im/freechat/shared/entities/message/VideoAttachment;

    move-result-object v9

    invoke-virtual {v9}, Lcom/im/freechat/shared/entities/message/VideoAttachment;->getRemoteUrl()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_0

    move-object v9, v1

    .line 9
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 10
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v12

    const/16 v16, 0x8

    move-object v2, v15

    move/from16 v14, v16

    .line 11
    invoke-direct/range {v2 .. v14}, Lcom/im/freechat/shared/entities/DownloadInfo;-><init>(IJJLjava/lang/String;Ljava/lang/String;JJI)V

    goto :goto_0

    :cond_1
    const/4 v15, 0x0

    :goto_0
    if-nez v0, :cond_2

    move-object v0, v15

    :cond_2
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v0, :cond_9

    .line 12
    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/DownloadInfo;->getStatus()I

    move-result v6

    const/16 v7, 0x10

    if-ne v6, v7, :cond_3

    goto/16 :goto_3

    .line 13
    :cond_3
    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/DownloadInfo;->getStatus()I

    move-result v6

    if-ne v6, v5, :cond_5

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/im/freechat/ui/chat/holder/w0;->K0()Landroid/widget/TextView;

    move-result-object v1

    .line 15
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/im/freechat/ui/chat/holder/w0;->I0()Landroid/widget/ImageView;

    move-result-object v1

    .line 17
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/im/freechat/ui/chat/holder/w0;->G0()Landroid/widget/ProgressBar;

    move-result-object v1

    .line 19
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/im/freechat/ui/chat/holder/w0;->E0()Landroid/widget/ImageView;

    move-result-object v1

    .line 21
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/im/freechat/ui/chat/holder/w0;->H0()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/im/freechat/ui/chat/holder/w0;->F0()Lcom/im/freechat/shared/entities/message/VideoAttachment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/im/freechat/shared/entities/message/VideoAttachment;->getPlaying()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v4, 0x4

    .line 23
    :cond_4
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/im/freechat/ui/chat/holder/w0;->K0()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/DownloadInfo;->getDownloaded()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/im/freechat/ui/chat/holder/x0;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 25
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/im/freechat/ui/chat/holder/w0;->K0()Landroid/widget/TextView;

    move-result-object v6

    .line 26
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/im/freechat/ui/chat/holder/w0;->I0()Landroid/widget/ImageView;

    move-result-object v6

    .line 28
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/im/freechat/ui/chat/holder/w0;->G0()Landroid/widget/ProgressBar;

    move-result-object v6

    .line 30
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 31
    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/DownloadInfo;->getDownloaded()J

    move-result-wide v6

    .line 32
    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/DownloadInfo;->getFileSize()J

    move-result-wide v8

    cmp-long v4, v8, v2

    if-gtz v4, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/im/freechat/ui/chat/holder/w0;->F0()Lcom/im/freechat/shared/entities/message/VideoAttachment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/VideoAttachment;->getFileSize()J

    move-result-wide v8

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/DownloadInfo;->getFileSize()J

    move-result-wide v8

    :goto_1
    cmp-long v0, v8, v2

    if-gtz v0, :cond_7

    goto :goto_2

    .line 33
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Lcom/im/freechat/ui/chat/holder/x0;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 34
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/im/freechat/ui/chat/holder/w0;->K0()Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v7}, Lcom/im/freechat/ui/chat/holder/x0;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez v0, :cond_8

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/im/freechat/ui/chat/holder/w0;->G0()Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/im/freechat/ui/chat/holder/w0;->G0()Landroid/widget/ProgressBar;

    move-result-object v0

    int-to-long v1, v1

    mul-long v6, v6, v1

    div-long/2addr v6, v8

    long-to-int v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 37
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/im/freechat/ui/chat/holder/w0;->E0()Landroid/widget/ImageView;

    move-result-object v0

    .line 38
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/im/freechat/ui/chat/holder/w0;->H0()Landroid/widget/ImageView;

    move-result-object v0

    .line 40
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 41
    :cond_9
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/im/freechat/ui/chat/holder/w0;->I0()Landroid/widget/ImageView;

    move-result-object v0

    .line 42
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/im/freechat/ui/chat/holder/w0;->E0()Landroid/widget/ImageView;

    move-result-object v0

    .line 44
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/im/freechat/ui/chat/holder/w0;->H0()Landroid/widget/ImageView;

    move-result-object v0

    .line 46
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/im/freechat/ui/chat/holder/w0;->G0()Landroid/widget/ProgressBar;

    move-result-object v0

    .line 48
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/im/freechat/ui/chat/holder/w0;->F0()Lcom/im/freechat/shared/entities/message/VideoAttachment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/VideoAttachment;->getFileSize()J

    move-result-wide v0

    cmp-long v6, v0, v2

    if-gtz v6, :cond_a

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/im/freechat/ui/chat/holder/w0;->K0()Landroid/widget/TextView;

    move-result-object v0

    .line 51
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 52
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/im/freechat/ui/chat/holder/w0;->K0()Landroid/widget/TextView;

    move-result-object v0

    .line 53
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/im/freechat/ui/chat/holder/w0;->K0()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/im/freechat/ui/chat/holder/w0;->F0()Lcom/im/freechat/shared/entities/message/VideoAttachment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/message/VideoAttachment;->getFileSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/im/freechat/ui/chat/holder/x0;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    return-void
.end method
