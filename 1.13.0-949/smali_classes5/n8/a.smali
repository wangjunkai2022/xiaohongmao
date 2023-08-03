.class public final Ln8/a;
.super Ljava/lang/Object;
.source "KoinApplicationExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u001a\u0014\u0010\u0003\u001a\u00020\u0000*\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0001\u001a\n\u0010\u0004\u001a\u00020\u0000*\u00020\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "Lorg/koin/core/a;",
        "",
        "fileName",
        "b",
        "a",
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
.method public static final a(Lorg/koin/core/a;)Lorg/koin/core/a;
    .locals 1
    .param p0    # Lorg/koin/core/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/koin/core/a;->e()Lorg/koin/core/Koin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/Koin;->E()Lorg/koin/core/registry/a;

    move-result-object v0

    invoke-static {v0}, Lorg/koin/core/registry/b;->a(Lorg/koin/core/registry/a;)V

    return-object p0
.end method

.method public static final b(Lorg/koin/core/a;Ljava/lang/String;)Lorg/koin/core/a;
    .locals 1
    .param p0    # Lorg/koin/core/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/koin/core/a;->e()Lorg/koin/core/Koin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/Koin;->E()Lorg/koin/core/registry/a;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/koin/core/registry/b;->b(Lorg/koin/core/registry/a;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic c(Lorg/koin/core/a;Ljava/lang/String;ILjava/lang/Object;)Lorg/koin/core/a;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "/koin.properties"

    :cond_0
    invoke-static {p0, p1}, Ln8/a;->b(Lorg/koin/core/a;Ljava/lang/String;)Lorg/koin/core/a;

    move-result-object p0

    return-object p0
.end method
