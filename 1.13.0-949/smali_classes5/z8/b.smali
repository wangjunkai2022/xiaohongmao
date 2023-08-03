.class public final Lz8/b;
.super Ljava/lang/Object;
.source "Qualifier.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0010\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u001a\u000e\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000\u001a$\u0010\u0008\u001a\u00020\u0007\"\u000e\u0008\u0000\u0010\u0005*\u0008\u0012\u0004\u0012\u00028\u00000\u00042\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u001a\u000e\u0010\t\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000\u001a$\u0010\n\u001a\u00020\u0007\"\u000e\u0008\u0000\u0010\u0005*\u0008\u0012\u0004\u0012\u00028\u00000\u00042\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u001a\u000e\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000\u001a\u0011\u0010\u000e\u001a\u00020\r\"\u0006\u0008\u0000\u0010\u000c\u0018\u0001H\u0086\u0008\u001a\u0011\u0010\u000f\u001a\u00020\r\"\u0006\u0008\u0000\u0010\u000c\u0018\u0001H\u0086\u0008\u001a\u0011\u0010\u0010\u001a\u00020\r\"\u0006\u0008\u0000\u0010\u000c\u0018\u0001H\u0086\u0008\"+\u0010\u0013\u001a\u00020\u0007\"\u000e\u0008\u0000\u0010\u0005*\u0008\u0012\u0004\u0012\u00028\u00000\u0004*\u0008\u0012\u0004\u0012\u00028\u00000\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012*\n\u0010\u0014\"\u00020\u00002\u00020\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "",
        "name",
        "Lz8/c;",
        "e",
        "",
        "E",
        "enum",
        "Lz8/a;",
        "d",
        "h",
        "g",
        "a",
        "T",
        "Lz8/d;",
        "f",
        "i",
        "b",
        "c",
        "(Ljava/lang/Enum;)Lz8/a;",
        "qualifier",
        "QualifierValue",
        "koin-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# direct methods
.method public static final a(Ljava/lang/String;)Lz8/c;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lz8/c;

    invoke-direct {v0, p0}, Lz8/c;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final synthetic b()Lz8/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lz8/d;"
        }
    .end annotation

    new-instance v0, Lz8/d;

    const/4 v1, 0x4

    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-direct {v0, v1}, Lz8/d;-><init>(Lkotlin/reflect/KClass;)V

    return-object v0
.end method

.method public static final c(Ljava/lang/Enum;)Lz8/a;
    .locals 2
    .param p0    # Ljava/lang/Enum;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Enum<",
            "TE;>;)",
            "Lz8/a;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lz8/c;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v1, "this as java.lang.String).toLowerCase()"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lz8/c;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final d(Ljava/lang/Enum;)Lz8/a;
    .locals 1
    .param p0    # Ljava/lang/Enum;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Enum<",
            "TE;>;)",
            "Lz8/a;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "enum"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lz8/b;->c(Ljava/lang/Enum;)Lz8/a;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Ljava/lang/String;)Lz8/c;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lz8/c;

    invoke-direct {v0, p0}, Lz8/c;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final synthetic f()Lz8/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lz8/d;"
        }
    .end annotation

    new-instance v0, Lz8/d;

    const/4 v1, 0x4

    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-direct {v0, v1}, Lz8/d;-><init>(Lkotlin/reflect/KClass;)V

    return-object v0
.end method

.method public static final g(Ljava/lang/Enum;)Lz8/a;
    .locals 1
    .param p0    # Ljava/lang/Enum;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Enum<",
            "TE;>;)",
            "Lz8/a;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "enum"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lz8/b;->c(Ljava/lang/Enum;)Lz8/a;

    move-result-object p0

    return-object p0
.end method

.method public static final h(Ljava/lang/String;)Lz8/c;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lz8/c;

    invoke-direct {v0, p0}, Lz8/c;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final synthetic i()Lz8/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lz8/d;"
        }
    .end annotation

    new-instance v0, Lz8/d;

    const/4 v1, 0x4

    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-direct {v0, v1}, Lz8/d;-><init>(Lkotlin/reflect/KClass;)V

    return-object v0
.end method
