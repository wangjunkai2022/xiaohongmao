.class public final Lcom/qennnsad/aknkaksd/util/translation/c;
.super Ljava/lang/Object;
.source "IdentifierGoogle.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIdentifierGoogle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IdentifierGoogle.kt\ncom/qennnsad/aknkaksd/util/translation/IdentifierGoogle\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,39:1\n1959#2,14:40\n*S KotlinDebug\n*F\n+ 1 IdentifierGoogle.kt\ncom/qennnsad/aknkaksd/util/translation/IdentifierGoogle\n*L\n25#1:40,14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J$\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0014\u0010\u0006\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u00050\u0004R\u0014\u0010\n\u001a\u00020\u00028\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0014\u0010\u000c\u001a\u00020\u00028\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\tR\u001b\u0010\u0010\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u000e\u001a\u0004\u0008\u000b\u0010\u000f\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/util/translation/c;",
        "",
        "",
        "origText",
        "Lkotlin/Function1;",
        "",
        "onIdentificationComplete",
        "d",
        "b",
        "Ljava/lang/String;",
        "TAG",
        "c",
        "UNDEFINED",
        "Lcom/google/mlkit/nl/languageid/c;",
        "Lkotlin/Lazy;",
        "()Lcom/google/mlkit/nl/languageid/c;",
        "languageIdentifier",
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
.field public static final a:Lcom/qennnsad/aknkaksd/util/translation/c;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final b:Ljava/lang/String; = "IdentifierGoogle"
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final c:Ljava/lang/String; = "und"
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final d:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/util/translation/c;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/util/translation/c;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/util/translation/c;->a:Lcom/qennnsad/aknkaksd/util/translation/c;

    sget-object v0, Lcom/qennnsad/aknkaksd/util/translation/c$a;->a:Lcom/qennnsad/aknkaksd/util/translation/c$a;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/qennnsad/aknkaksd/util/translation/c;->d:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function1;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/util/translation/c;->f(Lkotlin/jvm/functions/Function1;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/util/translation/c;->e(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    return-void
.end method

.method private final c()Lcom/google/mlkit/nl/languageid/c;
    .locals 1

    sget-object v0, Lcom/qennnsad/aknkaksd/util/translation/c;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/nl/languageid/c;

    return-object v0
.end method

.method private static final e(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V
    .locals 6

    const-string v0, "$onIdentificationComplete"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identifiedLanguages"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    move-object v2, v0

    check-cast v2, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;

    .line 7
    invoke-virtual {v2}, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;->a()F

    move-result v2

    .line 8
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 9
    move-object v4, v3

    check-cast v4, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;

    .line 10
    invoke-virtual {v4}, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;->a()F

    move-result v4

    .line 11
    invoke-static {v2, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-gez v5, :cond_3

    move-object v0, v3

    move v2, v4

    .line 12
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 13
    :goto_0
    check-cast v0, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;->b()Ljava/lang/String;

    move-result-object v1

    .line 14
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Identified: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IdentifierGoogle"

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "und"

    .line 15
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 p1, 0x1

    :goto_2
    if-eqz p1, :cond_8

    :cond_7
    sget-object p1, Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;->AUTO:Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;->getCode()Ljava/lang/String;

    move-result-object v1

    .line 16
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Identified After UND check: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final f(Lkotlin/jvm/functions/Function1;Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "$onIdentificationComplete"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "IdentifierGoogle"

    const-string v1, "Identificator Model couldn\u2019t be loaded"

    .line 1
    invoke-static {v0, v1, p1}, Lcom/qennnsad/aknkaksd/util/o0;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    sget-object p1, Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;->AUTO:Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/g;
        .end annotation
    .end param
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

    const-string v0, "origText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onIdentificationComplete"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/util/translation/c;->c()Lcom/google/mlkit/nl/languageid/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/mlkit/nl/languageid/c;->Z(Ljava/lang/String;)Lcom/google/android/gms/tasks/k;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/util/translation/b;

    invoke-direct {v0, p2}, Lcom/qennnsad/aknkaksd/util/translation/b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/k;->k(Lcom/google/android/gms/tasks/g;)Lcom/google/android/gms/tasks/k;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/qennnsad/aknkaksd/util/translation/a;

    invoke-direct {v0, p2}, Lcom/qennnsad/aknkaksd/util/translation/a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/k;->h(Lcom/google/android/gms/tasks/f;)Lcom/google/android/gms/tasks/k;

    return-void
.end method
