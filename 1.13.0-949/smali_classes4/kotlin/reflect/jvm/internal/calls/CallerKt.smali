.class public final Lkotlin/reflect/jvm/internal/calls/CallerKt;
.super Ljava/lang/Object;
.source "Caller.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u001c\u0010\u0000\u001a\u00020\u0001*\u0006\u0012\u0002\u0008\u00030\u00028@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "arity",
        "",
        "Lkotlin/reflect/jvm/internal/calls/Caller;",
        "getArity",
        "(Lkotlin/reflect/jvm/internal/calls/Caller;)I",
        "kotlin-reflection"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getArity(Lkotlin/reflect/jvm/internal/calls/Caller;)I
    .locals 1
    .param p0    # Lkotlin/reflect/jvm/internal/calls/Caller;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/calls/Caller<",
            "*>;)I"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/calls/Caller;->getParameterTypes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
