.class public final Lv8/b;
.super Ljava/lang/Object;
.source "GlobalContext.kt"

# interfaces
.implements Lv8/d;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0007\u001a\u00020\u0006H\u0016J\n\u0010\u0008\u001a\u0004\u0018\u00010\u0006H\u0016J\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002J\u0008\u0010\n\u001a\u00020\u0004H\u0016J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J%\u0010\u0010\u001a\u00020\u00022\u001b\u0010\u000f\u001a\u0017\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00040\u000cj\u0002`\r\u00a2\u0006\u0002\u0008\u000eH\u0016J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u0016\u0010\u0016\u001a\u00020\u00042\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0014H\u0016J\u0010\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u0016\u0010\u0018\u001a\u00020\u00042\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0014H\u0016\u00a8\u0006\u001b"
    }
    d2 = {
        "Lv8/b;",
        "Lv8/d;",
        "Lorg/koin/core/a;",
        "koinApplication",
        "",
        "j",
        "Lorg/koin/core/Koin;",
        "get",
        "b",
        "i",
        "a",
        "h",
        "Lkotlin/Function1;",
        "Lorg/koin/dsl/KoinAppDeclaration;",
        "Lkotlin/ExtensionFunctionType;",
        "appDeclaration",
        "f",
        "Lx8/a;",
        "module",
        "d",
        "",
        "modules",
        "g",
        "c",
        "e",
        "<init>",
        "()V",
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
.field public static final a:Lv8/b;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static b:Lorg/koin/core/Koin;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private static c:Lorg/koin/core/a;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv8/b;

    invoke-direct {v0}, Lv8/b;-><init>()V

    sput-object v0, Lv8/b;->a:Lv8/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final j(Lorg/koin/core/a;)V
    .locals 1

    .line 1
    sget-object v0, Lv8/b;->b:Lorg/koin/core/Koin;

    if-nez v0, :cond_0

    .line 2
    sput-object p1, Lv8/b;->c:Lorg/koin/core/a;

    .line 3
    invoke-virtual {p1}, Lorg/koin/core/a;->e()Lorg/koin/core/Koin;

    move-result-object p1

    sput-object p1, Lv8/b;->b:Lorg/koin/core/Koin;

    return-void

    .line 4
    :cond_0
    new-instance p1, Lorg/koin/core/error/KoinAppAlreadyStartedException;

    const-string v0, "A Koin Application has already been started"

    invoke-direct {p1, v0}, Lorg/koin/core/error/KoinAppAlreadyStartedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lv8/b;->b:Lorg/koin/core/Koin;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/koin/core/Koin;->a()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    sput-object v0, Lv8/b;->b:Lorg/koin/core/Koin;

    .line 4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Lorg/koin/core/Koin;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    sget-object v0, Lv8/b;->b:Lorg/koin/core/Koin;

    return-object v0
.end method

.method public c(Lx8/a;)V
    .locals 1
    .param p1    # Lx8/a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lv8/b;->a:Lv8/b;

    invoke-virtual {v0}, Lv8/b;->get()Lorg/koin/core/Koin;

    move-result-object v0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/koin/core/Koin;->S(Ljava/util/List;)V

    .line 3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public d(Lx8/a;)V
    .locals 4
    .param p1    # Lx8/a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lv8/b;->a:Lv8/b;

    invoke-virtual {v0}, Lv8/b;->get()Lorg/koin/core/Koin;

    move-result-object v0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lorg/koin/core/Koin;->P(Lorg/koin/core/Koin;Ljava/util/List;ZILjava/lang/Object;)V

    .line 3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public e(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
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

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lv8/b;->a:Lv8/b;

    invoke-virtual {v0}, Lv8/b;->get()Lorg/koin/core/Koin;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/koin/core/Koin;->S(Ljava/util/List;)V

    .line 3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public f(Lkotlin/jvm/functions/Function1;)Lorg/koin/core/a;
    .locals 2
    .param p1    # Lkotlin/jvm/functions/Function1;
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

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lorg/koin/core/a;->c:Lorg/koin/core/a$a;

    invoke-virtual {v0}, Lorg/koin/core/a$a;->a()Lorg/koin/core/a;

    move-result-object v0

    .line 3
    sget-object v1, Lv8/b;->a:Lv8/b;

    invoke-direct {v1, v0}, Lv8/b;->j(Lorg/koin/core/a;)V

    .line 4
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v0}, Lorg/koin/core/a;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public g(Ljava/util/List;)V
    .locals 4
    .param p1    # Ljava/util/List;
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

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lv8/b;->a:Lv8/b;

    invoke-virtual {v0}, Lv8/b;->get()Lorg/koin/core/Koin;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lorg/koin/core/Koin;->P(Lorg/koin/core/Koin;Ljava/util/List;ZILjava/lang/Object;)V

    .line 3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public get()Lorg/koin/core/Koin;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lv8/b;->b:Lorg/koin/core/Koin;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "KoinApplication has not been started"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h(Lorg/koin/core/a;)Lorg/koin/core/a;
    .locals 1
    .param p1    # Lorg/koin/core/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "koinApplication"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lv8/b;->a:Lv8/b;

    invoke-direct {v0, p1}, Lv8/b;->j(Lorg/koin/core/a;)V

    .line 3
    invoke-virtual {p1}, Lorg/koin/core/a;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final i()Lorg/koin/core/a;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    sget-object v0, Lv8/b;->c:Lorg/koin/core/a;

    return-object v0
.end method
