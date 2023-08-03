.class public final Lorg/koin/core/instance/a;
.super Lorg/koin/core/instance/d;
.source "FactoryInstanceFactory.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/koin/core/instance/d<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0002B\u0015\u0012\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0012\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016J\u0012\u0010\n\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016J\u0008\u0010\u000b\u001a\u00020\tH\u0016J\u0017\u0010\u000c\u001a\u00028\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0012"
    }
    d2 = {
        "Lorg/koin/core/instance/a;",
        "T",
        "Lorg/koin/core/instance/d;",
        "Lorg/koin/core/instance/c;",
        "context",
        "",
        "g",
        "Lorg/koin/core/scope/Scope;",
        "scope",
        "",
        "b",
        "d",
        "e",
        "(Lorg/koin/core/instance/c;)Ljava/lang/Object;",
        "Lorg/koin/core/definition/a;",
        "beanDefinition",
        "<init>",
        "(Lorg/koin/core/definition/a;)V",
        "koin-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/koin/core/definition/a;)V
    .locals 1
    .param p1    # Lorg/koin/core/definition/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/definition/a<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "beanDefinition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/koin/core/instance/d;-><init>(Lorg/koin/core/definition/a;)V

    return-void
.end method


# virtual methods
.method public b(Lorg/koin/core/scope/Scope;)V
    .locals 1
    .param p1    # Lorg/koin/core/scope/Scope;
        .annotation build Lm8/h;
        .end annotation
    .end param

    invoke-virtual {p0}, Lorg/koin/core/instance/d;->f()Lorg/koin/core/definition/a;

    move-result-object p1

    invoke-virtual {p1}, Lorg/koin/core/definition/a;->i()Lorg/koin/core/definition/c;

    move-result-object p1

    invoke-virtual {p1}, Lorg/koin/core/definition/c;->d()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e(Lorg/koin/core/instance/c;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lorg/koin/core/instance/c;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/instance/c;",
            ")TT;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/koin/core/instance/d;->a(Lorg/koin/core/instance/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g(Lorg/koin/core/instance/c;)Z
    .locals 0
    .param p1    # Lorg/koin/core/instance/c;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method
