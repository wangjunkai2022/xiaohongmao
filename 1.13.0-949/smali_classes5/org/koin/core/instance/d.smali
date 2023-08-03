.class public abstract Lorg/koin/core/instance/d;
.super Ljava/lang/Object;
.source "InstanceFactory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/koin/core/instance/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008&\u0018\u0000 \u000e*\u0004\u0008\u0000\u0010\u00012\u00060\u0002j\u0002`\u0003:\u0001\u0008B\u0015\u0012\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0010\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0006\u001a\u00028\u00002\u0006\u0010\u0005\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\u0008\u001a\u00028\u00002\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\u0007J\u0014\u0010\n\u001a\u00020\t2\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004H&J\u0014\u0010\u000e\u001a\u00020\r2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u000bH&J\u0008\u0010\u000f\u001a\u00020\rH&R\u001d\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00108\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0017"
    }
    d2 = {
        "Lorg/koin/core/instance/d;",
        "T",
        "",
        "Lorg/koin/mp/Lockable;",
        "Lorg/koin/core/instance/c;",
        "context",
        "e",
        "(Lorg/koin/core/instance/c;)Ljava/lang/Object;",
        "a",
        "",
        "g",
        "Lorg/koin/core/scope/Scope;",
        "scope",
        "",
        "b",
        "d",
        "Lorg/koin/core/definition/a;",
        "Lorg/koin/core/definition/a;",
        "f",
        "()Lorg/koin/core/definition/a;",
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


# static fields
.field public static final b:Lorg/koin/core/instance/d$a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field public static final c:Ljava/lang/String; = "\n\t"
    .annotation build Lm8/g;
    .end annotation
.end field


# instance fields
.field private final a:Lorg/koin/core/definition/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/koin/core/definition/a<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/koin/core/instance/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/koin/core/instance/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/koin/core/instance/d;->b:Lorg/koin/core/instance/d$a;

    return-void
.end method

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/koin/core/instance/d;->a:Lorg/koin/core/definition/a;

    return-void
.end method

.method public static synthetic c(Lorg/koin/core/instance/d;Lorg/koin/core/scope/Scope;ILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/koin/core/instance/d;->b(Lorg/koin/core/scope/Scope;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: drop"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic h(Lorg/koin/core/instance/d;Lorg/koin/core/instance/c;ILjava/lang/Object;)Z
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/koin/core/instance/d;->g(Lorg/koin/core/instance/c;)Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: isCreated"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(Lorg/koin/core/instance/c;)Ljava/lang/Object;
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

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lorg/koin/core/instance/c;->a()Lorg/koin/core/Koin;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/koin/core/Koin;->u()Lw8/b;

    move-result-object v1

    sget-object v2, Lorg/koin/core/logger/Level;->DEBUG:Lorg/koin/core/logger/Level;

    invoke-virtual {v1, v2}, Lw8/b;->g(Lorg/koin/core/logger/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lorg/koin/core/Koin;->u()Lw8/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "| create instance for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/koin/core/instance/d;->a:Lorg/koin/core/definition/a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lw8/b;->b(Ljava/lang/String;)V

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lorg/koin/core/instance/c;->b()Ly8/a;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Ly8/b;->a()Ly8/a;

    move-result-object v1

    .line 5
    :cond_1
    iget-object v2, p0, Lorg/koin/core/instance/d;->a:Lorg/koin/core/definition/a;

    invoke-virtual {v2}, Lorg/koin/core/definition/a;->j()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    .line 6
    invoke-virtual {p1}, Lorg/koin/core/instance/c;->c()Lorg/koin/core/scope/Scope;

    move-result-object p1

    .line 7
    invoke-interface {v2, p1, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 8
    sget-object v1, Ld9/b;->a:Ld9/b;

    invoke-virtual {v1, p1}, Ld9/b;->g(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {v0}, Lorg/koin/core/Koin;->u()Lw8/b;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instance creation error : could not create instance for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/koin/core/instance/d;->a:Lorg/koin/core/definition/a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw8/b;->d(Ljava/lang/String;)V

    .line 10
    new-instance v0, Lorg/koin/core/error/InstanceCreationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create instance for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/koin/core/instance/d;->a:Lorg/koin/core/definition/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/koin/core/error/InstanceCreationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public abstract b(Lorg/koin/core/scope/Scope;)V
    .param p1    # Lorg/koin/core/scope/Scope;
        .annotation build Lm8/h;
        .end annotation
    .end param
.end method

.method public abstract d()V
.end method

.method public abstract e(Lorg/koin/core/instance/c;)Ljava/lang/Object;
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
.end method

.method public final f()Lorg/koin/core/definition/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/koin/core/definition/a<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lorg/koin/core/instance/d;->a:Lorg/koin/core/definition/a;

    return-object v0
.end method

.method public abstract g(Lorg/koin/core/instance/c;)Z
    .param p1    # Lorg/koin/core/instance/c;
        .annotation build Lm8/h;
        .end annotation
    .end param
.end method
