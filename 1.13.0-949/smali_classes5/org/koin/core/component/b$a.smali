.class public final Lorg/koin/core/component/b$a;
.super Ljava/lang/Object;
.source "KoinScopeComponent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/koin/core/component/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static a(Lorg/koin/core/component/b;)V
    .locals 1
    .param p0    # Lorg/koin/core/component/b;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-interface {p0}, Lorg/koin/core/component/b;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/scope/Scope;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0}, Lorg/koin/core/component/b;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object p0

    invoke-virtual {p0}, Lorg/koin/core/scope/Scope;->e()V

    :cond_0
    return-void
.end method

.method public static b(Lorg/koin/core/component/b;)Lorg/koin/core/Koin;
    .locals 0
    .param p0    # Lorg/koin/core/component/b;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    invoke-static {p0}, Lorg/koin/core/component/a$a;->a(Lorg/koin/core/component/a;)Lorg/koin/core/Koin;

    move-result-object p0

    return-object p0
.end method
