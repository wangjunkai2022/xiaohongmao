.class public final Lcom/qennnsad/aknkaksd/util/translation/h;
.super Ljava/lang/Object;
.source "TranslatorRapid.kt"

# interfaces
.implements Lcom/qennnsad/aknkaksd/util/translation/Translator;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ&\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0014\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004H\u0002J.\u0010\n\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00082\u0014\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004H\u0016R\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0011\u001a\u00020\u00028\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u001b\u0010\u0017\u001a\u00020\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\u001b\u0010\u001c\u001a\u00020\u00188BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u0014\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/util/translation/h;",
        "Lcom/qennnsad/aknkaksd/util/translation/Translator;",
        "",
        "origText",
        "Lkotlin/Function1;",
        "",
        "onTranslationComplete",
        "g",
        "Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;",
        "direction",
        "a",
        "Lcom/qennnsad/aknkaksd/util/translation/d;",
        "b",
        "Lcom/qennnsad/aknkaksd/util/translation/d;",
        "translatorBackend",
        "c",
        "Ljava/lang/String;",
        "TAG",
        "Landroid/os/Handler;",
        "d",
        "Lkotlin/Lazy;",
        "j",
        "()Landroid/os/Handler;",
        "handler",
        "Lokhttp3/OkHttpClient;",
        "e",
        "i",
        "()Lokhttp3/OkHttpClient;",
        "client",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/util/translation/d;)V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation

.annotation runtime Lu7/f;
.end annotation


# instance fields
.field private final b:Lcom/qennnsad/aknkaksd/util/translation/d;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final e:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/util/translation/d;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/util/translation/d;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lu7/a;
    .end annotation

    const-string v0, "translatorBackend"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/translation/h;->b:Lcom/qennnsad/aknkaksd/util/translation/d;

    const-string p1, "TranslatorRapid"

    .line 3
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/translation/h;->c:Ljava/lang/String;

    .line 4
    sget-object p1, Lcom/qennnsad/aknkaksd/util/translation/h$b;->a:Lcom/qennnsad/aknkaksd/util/translation/h$b;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/translation/h;->d:Lkotlin/Lazy;

    .line 5
    sget-object p1, Lcom/qennnsad/aknkaksd/util/translation/h$a;->a:Lcom/qennnsad/aknkaksd/util/translation/h$a;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/translation/h;->e:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/util/translation/h;->h(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic c(Lcom/qennnsad/aknkaksd/util/translation/h;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/util/translation/h;->g(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic d(Lcom/qennnsad/aknkaksd/util/translation/h;)Landroid/os/Handler;
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/util/translation/h;->j()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lcom/qennnsad/aknkaksd/util/translation/h;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/util/translation/h;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic f(Lcom/qennnsad/aknkaksd/util/translation/h;)Lcom/qennnsad/aknkaksd/util/translation/d;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/util/translation/h;->b:Lcom/qennnsad/aknkaksd/util/translation/d;

    return-object p0
.end method

.method private final g(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/translation/h;->c:Ljava/lang/String;

    const-string v1, "Fallback Give-up..."

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/util/translation/h;->j()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/qennnsad/aknkaksd/util/translation/g;

    invoke-direct {v1, p2, p1}, Lcom/qennnsad/aknkaksd/util/translation/g;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final h(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V
    .locals 1

    const-string v0, "$origText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final i()Lokhttp3/OkHttpClient;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/translation/h;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method private final j()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/translation/h;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "origText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;->getCode()Ljava/lang/String;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/translation/h;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Source text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/qennnsad/aknkaksd/util/translation/c;->a:Lcom/qennnsad/aknkaksd/util/translation/c;

    new-instance v1, Lcom/qennnsad/aknkaksd/util/translation/h$c;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/qennnsad/aknkaksd/util/translation/h$c;-><init>(Lcom/qennnsad/aknkaksd/util/translation/h;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/qennnsad/aknkaksd/util/translation/c;->d(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
