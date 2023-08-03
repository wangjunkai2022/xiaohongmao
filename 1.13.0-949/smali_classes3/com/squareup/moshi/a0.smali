.class public final Lcom/squareup/moshi/a0;
.super Ljava/lang/Object;
.source "-MoshiKotlinExtensions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u001b\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\"\u0006\u0008\u0000\u0010\u0000\u0018\u0001*\u00020\u0001H\u0087\u0008\u001a#\u0010\u0006\u001a\u00020\u0004\"\u0006\u0008\u0000\u0010\u0000\u0018\u0001*\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002H\u0087\u0008\u001a \u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\u0008\u0000\u0010\u0000*\u00020\u00012\u0006\u0010\u0008\u001a\u00020\u0007H\u0007\u00a8\u0006\n"
    }
    d2 = {
        "T",
        "Lcom/squareup/moshi/u;",
        "Lcom/squareup/moshi/h;",
        "a",
        "Lcom/squareup/moshi/u$c;",
        "adapter",
        "c",
        "Lkotlin/reflect/KType;",
        "ktype",
        "b",
        "moshi"
    }
    k = 0x2
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# direct methods
.method public static final synthetic a(Lcom/squareup/moshi/u;)Lcom/squareup/moshi/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/moshi/u;",
            ")",
            "Lcom/squareup/moshi/h<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lkotlin/ExperimentalStdlibApi;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x6

    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/squareup/moshi/a0;->b(Lcom/squareup/moshi/u;Lkotlin/reflect/KType;)Lcom/squareup/moshi/h;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lcom/squareup/moshi/u;Lkotlin/reflect/KType;)Lcom/squareup/moshi/h;
    .locals 1
    .param p0    # Lcom/squareup/moshi/u;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lkotlin/reflect/KType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/moshi/u;",
            "Lkotlin/reflect/KType;",
            ")",
            "Lcom/squareup/moshi/h<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lkotlin/ExperimentalStdlibApi;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ktype"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/squareup/moshi/u;->d(Ljava/lang/reflect/Type;)Lcom/squareup/moshi/h;

    move-result-object p0

    .line 2
    instance-of v0, p0, Lcom/squareup/moshi/internal/b;

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/squareup/moshi/internal/a;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Lkotlin/reflect/KType;->isMarkedNullable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/squareup/moshi/h;->nullSafe()Lcom/squareup/moshi/h;

    move-result-object p0

    const-string p1, "{\n    adapter.nullSafe()\n  }"

    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/squareup/moshi/h;->nonNull()Lcom/squareup/moshi/h;

    move-result-object p0

    const-string p1, "{\n    adapter.nonNull()\n  }"

    .line 7
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static final synthetic c(Lcom/squareup/moshi/u$c;Lcom/squareup/moshi/h;)Lcom/squareup/moshi/u$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/moshi/u$c;",
            "Lcom/squareup/moshi/h<",
            "TT;>;)",
            "Lcom/squareup/moshi/u$c;"
        }
    .end annotation

    .annotation build Lkotlin/ExperimentalStdlibApi;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x6

    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/squareup/moshi/u$c;->c(Ljava/lang/reflect/Type;Lcom/squareup/moshi/h;)Lcom/squareup/moshi/u$c;

    move-result-object p0

    const-string p1, "add(typeOf<T>().javaType, adapter)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
