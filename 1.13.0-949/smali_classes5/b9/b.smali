.class public final Lb9/b;
.super Ljava/lang/Object;
.source "KoinApplication.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a)\u0010\u0006\u001a\u00020\u00012!\u0008\u0002\u0010\u0005\u001a\u001b\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0000j\u0004\u0018\u0001`\u0003\u00a2\u0006\u0002\u0008\u0004*,\u0010\u0007\"\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00020\u0000\u00a2\u0006\u0002\u0008\u00042\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00020\u0000\u00a2\u0006\u0002\u0008\u0004\u00a8\u0006\u0008"
    }
    d2 = {
        "Lkotlin/Function1;",
        "Lorg/koin/core/a;",
        "",
        "Lorg/koin/dsl/KoinAppDeclaration;",
        "Lkotlin/ExtensionFunctionType;",
        "appDeclaration",
        "a",
        "KoinAppDeclaration",
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
.method public static final a(Lkotlin/jvm/functions/Function1;)Lorg/koin/core/a;
    .locals 1
    .param p0    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/h;
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

    .line 1
    sget-object v0, Lorg/koin/core/a;->c:Lorg/koin/core/a$a;

    invoke-virtual {v0}, Lorg/koin/core/a$a;->a()Lorg/koin/core/a;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    invoke-virtual {v0}, Lorg/koin/core/a;->d()V

    return-object v0
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/koin/core/a;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Lb9/b;->a(Lkotlin/jvm/functions/Function1;)Lorg/koin/core/a;

    move-result-object p0

    return-object p0
.end method
