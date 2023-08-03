.class public final Lorg/koin/core/instance/e;
.super Lorg/koin/core/instance/d;
.source "ScopedInstanceFactory.kt"


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
        "\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0002B\u0015\u0012\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0019\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0012\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016J\u0012\u0010\n\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016J\u0017\u0010\u000b\u001a\u00028\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\r\u001a\u00028\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u0008\u0010\u000e\u001a\u00020\tH\u0016J\u001a\u0010\u0014\u001a\u00020\t2\n\u0010\u0011\u001a\u00060\u000fj\u0002`\u00102\u0006\u0010\u0013\u001a\u00020\u0012R:\u0010\u0018\u001a&\u0012\u0008\u0012\u00060\u000fj\u0002`\u0010\u0012\u0004\u0012\u00028\u00000\u0015j\u0012\u0012\u0008\u0012\u00060\u000fj\u0002`\u0010\u0012\u0004\u0012\u00028\u0000`\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u0017\u00a8\u0006\u001d"
    }
    d2 = {
        "Lorg/koin/core/instance/e;",
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
        "a",
        "(Lorg/koin/core/instance/c;)Ljava/lang/Object;",
        "e",
        "d",
        "",
        "Lorg/koin/core/scope/ScopeID;",
        "scopeID",
        "",
        "instance",
        "j",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "Ljava/util/HashMap;",
        "values",
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
.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
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

    .line 1
    invoke-direct {p0, p1}, Lorg/koin/core/instance/d;-><init>(Lorg/koin/core/definition/a;)V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/koin/core/instance/e;->d:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic i(Lorg/koin/core/instance/e;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lorg/koin/core/instance/e;->d:Ljava/util/HashMap;

    return-object p0
.end method


# virtual methods
.method public a(Lorg/koin/core/instance/c;)Ljava/lang/Object;
    .locals 3
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
    iget-object v0, p0, Lorg/koin/core/instance/e;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/koin/core/instance/c;->c()Lorg/koin/core/scope/Scope;

    move-result-object v1

    invoke-virtual {v1}, Lorg/koin/core/scope/Scope;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Lorg/koin/core/instance/d;->a(Lorg/koin/core/instance/c;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/koin/core/instance/e;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/koin/core/instance/c;->c()Lorg/koin/core/scope/Scope;

    move-result-object v1

    invoke-virtual {v1}, Lorg/koin/core/scope/Scope;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object p1, v0

    :goto_0
    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scoped instance not found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/koin/core/instance/c;->c()Lorg/koin/core/scope/Scope;

    move-result-object p1

    invoke-virtual {p1}, Lorg/koin/core/scope/Scope;->x()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/koin/core/instance/d;->f()Lorg/koin/core/definition/a;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lorg/koin/core/scope/Scope;)V
    .locals 3
    .param p1    # Lorg/koin/core/scope/Scope;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lorg/koin/core/instance/d;->f()Lorg/koin/core/definition/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/definition/a;->i()Lorg/koin/core/definition/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/definition/c;->d()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/koin/core/instance/e;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/koin/core/scope/Scope;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/koin/core/instance/e;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/koin/core/scope/Scope;->x()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lorg/koin/core/instance/e;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public e(Lorg/koin/core/instance/c;)Ljava/lang/Object;
    .locals 4
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

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lorg/koin/core/instance/c;->c()Lorg/koin/core/scope/Scope;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/scope/Scope;->I()Lz8/a;

    move-result-object v0

    invoke-virtual {p0}, Lorg/koin/core/instance/d;->f()Lorg/koin/core/definition/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/koin/core/definition/a;->n()Lz8/a;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " in "

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Ld9/b;->a:Ld9/b;

    new-instance v2, Lorg/koin/core/instance/e$a;

    invoke-direct {v2, p0, p1}, Lorg/koin/core/instance/e$a;-><init>(Lorg/koin/core/instance/e;Lorg/koin/core/instance/c;)V

    invoke-virtual {v0, p0, v2}, Ld9/b;->i(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lorg/koin/core/instance/e;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/koin/core/instance/c;->c()Lorg/koin/core/scope/Scope;

    move-result-object v2

    invoke-virtual {v2}, Lorg/koin/core/scope/Scope;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scoped instance not found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/koin/core/instance/c;->c()Lorg/koin/core/scope/Scope;

    move-result-object p1

    invoke-virtual {p1}, Lorg/koin/core/scope/Scope;->x()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/koin/core/instance/d;->f()Lorg/koin/core/definition/a;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong Scope: trying to open instance for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/koin/core/instance/c;->c()Lorg/koin/core/scope/Scope;

    move-result-object p1

    invoke-virtual {p1}, Lorg/koin/core/scope/Scope;->x()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/koin/core/instance/d;->f()Lorg/koin/core/definition/a;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g(Lorg/koin/core/instance/c;)Z
    .locals 1
    .param p1    # Lorg/koin/core/instance/c;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/koin/core/instance/e;->d:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/koin/core/instance/c;->c()Lorg/koin/core/scope/Scope;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/koin/core/scope/Scope;->x()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final j(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "scopeID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instance"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/koin/core/instance/e;->d:Ljava/util/HashMap;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
