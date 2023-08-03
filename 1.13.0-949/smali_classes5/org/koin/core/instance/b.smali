.class public final Lorg/koin/core/instance/b;
.super Ljava/lang/Object;
.source "InstanceBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInstanceBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InstanceBuilder.kt\norg/koin/core/instance/InstanceBuilderKt\n+ 2 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,78:1\n26#2:79\n*S KotlinDebug\n*F\n+ 1 InstanceBuilder.kt\norg/koin/core/instance/InstanceBuilderKt\n*L\n68#1:79\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000(\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u001a*\u0010\u0005\u001a\u00028\u0000\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u0087\u0008\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u001a3\u0010\n\u001a\u00028\u0000\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0000*\u00020\u00022\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00072\u0006\u0010\t\u001a\u00020\u0003H\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000b\u001a-\u0010\u0010\u001a\u00020\u00002\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u000c2\u000e\u0010\u000f\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00000\u000eH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u001a1\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u000c2\n\u0010\u000f\u001a\u0006\u0012\u0002\u0008\u00030\u000e2\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "",
        "T",
        "Lorg/koin/core/scope/Scope;",
        "Ly8/a;",
        "defParams",
        "f",
        "(Lorg/koin/core/scope/Scope;Ly8/a;)Ljava/lang/Object;",
        "Lkotlin/reflect/KClass;",
        "kClass",
        "params",
        "e",
        "(Lorg/koin/core/scope/Scope;Lkotlin/reflect/KClass;Ly8/a;)Ljava/lang/Object;",
        "",
        "args",
        "Ljava/lang/reflect/Constructor;",
        "constructor",
        "c",
        "([Ljava/lang/Object;Ljava/lang/reflect/Constructor;)Ljava/lang/Object;",
        "scope",
        "parameters",
        "d",
        "(Ljava/lang/reflect/Constructor;Lorg/koin/core/scope/Scope;Ly8/a;)[Ljava/lang/Object;",
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
.method public static final synthetic a([Ljava/lang/Object;Ljava/lang/reflect/Constructor;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lorg/koin/core/instance/b;->c([Ljava/lang/Object;Ljava/lang/reflect/Constructor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Ljava/lang/reflect/Constructor;Lorg/koin/core/scope/Scope;Ly8/a;)[Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/koin/core/instance/b;->d(Ljava/lang/reflect/Constructor;Lorg/koin/core/scope/Scope;Ly8/a;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final c([Ljava/lang/Object;Ljava/lang/reflect/Constructor;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-array p0, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 3
    :cond_1
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    const-string p1, "if (args.isEmpty()) {\n  \u2026.newInstance(*args)\n    }"

    .line 4
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final d(Ljava/lang/reflect/Constructor;Lorg/koin/core/scope/Scope;Ly8/a;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Lorg/koin/core/scope/Scope;",
            "Ly8/a;",
            ")[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    goto :goto_3

    .line 2
    :cond_0
    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v1, v0, :cond_4

    .line 3
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    aget-object v3, v3, v1

    const-string v4, "p"

    .line 4
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v4, 0x0

    .line 5
    new-instance v5, Lorg/koin/core/instance/b$a;

    invoke-direct {v5, p2}, Lorg/koin/core/instance/b$a;-><init>(Ly8/a;)V

    invoke-virtual {p1, v3, v4, v5}, Lorg/koin/core/scope/Scope;->A(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-virtual {p2, v3}, Ly8/a;->k(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Lorg/koin/core/error/NoBeanDefFoundException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No definition found for class \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x27

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/koin/core/error/NoBeanDefFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move-object p0, v2

    :goto_3
    return-object p0
.end method

.method public static final e(Lorg/koin/core/scope/Scope;Lkotlin/reflect/KClass;Ly8/a;)Ljava/lang/Object;
    .locals 7
    .param p0    # Lorg/koin/core/scope/Scope;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lkotlin/reflect/KClass;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ly8/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/core/scope/Scope;",
            "Lkotlin/reflect/KClass<",
            "TT;>;",
            "Ly8/a;",
            ")TT;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .annotation runtime Lu8/c;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lorg/koin/core/scope/Scope;->z()Lw8/b;

    move-result-object v0

    invoke-virtual {v0}, Lw8/b;->e()Lorg/koin/core/logger/Level;

    move-result-object v0

    sget-object v1, Lorg/koin/core/logger/Level;->DEBUG:Lorg/koin/core/logger/Level;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/koin/core/scope/Scope;->z()Lw8/b;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "|- creating new instance - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lc9/b;->a(Lkotlin/reflect/KClass;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lw8/b;->b(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    const-string v2, "kClass.java.constructors"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {p0}, Lorg/koin/core/scope/Scope;->z()Lw8/b;

    move-result-object p1

    invoke-virtual {p1}, Lw8/b;->e()Lorg/koin/core/logger/Level;

    move-result-object p1

    const-string v2, " ms"

    if-ne p1, v1, :cond_1

    .line 5
    new-instance p1, Lorg/koin/core/instance/b$c;

    invoke-direct {p1, v0, p0, p2}, Lorg/koin/core/instance/b$c;-><init>(Ljava/lang/reflect/Constructor;Lorg/koin/core/scope/Scope;Ly8/a;)V

    invoke-static {p1}, La9/a;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    .line 6
    invoke-virtual {p0}, Lorg/koin/core/scope/Scope;->z()Lw8/b;

    move-result-object p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "|- got arguments in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lw8/b;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v0, p0, p2}, Lorg/koin/core/instance/b;->d(Ljava/lang/reflect/Constructor;Lorg/koin/core/scope/Scope;Ly8/a;)[Ljava/lang/Object;

    move-result-object p2

    .line 8
    :goto_0
    invoke-virtual {p0}, Lorg/koin/core/scope/Scope;->z()Lw8/b;

    move-result-object p1

    invoke-virtual {p1}, Lw8/b;->e()Lorg/koin/core/logger/Level;

    move-result-object p1

    if-ne p1, v1, :cond_2

    .line 9
    new-instance p1, Lorg/koin/core/instance/b$b;

    invoke-direct {p1, p2, v0}, Lorg/koin/core/instance/b$b;-><init>([Ljava/lang/Object;Ljava/lang/reflect/Constructor;)V

    invoke-static {p1}, La9/a;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 10
    invoke-virtual {p0}, Lorg/koin/core/scope/Scope;->z()Lw8/b;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "|- created instance in "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw8/b;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_2
    invoke-static {p2, v0}, Lorg/koin/core/instance/b;->c([Ljava/lang/Object;Ljava/lang/reflect/Constructor;)Ljava/lang/Object;

    move-result-object p2

    :goto_1
    return-object p2

    .line 12
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No constructor found for class \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lc9/b;->a(Lkotlin/reflect/KClass;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic f(Lorg/koin/core/scope/Scope;Ly8/a;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/core/scope/Scope;",
            "Ly8/a;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Lu8/c;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lorg/koin/core/instance/b;->e(Lorg/koin/core/scope/Scope;Lkotlin/reflect/KClass;Ly8/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lorg/koin/core/scope/Scope;Ly8/a;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 1
    invoke-static {}, Ly8/b;->a()Ly8/a;

    move-result-object p1

    :cond_0
    const-string p2, "<this>"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "defParams"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x4

    const-string p3, "T"

    .line 2
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class p2, Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lorg/koin/core/instance/b;->e(Lorg/koin/core/scope/Scope;Lkotlin/reflect/KClass;Ly8/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
