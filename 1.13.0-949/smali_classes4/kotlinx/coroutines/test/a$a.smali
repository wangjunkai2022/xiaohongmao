.class final Lkotlinx/coroutines/test/a$a;
.super Lkotlinx/coroutines/p1;
.source "TestCoroutineContext.kt"

# interfaces
.implements Lkotlinx/coroutines/a1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/test/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTestCoroutineContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TestCoroutineContext.kt\nkotlinx/coroutines/test/TestCoroutineContext$Dispatcher\n+ 2 Runnable.kt\nkotlinx/coroutines/RunnableKt\n*L\n1#1,261:1\n17#2:262\n*S KotlinDebug\n*F\n+ 1 TestCoroutineContext.kt\nkotlinx/coroutines/test/TestCoroutineContext$Dispatcher\n*L\n209#1:262\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0082\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u001c\u0010\t\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u00032\n\u0010\u0007\u001a\u00060\u0005j\u0002`\u0006H\u0016J\u0008\u0010\u000b\u001a\u00020\nH\u0016J\u001e\u0010\u0010\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000c2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000eH\u0016J$\u0010\u0012\u001a\u00020\u00112\u0006\u0010\r\u001a\u00020\u000c2\n\u0010\u0007\u001a\u00060\u0005j\u0002`\u00062\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\u0008\u0010\u0013\u001a\u00020\u000cH\u0016J\u0008\u0010\u0015\u001a\u00020\u0014H\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "Lkotlinx/coroutines/test/a$a;",
        "Lkotlinx/coroutines/p1;",
        "Lkotlinx/coroutines/a1;",
        "Lkotlin/coroutines/CoroutineContext;",
        "context",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "block",
        "",
        "dispatch",
        "",
        "B0",
        "",
        "timeMillis",
        "Lkotlinx/coroutines/q;",
        "continuation",
        "r",
        "Lkotlinx/coroutines/l1;",
        "I",
        "z0",
        "",
        "toString",
        "<init>",
        "(Lkotlinx/coroutines/test/a;)V",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field final synthetic d:Lkotlinx/coroutines/test/a;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/test/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/test/a$a;->d:Lkotlinx/coroutines/test/a;

    invoke-direct {p0}, Lkotlinx/coroutines/p1;-><init>()V

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, p1, v0, v1}, Lkotlinx/coroutines/p1;->v0(Lkotlinx/coroutines/p1;ZILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public B0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public I(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/l1;
    .locals 0
    .param p3    # Ljava/lang/Runnable;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .line 1
    iget-object p4, p0, Lkotlinx/coroutines/test/a$a;->d:Lkotlinx/coroutines/test/a;

    invoke-static {p4, p3, p1, p2}, Lkotlinx/coroutines/test/a;->g(Lkotlinx/coroutines/test/a;Ljava/lang/Runnable;J)Lkotlinx/coroutines/test/c;

    move-result-object p1

    .line 2
    new-instance p2, Lkotlinx/coroutines/test/a$a$a;

    iget-object p3, p0, Lkotlinx/coroutines/test/a$a;->d:Lkotlinx/coroutines/test/a;

    invoke-direct {p2, p3, p1}, Lkotlinx/coroutines/test/a$a$a;-><init>(Lkotlinx/coroutines/test/a;Lkotlinx/coroutines/test/c;)V

    return-object p2
.end method

.method public dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iget-object p1, p0, Lkotlinx/coroutines/test/a$a;->d:Lkotlinx/coroutines/test/a;

    invoke-static {p1, p2}, Lkotlinx/coroutines/test/a;->c(Lkotlinx/coroutines/test/a;Ljava/lang/Runnable;)V

    return-void
.end method

.method public g0(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Deprecated without replacement as an internal method never intended for public use"
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/a1$a;->a(Lkotlinx/coroutines/a1;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public r(JLkotlinx/coroutines/q;)V
    .locals 2
    .param p3    # Lkotlinx/coroutines/q;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlinx/coroutines/q<",
            "-",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/test/a$a;->d:Lkotlinx/coroutines/test/a;

    .line 2
    new-instance v1, Lkotlinx/coroutines/test/a$a$b;

    invoke-direct {v1, p3, p0}, Lkotlinx/coroutines/test/a$a$b;-><init>(Lkotlinx/coroutines/q;Lkotlinx/coroutines/test/a$a;)V

    .line 3
    invoke-static {v0, v1, p1, p2}, Lkotlinx/coroutines/test/a;->g(Lkotlinx/coroutines/test/a;Ljava/lang/Runnable;J)Lkotlinx/coroutines/test/c;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dispatcher("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/test/a$a;->d:Lkotlinx/coroutines/test/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z0()J
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/test/a$a;->d:Lkotlinx/coroutines/test/a;

    invoke-static {v0}, Lkotlinx/coroutines/test/a;->j(Lkotlinx/coroutines/test/a;)J

    move-result-wide v0

    return-wide v0
.end method
