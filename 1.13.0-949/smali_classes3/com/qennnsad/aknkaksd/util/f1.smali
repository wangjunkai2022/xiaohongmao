.class public final Lcom/qennnsad/aknkaksd/util/f1;
.super Ljava/lang/Object;
.source "RxView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0016\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0018\u0010\n\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0008H\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/util/f1;",
        "",
        "Landroid/view/View;",
        "view",
        "Lio/reactivex/rxjava3/core/g0;",
        "",
        "b",
        "c",
        "Ljava/lang/Runnable;",
        "runnable",
        "d",
        "<init>",
        "()V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final a:Lcom/qennnsad/aknkaksd/util/f1;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/util/f1;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/util/f1;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/util/f1;->a:Lcom/qennnsad/aknkaksd/util/f1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Runnable;Lkotlin/Unit;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/util/f1;->e(Ljava/lang/Runnable;Lkotlin/Unit;)V

    return-void
.end method

.method public static final b(Landroid/view/View;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lio/reactivex/rxjava3/core/g0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/jakewharton/rxbinding4/view/i;->c(Landroid/view/View;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Landroid/view/View;)Lio/reactivex/rxjava3/core/g0;
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lio/reactivex/rxjava3/core/g0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/jakewharton/rxbinding4/view/i;->u(Landroid/view/View;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcom/jakewharton/rxbinding4/view/i;->c(Landroid/view/View;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v1, v2, v0}, Lio/reactivex/rxjava3/core/g0;->M6(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p0

    new-instance v0, Lcom/qennnsad/aknkaksd/util/e1;

    invoke-direct {v0, p1}, Lcom/qennnsad/aknkaksd/util/e1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/g0;->a6(Lq7/g;)Lio/reactivex/rxjava3/disposables/f;

    return-void
.end method

.method private static final e(Ljava/lang/Runnable;Lkotlin/Unit;)V
    .locals 0

    const-string p1, "$runnable"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
