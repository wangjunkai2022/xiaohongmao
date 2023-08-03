.class public final Lorg/koin/core/instance/f;
.super Lorg/koin/core/instance/d;
.source "SingleInstanceFactory.kt"


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
        "\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0002B\u0015\u0012\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0013\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0003\u001a\u00028\u0000H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0012\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016J\u0008\u0010\r\u001a\u00020\u000bH\u0016J\u0017\u0010\u000e\u001a\u00028\u00002\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0010\u001a\u00028\u00002\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u000fR\u0018\u0010\u0012\u001a\u0004\u0018\u00018\u00008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u0011\u00a8\u0006\u0017"
    }
    d2 = {
        "Lorg/koin/core/instance/f;",
        "T",
        "Lorg/koin/core/instance/d;",
        "j",
        "()Ljava/lang/Object;",
        "Lorg/koin/core/instance/c;",
        "context",
        "",
        "g",
        "Lorg/koin/core/scope/Scope;",
        "scope",
        "",
        "b",
        "d",
        "a",
        "(Lorg/koin/core/instance/c;)Ljava/lang/Object;",
        "e",
        "Ljava/lang/Object;",
        "value",
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


# instance fields
.field private d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field


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

.method public static final synthetic i(Lorg/koin/core/instance/f;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/koin/core/instance/f;->d:Ljava/lang/Object;

    return-void
.end method

.method private final j()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/koin/core/instance/f;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Single instance created couldn\'t return value"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Lorg/koin/core/instance/c;)Ljava/lang/Object;
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

    .line 1
    iget-object v0, p0, Lorg/koin/core/instance/f;->d:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Lorg/koin/core/instance/d;->a(Lorg/koin/core/instance/c;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lorg/koin/core/instance/f;->j()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public b(Lorg/koin/core/scope/Scope;)V
    .locals 1
    .param p1    # Lorg/koin/core/scope/Scope;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lorg/koin/core/instance/d;->f()Lorg/koin/core/definition/a;

    move-result-object p1

    invoke-virtual {p1}, Lorg/koin/core/definition/a;->i()Lorg/koin/core/definition/c;

    move-result-object p1

    invoke-virtual {p1}, Lorg/koin/core/definition/c;->d()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/koin/core/instance/f;->d:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lorg/koin/core/instance/f;->d:Ljava/lang/Object;

    return-void
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lorg/koin/core/instance/d;->c(Lorg/koin/core/instance/d;Lorg/koin/core/scope/Scope;ILjava/lang/Object;)V

    return-void
.end method

.method public e(Lorg/koin/core/instance/c;)Ljava/lang/Object;
    .locals 2
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

    .line 1
    sget-object v0, Ld9/b;->a:Ld9/b;

    new-instance v1, Lorg/koin/core/instance/f$a;

    invoke-direct {v1, p0, p1}, Lorg/koin/core/instance/f$a;-><init>(Lorg/koin/core/instance/f;Lorg/koin/core/instance/c;)V

    invoke-virtual {v0, p0, v1}, Ld9/b;->i(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lorg/koin/core/instance/f;->j()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g(Lorg/koin/core/instance/c;)Z
    .locals 0
    .param p1    # Lorg/koin/core/instance/c;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iget-object p1, p0, Lorg/koin/core/instance/f;->d:Ljava/lang/Object;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
