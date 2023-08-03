.class public final Lcom/google/common/reflect/b;
.super Ljava/lang/Object;
.source "ClassPath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/reflect/b$c;,
        Lcom/google/common/reflect/b$e;,
        Lcom/google/common/reflect/b$b;,
        Lcom/google/common/reflect/b$d;
    }
.end annotation

.annotation build Lh3/a;
.end annotation


# static fields
.field private static final b:Ljava/util/logging/Logger;

.field private static final c:Lcom/google/common/base/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/b0<",
            "Lcom/google/common/reflect/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lcom/google/common/base/f0;

.field private static final e:Ljava/lang/String; = ".class"


# instance fields
.field private final a:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "Lcom/google/common/reflect/b$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/reflect/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/reflect/b;->b:Ljava/util/logging/Logger;

    .line 2
    new-instance v0, Lcom/google/common/reflect/b$a;

    invoke-direct {v0}, Lcom/google/common/reflect/b$a;-><init>()V

    sput-object v0, Lcom/google/common/reflect/b;->c:Lcom/google/common/base/b0;

    const-string v0, " "

    .line 3
    invoke-static {v0}, Lcom/google/common/base/f0;->k(Ljava/lang/String;)Lcom/google/common/base/f0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/f0;->g()Lcom/google/common/base/f0;

    move-result-object v0

    sput-object v0, Lcom/google/common/reflect/b;->d:Lcom/google/common/base/f0;

    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/ImmutableSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableSet<",
            "Lcom/google/common/reflect/b$d;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/reflect/b;->a:Lcom/google/common/collect/ImmutableSet;

    return-void
.end method

.method static synthetic a()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lcom/google/common/reflect/b;->b:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic b()Lcom/google/common/base/f0;
    .locals 1

    sget-object v0, Lcom/google/common/reflect/b;->d:Lcom/google/common/base/f0;

    return-object v0
.end method

.method public static c(Ljava/lang/ClassLoader;)Lcom/google/common/reflect/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/reflect/b$c;

    invoke-direct {v0}, Lcom/google/common/reflect/b$c;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/common/reflect/b$e;->g(Ljava/lang/ClassLoader;)V

    .line 3
    new-instance p0, Lcom/google/common/reflect/b;

    invoke-virtual {v0}, Lcom/google/common/reflect/b$c;->l()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/reflect/b;-><init>(Lcom/google/common/collect/ImmutableSet;)V

    return-object p0
.end method

.method static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Lh3/d;
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x6

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static j(Ljava/net/URL;)Ljava/io/File;
    .locals 2
    .annotation build Lh3/d;
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/a0;->d(Z)V

    .line 2
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3
    :catch_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public d()Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "Lcom/google/common/reflect/b$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/reflect/b;->a:Lcom/google/common/collect/ImmutableSet;

    invoke-static {v0}, Lcom/google/common/collect/c1;->s(Ljava/lang/Iterable;)Lcom/google/common/collect/c1;

    move-result-object v0

    const-class v1, Lcom/google/common/reflect/b$b;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/c1;->o(Ljava/lang/Class;)Lcom/google/common/collect/c1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/c1;->J()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "Lcom/google/common/reflect/b$d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/reflect/b;->a:Lcom/google/common/collect/ImmutableSet;

    return-object v0
.end method

.method public g()Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "Lcom/google/common/reflect/b$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/reflect/b;->a:Lcom/google/common/collect/ImmutableSet;

    invoke-static {v0}, Lcom/google/common/collect/c1;->s(Ljava/lang/Iterable;)Lcom/google/common/collect/c1;

    move-result-object v0

    const-class v1, Lcom/google/common/reflect/b$b;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/c1;->o(Ljava/lang/Class;)Lcom/google/common/collect/c1;

    move-result-object v0

    sget-object v1, Lcom/google/common/reflect/b;->c:Lcom/google/common/base/b0;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/c1;->n(Lcom/google/common/base/b0;)Lcom/google/common/collect/c1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/c1;->J()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/String;)Lcom/google/common/collect/ImmutableSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/ImmutableSet<",
            "Lcom/google/common/reflect/b$b;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$a;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/google/common/reflect/b;->g()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/k5;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/reflect/b$b;

    .line 4
    invoke-virtual {v2}, Lcom/google/common/reflect/b$b;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableSet$a;->i(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$a;

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$a;->n()Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    return-object p1
.end method

.method public i(Ljava/lang/String;)Lcom/google/common/collect/ImmutableSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/ImmutableSet<",
            "Lcom/google/common/reflect/b$b;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$a;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/google/common/reflect/b;->g()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/k5;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/reflect/b$b;

    .line 5
    invoke-virtual {v2}, Lcom/google/common/reflect/b$b;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableSet$a;->i(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$a;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$a;->n()Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    return-object p1
.end method
