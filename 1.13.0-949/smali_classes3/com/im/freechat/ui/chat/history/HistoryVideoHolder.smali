.class public final Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;
.super Lcom/im/freechat/ui/chat/history/g;
.source "HistoryMediaAdapter.kt"

# interfaces
.implements Lorg/koin/core/component/a;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHistoryMediaAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HistoryMediaAdapter.kt\ncom/im/freechat/ui/chat/history/HistoryVideoHolder\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,256:1\n56#2,6:257\n254#3,2:263\n254#3,2:265\n254#3,2:267\n254#3,2:269\n254#3,2:271\n254#3,2:273\n254#3,2:275\n254#3,2:277\n254#3,2:279\n254#3,2:281\n*S KotlinDebug\n*F\n+ 1 HistoryMediaAdapter.kt\ncom/im/freechat/ui/chat/history/HistoryVideoHolder\n*L\n119#1:257,6\n147#1:263,2\n148#1:265,2\n150#1:267,2\n152#1:269,2\n157#1:271,2\n158#1:273,2\n159#1:275,2\n163#1:277,2\n164#1:279,2\n165#1:281,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u00a2\u0006\u0004\u0008 \u0010!J\u001c\u0010\u0008\u001a\u00020\u00072\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\u0002J\u0010\u0010\u000b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016R\u001b\u0010\u0011\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R&\u0010\u001d\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00030\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\""
    }
    d2 = {
        "Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;",
        "Lcom/im/freechat/ui/chat/history/g;",
        "Lorg/koin/core/component/a;",
        "",
        "",
        "Lcom/im/freechat/shared/entities/DownloadInfo;",
        "downloadInfos",
        "",
        "n",
        "Lcom/im/freechat/ui/chat/history/a;",
        "attachmentWrapper",
        "b",
        "Lcom/im/freechat/utils/f;",
        "c",
        "Lkotlin/Lazy;",
        "l",
        "()Lcom/im/freechat/utils/f;",
        "downloadUtil",
        "Lcom/im/freechat/shared/entities/message/VideoAttachment;",
        "d",
        "Lcom/im/freechat/shared/entities/message/VideoAttachment;",
        "k",
        "()Lcom/im/freechat/shared/entities/message/VideoAttachment;",
        "o",
        "(Lcom/im/freechat/shared/entities/message/VideoAttachment;)V",
        "attachment",
        "Landroidx/lifecycle/Observer;",
        "e",
        "Landroidx/lifecycle/Observer;",
        "observer",
        "Lf4/m1;",
        "binding",
        "<init>",
        "(Lf4/m1;)V",
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
.field private final b:Lf4/m1;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field

.field public d:Lcom/im/freechat/shared/entities/message/VideoAttachment;

.field private final e:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/im/freechat/shared/entities/DownloadInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf4/m1;)V
    .locals 2
    .param p1    # Lf4/m1;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lf4/m1;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/im/freechat/ui/chat/history/g;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;->b:Lf4/m1;

    .line 3
    sget-object p1, Ld9/b;->a:Ld9/b;

    invoke-virtual {p1}, Ld9/b;->b()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/im/freechat/ui/chat/history/HistoryVideoHolder$special$$inlined$inject$default$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/im/freechat/ui/chat/history/HistoryVideoHolder$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/a;Lz8/a;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;->c:Lkotlin/Lazy;

    .line 6
    new-instance p1, Lcom/im/freechat/ui/chat/history/s;

    invoke-direct {p1, p0}, Lcom/im/freechat/ui/chat/history/s;-><init>(Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;)V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;->e:Landroidx/lifecycle/Observer;

    return-void
.end method

