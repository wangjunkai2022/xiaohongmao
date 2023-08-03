.class public final Lcom/qennnsad/aknkaksd/presentation/ui/base/r;
.super Ljava/lang/Object;
.source "PresenterExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a#\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\"\u0004\u0008\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u001a$\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\t\"\u0004\u0008\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u001a%\u0010\u000e\u001a\u00028\u0001\"\u0004\u0008\u0000\u0010\u000b\"\u0004\u0008\u0001\u0010\u000c*\u00020\r2\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "T",
        "",
        "parentObj",
        "",
        "Ljava/lang/reflect/Type;",
        "c",
        "(Ljava/lang/Object;)[Ljava/lang/reflect/Type;",
        "",
        "oridnalParamterizedTypeIndex",
        "Ljava/lang/Class;",
        "b",
        "V",
        "P",
        "Lcom/qennnsad/aknkaksd/presentation/ui/base/n;",
        "a",
        "(Lcom/qennnsad/aknkaksd/presentation/ui/base/n;Ljava/lang/Object;)Ljava/lang/Object;",
        "app_pron_playerRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method public static final a(Lcom/qennnsad/aknkaksd/presentation/ui/base/n;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0    # Lcom/qennnsad/aknkaksd/presentation/ui/base/n;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/qennnsad/aknkaksd/presentation/ui/base/n;",
            "Ljava/lang/Object;",
            ")TP;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentObj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/r;->b(Ljava/lang/Object;I)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    invoke-static {p1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/base/r;->b(Ljava/lang/Object;I)Ljava/lang/Class;

    move-result-object p1

    new-array v3, v0, [Ljava/lang/Class;

    aput-object p1, v3, v2

    .line 3
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v2

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final b(Ljava/lang/Object;I)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/r;->c(Ljava/lang/Object;)[Ljava/lang/reflect/Type;

    move-result-object p0

    .line 2
    aget-object p0, p0, p1

    const-string p1, "null cannot be cast to non-null type java.lang.Class<T of com.qennnsad.aknkaksd.presentation.ui.base.PresenterExtKt.getClassFromGeneric>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Class;

    return-object p0
.end method

.method private static final c(Ljava/lang/Object;)[Ljava/lang/reflect/Type;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type java.lang.reflect.ParameterizedType"

    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 4
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    const-string v0, "parentObj.javaClass\n    \u2026     .actualTypeArguments"

    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "PresenterExt"

    const-string v1, "Most likely, somewhere in your inhetirance chain,there is a class that uses a raw type and not the generic param.See: http://stackoverflow.com/questions/23074446/java-lang-classcastexception-java-lang-class-cannot-be-cast-to-java-lang-reflec for more info"

    .line 6
    invoke-static {v0, v1, p0}, Lcom/qennnsad/aknkaksd/util/o0;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    throw p0
.end method
