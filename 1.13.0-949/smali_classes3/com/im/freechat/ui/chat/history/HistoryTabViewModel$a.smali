.class final Lcom/im/freechat/ui/chat/history/HistoryTabViewModel$a;
.super Lkotlin/jvm/internal/Lambda;
.source "HistoryTabViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/ui/chat/history/HistoryTabViewModel;->q(Lcom/im/freechat/ui/chat/history/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/im/freechat/shared/entities/DownloadInfo;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHistoryTabViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HistoryTabViewModel.kt\ncom/im/freechat/ui/chat/history/HistoryTabViewModel$tryOpenFile$1\n+ 2 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,84:1\n36#2:85\n*S KotlinDebug\n*F\n+ 1 HistoryTabViewModel.kt\ncom/im/freechat/ui/chat/history/HistoryTabViewModel$tryOpenFile$1\n*L\n35#1:85\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lcom/im/freechat/shared/entities/DownloadInfo;",
        "it",
        "",
        "a",
        "(Lcom/im/freechat/shared/entities/DownloadInfo;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/im/freechat/shared/entities/message/FileAttachment;

.field final synthetic b:Lcom/im/freechat/ui/chat/history/HistoryTabViewModel;


# direct methods
.method constructor <init>(Lcom/im/freechat/shared/entities/message/FileAttachment;Lcom/im/freechat/ui/chat/history/HistoryTabViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/im/freechat/ui/chat/history/HistoryTabViewModel$a;->a:Lcom/im/freechat/shared/entities/message/FileAttachment;

    iput-object p2, p0, Lcom/im/freechat/ui/chat/history/HistoryTabViewModel$a;->b:Lcom/im/freechat/ui/chat/history/HistoryTabViewModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/im/freechat/shared/entities/DownloadInfo;)V
    .locals 6
    .param p1    # Lcom/im/freechat/shared/entities/DownloadInfo;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/io/File;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/DownloadInfo;->getLocalPath()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/im/freechat/ui/chat/history/HistoryTabViewModel$a;->a:Lcom/im/freechat/shared/entities/message/FileAttachment;

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/FileAttachment;->getLocalPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :cond_1
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/im/freechat/ui/chat/history/HistoryTabViewModel$a;->b:Lcom/im/freechat/ui/chat/history/HistoryTabViewModel;

    .line 3
    sget-object v1, Lcom/im/freechat/ui/chat/history/HistoryTabViewModel$Directions;->OPEN_FILE:Lcom/im/freechat/ui/chat/history/HistoryTabViewModel$Directions;

    const/4 v2, 0x2

    new-array v2, v2, [Lkotlin/Pair;

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "file_path"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 5
    iget-object v4, p0, Lcom/im/freechat/ui/chat/history/HistoryTabViewModel$a;->b:Lcom/im/freechat/ui/chat/history/HistoryTabViewModel;

    invoke-static {v4}, Lcom/im/freechat/ui/chat/history/HistoryTabViewModel;->j(Lcom/im/freechat/ui/chat/history/HistoryTabViewModel;)Lcom/im/freechat/domain/h;

    move-result-object v4

    .line 6
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v5, "fromFile(this)"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "file.toUri().toString()"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Lcom/im/freechat/domain/h;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "mime_type"

    invoke-static {v4, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v2, v3

    .line 8
    invoke-static {v2}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v0

    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/im/freechat/base/a;->e(Ljava/lang/Enum;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/im/freechat/shared/entities/DownloadInfo;

    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/chat/history/HistoryTabViewModel$a;->a(Lcom/im/freechat/shared/entities/DownloadInfo;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
