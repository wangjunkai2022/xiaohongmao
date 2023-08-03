.class public final Lb9/c;
.super Ljava/lang/Object;
.source "ModuleDSL.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000 \n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001a9\u0010\t\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0001\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00002\u001b\u0010\u0008\u001a\u0017\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u0002`\u0006\u00a2\u0006\u0002\u0008\u0007H\u0007\u001a-\u0010\n\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0001\u001a\u00020\u00002\u001b\u0010\u0008\u001a\u0017\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u0002`\u0006\u00a2\u0006\u0002\u0008\u0007*,\u0010\u000b\"\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0002\u0008\u00072\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0002\u0008\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "",
        "createdAtStart",
        "override",
        "Lkotlin/Function1;",
        "Lx8/a;",
        "",
        "Lorg/koin/dsl/ModuleDeclaration;",
        "Lkotlin/ExtensionFunctionType;",
        "moduleDeclaration",
        "b",
        "a",
        "ModuleDeclaration",
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
.method public static final a(ZLkotlin/jvm/functions/Function1;)Lx8/a;
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lx8/a;",
            "Lkotlin/Unit;",
            ">;)",
            "Lx8/a;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "moduleDeclaration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lx8/a;

    invoke-direct {v0, p0}, Lx8/a;-><init>(Z)V

    .line 2
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static final b(ZZLkotlin/jvm/functions/Function1;)Lx8/a;
    .locals 0
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lx8/a;",
            "Lkotlin/Unit;",
            ">;)",
            "Lx8/a;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "\'override\' parameter is not used anymore. See \'allowOverride\' in KoinApplication"
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string p1, "moduleDeclaration"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Lx8/a;

    invoke-direct {p1, p0}, Lx8/a;-><init>(Z)V

    .line 2
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic c(ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lx8/a;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0, p1}, Lb9/c;->a(ZLkotlin/jvm/functions/Function1;)Lx8/a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lx8/a;
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    const/4 p0, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p1, 0x0

    :cond_1
    invoke-static {p0, p1, p2}, Lb9/c;->b(ZZLkotlin/jvm/functions/Function1;)Lx8/a;

    move-result-object p0

    return-object p0
.end method
