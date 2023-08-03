.class public final Lorg/koin/core/a;
.super Ljava/lang/Object;
.source "KoinApplication.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/koin/core/a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001fB\t\u0008\u0002\u00a2\u0006\u0004\u0008&\u0010\'J\u0016\u0010\u0006\u001a\u00020\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0003J!\u0010\t\u001a\u00020\u00002\u0012\u0010\u0004\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00030\u0008\"\u00020\u0003\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0014\u0010\u000b\u001a\u00020\u00002\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002J\u0006\u0010\u000c\u001a\u00020\u0005J\u000e\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\rJ\u001a\u0010\u0013\u001a\u00020\u00002\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00010\u0010J\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0014J\u0010\u0010\u0019\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0017J\u0006\u0010\u001a\u001a\u00020\u0005J\u0014\u0010\u001b\u001a\u00020\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002J\u000e\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u0003R\u0017\u0010#\u001a\u00020\u001e8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"R\u0016\u0010%\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010$\u00a8\u0006("
    }
    d2 = {
        "Lorg/koin/core/a;",
        "",
        "",
        "Lx8/a;",
        "modules",
        "",
        "f",
        "i",
        "",
        "j",
        "([Lx8/a;)Lorg/koin/core/a;",
        "h",
        "d",
        "",
        "override",
        "b",
        "",
        "",
        "values",
        "m",
        "Lw8/b;",
        "logger",
        "g",
        "Lorg/koin/core/logger/Level;",
        "level",
        "k",
        "c",
        "n",
        "module",
        "o",
        "Lorg/koin/core/Koin;",
        "a",
        "Lorg/koin/core/Koin;",
        "e",
        "()Lorg/koin/core/Koin;",
        "koin",
        "Z",
        "allowOverride",
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
.field public static final c:Lorg/koin/core/a$a;
    .annotation build Lm8/g;
    .end annotation
.end field


# instance fields
.field private final a:Lorg/koin/core/Koin;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/koin/core/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/koin/core/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/koin/core/a;->c:Lorg/koin/core/a$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/koin/core/Koin;

    invoke-direct {v0}, Lorg/koin/core/Koin;-><init>()V

    iput-object v0, p0, Lorg/koin/core/a;->a:Lorg/koin/core/Koin;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lorg/koin/core/a;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/koin/core/a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lorg/koin/core/a;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/koin/core/a;->f(Ljava/util/List;)V

    return-void
.end method

.method private final f(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lx8/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/koin/core/a;->a:Lorg/koin/core/Koin;

    iget-boolean v1, p0, Lorg/koin/core/a;->b:Z

    invoke-virtual {v0, p1, v1}, Lorg/koin/core/Koin;->O(Ljava/util/List;Z)V

    return-void
.end method

.method public static synthetic l(Lorg/koin/core/a;Lorg/koin/core/logger/Level;ILjava/lang/Object;)Lorg/koin/core/a;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lorg/koin/core/logger/Level;->INFO:Lorg/koin/core/logger/Level;

    :cond_0
    invoke-virtual {p0, p1}, Lorg/koin/core/a;->k(Lorg/koin/core/logger/Level;)Lorg/koin/core/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/koin/core/a;->b:Z

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lorg/koin/core/a;->a:Lorg/koin/core/Koin;

    invoke-virtual {v0}, Lorg/koin/core/Koin;->a()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lorg/koin/core/a;->a:Lorg/koin/core/Koin;

    invoke-virtual {v0}, Lorg/koin/core/Koin;->b()V

    return-void
.end method

.method public final e()Lorg/koin/core/Koin;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lorg/koin/core/a;->a:Lorg/koin/core/Koin;

    return-object v0
.end method

.method public final g(Lw8/b;)Lorg/koin/core/a;
    .locals 1
    .param p1    # Lw8/b;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/koin/core/a;->a:Lorg/koin/core/Koin;

    invoke-virtual {v0, p1}, Lorg/koin/core/Koin;->R(Lw8/b;)V

    return-object p0
.end method

.method public final h(Ljava/util/List;)Lorg/koin/core/a;
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lx8/a;",
            ">;)",
            "Lorg/koin/core/a;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "modules"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lorg/koin/core/a;->a:Lorg/koin/core/Koin;

    invoke-virtual {v0}, Lorg/koin/core/Koin;->u()Lw8/b;

    move-result-object v0

    sget-object v1, Lorg/koin/core/logger/Level;->INFO:Lorg/koin/core/logger/Level;

    invoke-virtual {v0, v1}, Lw8/b;->g(Lorg/koin/core/logger/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lorg/koin/core/a$b;

    invoke-direct {v0, p0, p1}, Lorg/koin/core/a$b;-><init>(Lorg/koin/core/a;Ljava/util/List;)V

    invoke-static {v0}, La9/a;->a(Lkotlin/jvm/functions/Function0;)D

    move-result-wide v0

    .line 3
    iget-object p1, p0, Lorg/koin/core/a;->a:Lorg/koin/core/Koin;

    invoke-virtual {p1}, Lorg/koin/core/Koin;->s()Lorg/koin/core/registry/InstanceRegistry;

    move-result-object p1

    invoke-virtual {p1}, Lorg/koin/core/registry/InstanceRegistry;->r()I

    move-result p1

    .line 4
    iget-object v2, p0, Lorg/koin/core/a;->a:Lorg/koin/core/Koin;

    invoke-virtual {v2}, Lorg/koin/core/Koin;->u()Lw8/b;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loaded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " definitions - "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " ms"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lw8/b;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lorg/koin/core/a;->f(Ljava/util/List;)V

    :goto_0
    return-object p0
.end method

.method public final i(Lx8/a;)Lorg/koin/core/a;
    .locals 1
    .param p1    # Lx8/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "modules"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/koin/core/a;->h(Ljava/util/List;)Lorg/koin/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final varargs j([Lx8/a;)Lorg/koin/core/a;
    .locals 1
    .param p1    # [Lx8/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "modules"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/koin/core/a;->h(Ljava/util/List;)Lorg/koin/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final k(Lorg/koin/core/logger/Level;)Lorg/koin/core/a;
    .locals 2
    .param p1    # Lorg/koin/core/logger/Level;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "level"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/koin/core/a;->a:Lorg/koin/core/Koin;

    sget-object v1, Ld9/b;->a:Ld9/b;

    invoke-virtual {v1, p1}, Ld9/b;->c(Lorg/koin/core/logger/Level;)Lw8/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/koin/core/Koin;->R(Lw8/b;)V

    return-object p0
.end method

.method public final m(Ljava/util/Map;)Lorg/koin/core/a;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/koin/core/a;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/koin/core/a;->a:Lorg/koin/core/Koin;

    invoke-virtual {v0}, Lorg/koin/core/Koin;->E()Lorg/koin/core/registry/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/koin/core/registry/a;->e(Ljava/util/Map;)V

    return-object p0
.end method

.method public final n(Ljava/util/List;)V
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

    iget-object v0, p0, Lorg/koin/core/a;->a:Lorg/koin/core/Koin;

    invoke-virtual {v0, p1}, Lorg/koin/core/Koin;->S(Ljava/util/List;)V

    return-void
.end method

.method public final o(Lx8/a;)V
    .locals 1
    .param p1    # Lx8/a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/koin/core/a;->a:Lorg/koin/core/Koin;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/koin/core/Koin;->S(Ljava/util/List;)V

    return-void
.end method
