.class public final Lcom/squareup/moshi/b0;
.super Ljava/lang/Object;
.source "-MoshiKotlinTypesExtensions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00002\n\u0002\u0010\u001b\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\'\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u0002\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0086\u0008\u001a\u0011\u0010\u0005\u001a\u00020\u0004\"\u0006\u0008\u0000\u0010\u0001\u0018\u0001H\u0087\u0008\u001a\u0011\u0010\u0006\u001a\u00020\u0004\"\u0006\u0008\u0000\u0010\u0001\u0018\u0001H\u0087\u0008\u001a\u000c\u0010\t\u001a\u00020\u0008*\u00020\u0007H\u0007\u001a\u000e\u0010\u000b\u001a\u00020\u0008*\u0006\u0012\u0002\u0008\u00030\n\u001a\n\u0010\r\u001a\u00020\u0008*\u00020\u000c\"\u0019\u0010\u0011\u001a\u0006\u0012\u0002\u0008\u00030\u000e*\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "",
        "T",
        "",
        "e",
        "Ljava/lang/reflect/WildcardType;",
        "f",
        "g",
        "Lkotlin/reflect/KType;",
        "Ljava/lang/reflect/GenericArrayType;",
        "c",
        "Lkotlin/reflect/KClass;",
        "b",
        "Ljava/lang/reflect/Type;",
        "a",
        "Ljava/lang/Class;",
        "d",
        "(Ljava/lang/reflect/Type;)Ljava/lang/Class;",
        "rawType",
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
.method public static final a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;
    .locals 1
    .param p0    # Ljava/lang/reflect/Type;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/squareup/moshi/z;->b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;

    move-result-object p0

    const-string v0, "arrayOf(this)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final b(Lkotlin/reflect/KClass;)Ljava/lang/reflect/GenericArrayType;
    .locals 1
    .param p0    # Lkotlin/reflect/KClass;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "*>;)",
            "Ljava/lang/reflect/GenericArrayType;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/squareup/moshi/b0;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lkotlin/reflect/KType;)Ljava/lang/reflect/GenericArrayType;
    .locals 1
    .param p0    # Lkotlin/reflect/KType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lkotlin/ExperimentalStdlibApi;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0}, Lcom/squareup/moshi/b0;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 1
    .param p0    # Ljava/lang/reflect/Type;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/squareup/moshi/z;->j(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "getRawType(this)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final synthetic e(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/annotation/Annotation;

    invoke-static {p0, v0}, Lcom/squareup/moshi/z;->o(Ljava/util/Set;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f()Ljava/lang/reflect/WildcardType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/lang/reflect/WildcardType;"
        }
    .end annotation

    .annotation build Lkotlin/ExperimentalStdlibApi;
    .end annotation

    const/4 v0, 0x6

    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lcom/squareup/moshi/internal/c;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "boxIfPrimitive(type)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-static {v0}, Lcom/squareup/moshi/z;->p(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    move-result-object v0

    const-string v1, "subtypeOf(type)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final synthetic g()Ljava/lang/reflect/WildcardType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/lang/reflect/WildcardType;"
        }
    .end annotation

    .annotation build Lkotlin/ExperimentalStdlibApi;
    .end annotation

    const/4 v0, 0x6

    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lcom/squareup/moshi/internal/c;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "boxIfPrimitive(type)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-static {v0}, Lcom/squareup/moshi/z;->q(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    move-result-object v0

    const-string v1, "supertypeOf(type)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
