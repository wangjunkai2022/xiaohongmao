.class public final Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b;
.super Lcom/qennnsad/aknkaksd/domain/base/h;
.source "PrepareSvgaUseCase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/domain/base/h<",
        "Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b$a;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0008B\u001b\u0008\u0007\u0012\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u0007\u0012\u0006\u0010\u0010\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0014R\u0017\u0010\u000c\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b;",
        "Lcom/qennnsad/aknkaksd/domain/base/h;",
        "Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b$a;",
        "",
        "params",
        "Lio/reactivex/z;",
        "d",
        "Landroid/content/Context;",
        "a",
        "Landroid/content/Context;",
        "f",
        "()Landroid/content/Context;",
        "context",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "b",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "sourceFactory",
        "<init>",
        "(Landroid/content/Context;Lcom/qennnsad/aknkaksd/data/repository/m;)V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lcom/qennnsad/aknkaksd/data/repository/m;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/qennnsad/aknkaksd/data/repository/m;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation runtime Lm6/b;
        .end annotation

        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/qennnsad/aknkaksd/data/repository/m;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lu7/a;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/domain/base/h;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b;->b:Lcom/qennnsad/aknkaksd/data/repository/m;

    return-void
.end method

.method public static synthetic c(Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b;Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b$a;Lokhttp3/ResponseBody;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b;->e(Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b;Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b$a;Lokhttp3/ResponseBody;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final e(Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b;Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b$a;Lokhttp3/ResponseBody;)Lkotlin/Unit;
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b$a;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p0

    .line 2
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p2

    .line 4
    :try_start_1
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading svga from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b$a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    invoke-virtual {v0, p1, v2}, Ltimber/log/Timber$b;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 6
    :goto_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    throw p1
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lio/reactivex/z;
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b$a;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b;->d(Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b$a;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method protected d(Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b$a;)Lio/reactivex/z;
    .locals 4
    .param p1    # Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b$a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b$a;",
            ")",
            "Lio/reactivex/z<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.fileList()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lio/reactivex/z;->empty()Lio/reactivex/z;

    move-result-object p1

    const-string v0, "empty()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b;->b:Lcom/qennnsad/aknkaksd/data/repository/m;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/data/repository/m;->g(Lcom/qennnsad/aknkaksd/data/repository/m;ZILjava/lang/Object;)Lcom/qennnsad/aknkaksd/data/repository/b;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b;->b:Lcom/qennnsad/aknkaksd/data/repository/m;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qennnsad/aknkaksd/data/repository/m;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-interface {v0, v1}, Lcom/qennnsad/aknkaksd/data/repository/b;->downloadFile(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/a;

    invoke-direct {v1, p0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/a;-><init>(Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b;Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b$a;)V

    invoke-virtual {v0, v1}, Lio/reactivex/z;->map(Ln7/o;)Lio/reactivex/z;

    move-result-object p1

    const-string v0, "sourceFactory.create().d\u2026)\n            }\n        }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public final f()Landroid/content/Context;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b;->a:Landroid/content/Context;

    return-object v0
.end method