.method public static synthetic f(Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;Lcom/im/freechat/ui/chat/history/a;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;->i(Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;Lcom/im/freechat/ui/chat/history/a;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;->j(Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;->m(Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;Ljava/util/Map;)V

    return-void
.end method

.method private static final i(Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;Lcom/im/freechat/ui/chat/history/a;Landroid/view/View;)V
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

.method private static final j(Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;->l()Lcom/im/freechat/utils/f;

    move-result-object p1

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;->k()Lcom/im/freechat/shared/entities/message/VideoAttachment;

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

.method private final l()Lcom/im/freechat/utils/f;
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/utils/f;

    return-object v0
.end method

.method private static final m(Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;Ljava/util/Map;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;->n(Ljava/util/Map;)V

    return-void
.end method

.method private final n(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/im/freechat/shared/entities/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;->k()Lcom/im/freechat/shared/entities/message/VideoAttachment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/VideoAttachment;->getMediaId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/im/freechat/shared/entities/DownloadInfo;

    const-wide/16 v0, 0x0

    const-string v2, "binding.pbLoaded"

    const-string v3, "binding.stopBtn"

    const-string v4, "binding.tvStatus"

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-eqz p1, :cond_4

    .line 2
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/DownloadInfo;->getStatus()I

    move-result v7

    const/16 v8, 0x10

    if-ne v7, v8, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/DownloadInfo;->getStatus()I

    move-result v7

    if-ne v7, v6, :cond_1

    .line 4
    iget-object v0, p0, Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;->b:Lf4/m1;

    iget-object v0, v0, Lf4/m1;->g:Landroid/widget/TextView;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;->b:Lf4/m1;

    iget-object v0, v0, Lf4/m1;->e:Landroid/widget/ImageView;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;->b:Lf4/m1;

    iget-object v0, v0, Lf4/m1;->d:Landroid/widget/ProgressBar;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;->b:Lf4/m1;

    iget-object v0, v0, Lf4/m1;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/DownloadInfo;->getDownloaded()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/im/freechat/ui/chat/holder/x0;->a(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 11
    :cond_1
    iget-object v6, p0, Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;->b:Lf4/m1;

    iget-object v6, v6, Lf4/m1;->g:Landroid/widget/TextView;

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object v4, p0, Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;->b:Lf4/m1;

    iget-object v4, v4, Lf4/m1;->e:Landroid/widget/ImageView;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object v3, p0, Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;->b:Lf4/m1;

    iget-object v3, v3, Lf4/m1;->d:Landroid/widget/ProgressBar;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 17
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/DownloadInfo;->getDownloaded()J

    move-result-wide v2

    .line 18
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/DownloadInfo;->getFileSize()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-gtz v6, :cond_2

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;->k()Lcom/im/freechat/shared/entities/message/VideoAttachment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/VideoAttachment;->getFileSize()J

    move-result-wide v4

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/DownloadInfo;->getFileSize()J

    move-result-wide v4

    :goto_0
    cmp-long p1, v4, v0

    if-gtz p1, :cond_3

    const-string v0, ""

    goto :goto_1

    .line 19
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lcom/im/freechat/ui/chat/holder/x0;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20
    :goto_1
    iget-object v1, p0, Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;->b:Lf4/m1;

    iget-object v1, v1, Lf4/m1;->g:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v3}, Lcom/im/freechat/ui/chat/holder/x0;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez p1, :cond_6

    .line 21
    iget-object p1, p0, Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;->b:Lf4/m1;

    iget-object p1, p1, Lf4/m1;->d:Landroid/widget/ProgressBar;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 22
    iget-object p1, p0, Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;->b:Lf4/m1;

    iget-object p1, p1, Lf4/m1;->d:Landroid/widget/ProgressBar;

    int-to-long v0, v0

    mul-long v2, v2, v0

    div-long/2addr v2, v4

    long-to-int v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_3

    .line 23
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;->b:Lf4/m1;

    iget-object p1, p1, Lf4/m1;->e:Landroid/widget/ImageView;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 25
    iget-object p1, p0, Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;->b:Lf4/m1;

    iget-object p1, p1, Lf4/m1;->d:Landroid/widget/ProgressBar;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 27
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;->k()Lcom/im/freechat/shared/entities/message/VideoAttachment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/VideoAttachment;->getFileSize()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-gtz p1, :cond_5

    .line 28
    iget-object p1, p0, Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;->b:Lf4/m1;

    iget-object p1, p1, Lf4/m1;->g:Landroid/widget/TextView;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 30
    :cond_5
    iget-object p1, p0, Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;->b:Lf4/m1;

    iget-object p1, p1, Lf4/m1;->g:Landroid/widget/TextView;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 32
    iget-object p1, p0, Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;->b:Lf4/m1;

    iget-object p1, p1, Lf4/m1;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;->k()Lcom/im/freechat/shared/entities/message/VideoAttachment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/VideoAttachment;->getFileSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/im/freechat/ui/chat/holder/x0;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_3
    return-void
.end method


# virtual methods
.method public b(Lcom/im/freechat/ui/chat/history/a;)V
    .locals 8
    .param p1    # Lcom/im/freechat/ui/chat/history/a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "attachmentWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/history/a;->h()Lcom/im/freechat/shared/entities/message/Attachment;

    move-result-object v0

    instance-of v0, v0, Lcom/im/freechat/shared/entities/message/VideoAttachment;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/history/a;->h()Lcom/im/freechat/shared/entities/message/Attachment;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/shared/entities/message/VideoAttachment;

    invoke-virtual {p0, v0}, Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;->o(Lcom/im/freechat/shared/entities/message/VideoAttachment;)V

    .line 3
    iget-object v0, p0, Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;->b:Lf4/m1;

    iget-object v0, v0, Lf4/m1;->c:Landroid/widget/ImageView;

    const-string v1, ""

    .line 4
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;->k()Lcom/im/freechat/shared/entities/message/VideoAttachment;

    move-result-object v1

    invoke-static {v1}, Lcom/im/freechat/extend/p;->i(Lcom/im/freechat/shared/entities/message/VideoAttachment;)Ljava/lang/Object;

    move-result-object v2

    const v3, 0x3ecccccd    # 0.4f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, v0

    .line 6
    invoke-static/range {v1 .. v7}, Lcom/im/freechat/extend/m;->s(Landroid/widget/ImageView;Ljava/lang/Object;FZIILjava/lang/Object;)V

    .line 7
    new-instance v1, Lcom/im/freechat/ui/chat/history/r;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/ui/chat/history/r;-><init>(Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;Lcom/im/freechat/ui/chat/history/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object p1, p0, Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;->b:Lf4/m1;

    iget-object p1, p1, Lf4/m1;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;->k()Lcom/im/freechat/shared/entities/message/VideoAttachment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/VideoAttachment;->getDuration()I

    move-result v0

    invoke-static {v0}, Lcom/im/freechat/extend/m;->y(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;->b:Lf4/m1;

    iget-object p1, p1, Lf4/m1;->e:Landroid/widget/ImageView;

    new-instance v0, Lcom/im/freechat/ui/chat/history/q;

    invoke-direct {v0, p0}, Lcom/im/freechat/ui/chat/history/q;-><init>(Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    invoke-direct {p0}, Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;->l()Lcom/im/freechat/utils/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/utils/f;->h()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;->e:Landroidx/lifecycle/Observer;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    invoke-static {p0}, Lorg/koin/core/component/a$a;->a(Lorg/koin/core/component/a;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lcom/im/freechat/shared/entities/message/VideoAttachment;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;->d:Lcom/im/freechat/shared/entities/message/VideoAttachment;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "attachment"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final o(Lcom/im/freechat/shared/entities/message/VideoAttachment;)V
    .locals 1
    .param p1    # Lcom/im/freechat/shared/entities/message/VideoAttachment;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/history/HistoryVideoHolder;->d:Lcom/im/freechat/shared/entities/message/VideoAttachment;

    return-void
.end method
