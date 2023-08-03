.class public final Lv8/a;
.super Ljava/lang/Object;
.source "DefaultContextExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0005\u001a\u000e\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000\u001a#\u0010\u0008\u001a\u00020\u00002\u001b\u0010\u0007\u001a\u0017\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00040\u0003j\u0002`\u0005\u00a2\u0006\u0002\u0008\u0006\u001a\u0006\u0010\t\u001a\u00020\u0004\u001a\u000e\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n\u001a\u0014\u0010\u000f\u001a\u00020\u00042\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\n0\r\u001a\u000e\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n\u001a\u0014\u0010\u0011\u001a\u00020\u00042\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\n0\r\u00a8\u0006\u0012"
    }
    d2 = {
        "Lorg/koin/core/a;",
        "koinApplication",
        "d",
        "Lkotlin/Function1;",
        "",
        "Lorg/koin/dsl/KoinAppDeclaration;",
        "Lkotlin/ExtensionFunctionType;",
        "appDeclaration",
        "c",
        "e",
        "Lx8/a;",
        "module",
        "b",
        "",
        "modules",
        "a",
        "g",
        "f",
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
.method public static final a(Ljava/util/List;)V
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lx8/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "modules"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ld9/b;->a:Ld9/b;

    invoke-virtual {v0}, Ld9/b;->a()Lv8/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lv8/d;->g(Ljava/util/List;)V

    return-void
.end method

.method public static final b(Lx8/a;)V
    .locals 1
    .param p0    # Lx8/a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "module"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ld9/b;->a:Ld9/b;

    invoke-virtual {v0}, Ld9/b;->a()Lv8/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lv8/d;->d(Lx8/a;)V

    return-void
.end method

.method public static final c(Lkotlin/jvm/functions/Function1;)Lorg/koin/core/a;
    .locals 1
    .param p0    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/koin/core/a;",
            "Lkotlin/Unit;",
            ">;)",
            "Lorg/koin/core/a;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "appDeclaration"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ld9/b;->a:Ld9/b;

    invoke-virtual {v0}, Ld9/b;->a()Lv8/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lv8/d;->f(Lkotlin/jvm/functions/Function1;)Lorg/koin/core/a;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lorg/koin/core/a;)Lorg/koin/core/a;
    .locals 1
    .param p0    # Lorg/koin/core/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "koinApplication"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ld9/b;->a:Ld9/b;

    invoke-virtual {v0}, Ld9/b;->a()Lv8/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lv8/d;->h(Lorg/koin/core/a;)Lorg/koin/core/a;

    move-result-object p0

    return-object p0
.end method

.method public static final e()V
    .locals 1

    sget-object v0, Ld9/b;->a:Ld9/b;

    invoke-virtual {v0}, Ld9/b;->a()Lv8/d;

    move-result-object v0

    invoke-interface {v0}, Lv8/d;->a()V

    return-void
.end method

.method public static final f(Ljava/util/List;)V
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lx8/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "modules"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ld9/b;->a:Ld9/b;

    invoke-virtual {v0}, Ld9/b;->a()Lv8/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lv8/d;->e(Ljava/util/List;)V

    return-void
.end method

.method public static final g(Lx8/a;)V
    .locals 1
    .param p0    # Lx8/a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "module"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ld9/b;->a:Ld9/b;

    invoke-virtual {v0}, Ld9/b;->a()Lv8/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lv8/d;->c(Lx8/a;)V

    return-void
.end method
