.class public final Lcom/im/freechat/ui/chat/history/HistoryFileHolder;
.super Lcom/im/freechat/ui/chat/history/g;
.source "HistoryMediaAdapter.kt"

# interfaces
.implements Lorg/koin/core/component/a;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHistoryMediaAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HistoryMediaAdapter.kt\ncom/im/freechat/ui/chat/history/HistoryFileHolder\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,256:1\n56#2,6:257\n*S KotlinDebug\n*F\n+ 1 HistoryMediaAdapter.kt\ncom/im/freechat/ui/chat/history/HistoryFileHolder\n*L\n204#1:257,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u00a2\u0006\u0004\u0008 \u0010!J\u001c\u0010\u0008\u001a\u00020\u00072\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\u0002J\u0010\u0010\u000b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016R\u001b\u0010\u0011\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R&\u0010\u001d\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00030\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\""
    }
    d2 = {
        "Lcom/im/freechat/ui/chat/history/HistoryFileHolder;",
        "Lcom/im/freechat/ui/chat/history/g;",
        "Lorg/koin/core/component/a;",
        "",
        "",
        "Lcom/im/freechat/shared/entities/DownloadInfo;",
        "downloadInfos",
        "",
        "l",
        "Lcom/im/freechat/ui/chat/history/a;",
        "attachmentWrapper",
        "b",
        "Lcom/im/freechat/utils/f;",
        "c",
        "Lkotlin/Lazy;",
        "j",
        "()Lcom/im/freechat/utils/f;",
        "downloadUtil",
        "Lcom/im/freechat/shared/entities/message/FileAttachment;",
        "d",
        "Lcom/im/freechat/shared/entities/message/FileAttachment;",
        "i",
        "()Lcom/im/freechat/shared/entities/message/FileAttachment;",
        "m",
        "(Lcom/im/freechat/shared/entities/message/FileAttachment;)V",
        "attachment",
        "Landroidx/lifecycle/Observer;",
        "e",
        "Landroidx/lifecycle/Observer;",
        "observer",
        "Lf4/j1;",
        "binding",
        "<init>",
        "(Lf4/j1;)V",
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
.field private final b:Lf4/j1;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field

.field public d:Lcom/im/freechat/shared/entities/message/FileAttachment;

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
.method public constructor <init>(Lf4/j1;)V
    .locals 2
    .param p1    # Lf4/j1;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lf4/j1;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/im/freechat/ui/chat/history/g;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/history/HistoryFileHolder;->b:Lf4/j1;

    .line 2
    sget-object p1, Ld9/b;->a:Ld9/b;

    invoke-virtual {p1}, Ld9/b;->b()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/im/freechat/ui/chat/history/HistoryFileHolder$special$$inlined$inject$default$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/im/freechat/ui/chat/history/HistoryFileHolder$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/a;Lz8/a;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 4
    iput-object p1, p0, Lcom/im/freechat/ui/chat/history/HistoryFileHolder;->c:Lkotlin/Lazy;

    .line 5
    new-instance p1, Lcom/im/freechat/ui/chat/history/e;

    invoke-direct {p1, p0}, Lcom/im/freechat/ui/chat/history/e;-><init>(Lcom/im/freechat/ui/chat/history/HistoryFileHolder;)V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/history/HistoryFileHolder;->e:Landroidx/lifecycle/Observer;

    return-void
.end method

.method public static synthetic f(Lcom/im/freechat/ui/chat/history/HistoryFileHolder;Lcom/im/freechat/ui/chat/history/a;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/im/freechat/ui/chat/history/HistoryFileHolder;->h(Lcom/im/freechat/ui/chat/history/HistoryFileHolder;Lcom/im/freechat/ui/chat/history/a;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/im/freechat/ui/chat/history/HistoryFileHolder;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/chat/history/HistoryFileHolder;->k(Lcom/im/freechat/ui/chat/history/HistoryFileHolder;Ljava/util/Map;)V

    return-void
.end method

.method private static final h(Lcom/im/freechat/ui/chat/history/HistoryFileHolder;Lcom/im/freechat/ui/chat/history/a;Landroid/view/View;)V
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

.method private final j()Lcom/im/freechat/utils/f;
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/chat/history/HistoryFileHolder;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/utils/f;

    return-object v0
.end method

.method private static final k(Lcom/im/freechat/ui/chat/history/HistoryFileHolder;Ljava/util/Map;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/im/freechat/ui/chat/history/HistoryFileHolder;->l(Ljava/util/Map;)V

    return-void
.end method

.method private final l(Ljava/util/Map;)V
    .locals 6
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
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/history/HistoryFileHolder;->i()Lcom/im/freechat/shared/entities/message/FileAttachment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/FileAttachment;->getMediaId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/im/freechat/shared/entities/DownloadInfo;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/DownloadInfo;->getFileSize()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/DownloadInfo;->getDownloaded()J

    move-result-wide v0

    const/16 v2, 0x64

    int-to-long v2, v2

    mul-long v0, v0, v2

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/DownloadInfo;->getFileSize()J

    move-result-wide v2

    div-long/2addr v0, v2

    long-to-int p1, v0

    move v0, p1

    .line 4
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/im/freechat/ui/chat/history/HistoryFileHolder;->b:Lf4/j1;

    iget-object p1, p1, Lf4/j1;->d:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method


# virtual methods
.method public b(Lcom/im/freechat/ui/chat/history/a;)V
    .locals 4
    .param p1    # Lcom/im/freechat/ui/chat/history/a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "attachmentWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/history/a;->h()Lcom/im/freechat/shared/entities/message/Attachment;

    move-result-object v0

    instance-of v0, v0, Lcom/im/freechat/shared/entities/message/FileAttachment;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/history/a;->h()Lcom/im/freechat/shared/entities/message/Attachment;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/shared/entities/message/FileAttachment;

    invoke-virtual {p0, v0}, Lcom/im/freechat/ui/chat/history/HistoryFileHolder;->m(Lcom/im/freechat/shared/entities/message/FileAttachment;)V

    .line 3
    iget-object v0, p0, Lcom/im/freechat/ui/chat/history/HistoryFileHolder;->b:Lf4/j1;

    .line 4
    iget-object v1, v0, Lf4/j1;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/history/HistoryFileHolder;->i()Lcom/im/freechat/shared/entities/message/FileAttachment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/im/freechat/shared/entities/message/FileAttachment;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, v0, Lf4/j1;->f:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/history/HistoryFileHolder;->i()Lcom/im/freechat/shared/entities/message/FileAttachment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/im/freechat/shared/entities/message/FileAttachment;->getFileSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/im/freechat/extend/n;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/history/a;->k()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/im/freechat/extend/f;->o(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/im/freechat/ui/chat/history/d;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/ui/chat/history/d;-><init>(Lcom/im/freechat/ui/chat/history/HistoryFileHolder;Lcom/im/freechat/ui/chat/history/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-direct {p0}, Lcom/im/freechat/ui/chat/history/HistoryFileHolder;->j()Lcom/im/freechat/utils/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/utils/f;->h()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/im/freechat/ui/chat/history/HistoryFileHolder;->e:Landroidx/lifecycle/Observer;

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

.method public final i()Lcom/im/freechat/shared/entities/message/FileAttachment;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/history/HistoryFileHolder;->d:Lcom/im/freechat/shared/entities/message/FileAttachment;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "attachment"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final m(Lcom/im/freechat/shared/entities/message/FileAttachment;)V
    .locals 1
    .param p1    # Lcom/im/freechat/shared/entities/message/FileAttachment;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/history/HistoryFileHolder;->d:Lcom/im/freechat/shared/entities/message/FileAttachment;

    return-void
.end method
