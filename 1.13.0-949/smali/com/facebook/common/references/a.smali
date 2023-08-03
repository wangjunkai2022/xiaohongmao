.class public abstract Lcom/facebook/common/references/a;
.super Ljava/lang/Object;
.source "CloseableReference.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Closeable;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/references/a$d;,
        Lcom/facebook/common/references/a$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Closeable;"
    }
.end annotation


# static fields
.field public static final e:I = 0x0

.field public static final f:I = 0x1

.field public static final g:I = 0x2

.field public static final h:I = 0x3

.field private static i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lcom/facebook/common/references/a;",
            ">;"
        }
    .end annotation
.end field

.field private static j:I
    .annotation build Lcom/facebook/common/references/a$c;
    .end annotation
.end field

.field private static final k:Lcom/facebook/common/references/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/h<",
            "Ljava/io/Closeable;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Lcom/facebook/common/references/a$d;


# instance fields
.field protected a:Z
    .annotation build Ls7/a;
        value = "this"
    .end annotation
.end field

.field protected final b:Lcom/facebook/common/references/SharedReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/SharedReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected final c:Lcom/facebook/common/references/a$d;

.field protected final d:Ljava/lang/Throwable;
    .annotation runtime Lr7/h;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/facebook/common/references/a;

    sput-object v0, Lcom/facebook/common/references/a;->i:Ljava/lang/Class;

    const/4 v0, 0x0

    .line 2
    sput v0, Lcom/facebook/common/references/a;->j:I

    .line 3
    new-instance v0, Lcom/facebook/common/references/a$a;

    invoke-direct {v0}, Lcom/facebook/common/references/a$a;-><init>()V

    sput-object v0, Lcom/facebook/common/references/a;->k:Lcom/facebook/common/references/h;

    .line 4
    new-instance v0, Lcom/facebook/common/references/a$b;

    invoke-direct {v0}, Lcom/facebook/common/references/a$b;-><init>()V

    sput-object v0, Lcom/facebook/common/references/a;->l:Lcom/facebook/common/references/a$d;

    return-void
.end method

.method protected constructor <init>(Lcom/facebook/common/references/SharedReference;Lcom/facebook/common/references/a$d;Ljava/lang/Throwable;)V
    .locals 1
    .param p3    # Ljava/lang/Throwable;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sharedReference",
            "leakHandler",
            "stacktrace"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/SharedReference<",
            "TT;>;",
            "Lcom/facebook/common/references/a$d;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/facebook/common/references/a;->a:Z

    .line 3
    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/references/SharedReference;

    iput-object v0, p0, Lcom/facebook/common/references/a;->b:Lcom/facebook/common/references/SharedReference;

    .line 4
    invoke-virtual {p1}, Lcom/facebook/common/references/SharedReference;->b()V

    .line 5
    iput-object p2, p0, Lcom/facebook/common/references/a;->c:Lcom/facebook/common/references/a$d;

    .line 6
    iput-object p3, p0, Lcom/facebook/common/references/a;->d:Ljava/lang/Throwable;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;Lcom/facebook/common/references/h;Lcom/facebook/common/references/a$d;Ljava/lang/Throwable;)V
    .locals 1
    .param p4    # Ljava/lang/Throwable;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "t",
            "resourceReleaser",
            "leakHandler",
            "stacktrace"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/common/references/h<",
            "TT;>;",
            "Lcom/facebook/common/references/a$d;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/facebook/common/references/a;->a:Z

    .line 9
    new-instance v0, Lcom/facebook/common/references/SharedReference;

    invoke-direct {v0, p1, p2}, Lcom/facebook/common/references/SharedReference;-><init>(Ljava/lang/Object;Lcom/facebook/common/references/h;)V

    iput-object v0, p0, Lcom/facebook/common/references/a;->b:Lcom/facebook/common/references/SharedReference;

    .line 10
    iput-object p3, p0, Lcom/facebook/common/references/a;->c:Lcom/facebook/common/references/a$d;

    .line 11
    iput-object p4, p0, Lcom/facebook/common/references/a;->d:Ljava/lang/Throwable;

    return-void
.end method

.method public static A(Lcom/facebook/common/references/a;)Z
    .locals 0
    .param p0    # Lcom/facebook/common/references/a;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ref"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a<",
            "*>;)Z"
        }
    .end annotation

    .annotation build Lv1/d;
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/common/references/a;->y()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static D(Ljava/io/Closeable;)Lcom/facebook/common/references/a;
    .locals 1
    .param p0    # Ljava/io/Closeable;
        .annotation build Lv1/t;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Closeable;",
            ">(TT;)",
            "Lcom/facebook/common/references/a<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/facebook/common/references/a;->k:Lcom/facebook/common/references/h;

    invoke-static {p0, v0}, Lcom/facebook/common/references/a;->G(Ljava/lang/Object;Lcom/facebook/common/references/h;)Lcom/facebook/common/references/a;

    move-result-object p0

    return-object p0
.end method

.method public static E(Ljava/io/Closeable;Lcom/facebook/common/references/a$d;)Lcom/facebook/common/references/a;
    .locals 3
    .param p0    # Ljava/io/Closeable;
        .annotation build Lv1/t;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "t",
            "leakHandler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Closeable;",
            ">(TT;",
            "Lcom/facebook/common/references/a$d;",
            ")",
            "Lcom/facebook/common/references/a<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    sget-object v1, Lcom/facebook/common/references/a;->k:Lcom/facebook/common/references/h;

    .line 2
    invoke-interface {p1}, Lcom/facebook/common/references/a$d;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 3
    :cond_1
    invoke-static {p0, v1, p1, v0}, Lcom/facebook/common/references/a;->I(Ljava/lang/Object;Lcom/facebook/common/references/h;Lcom/facebook/common/references/a$d;Ljava/lang/Throwable;)Lcom/facebook/common/references/a;

    move-result-object p0

    return-object p0
.end method

.method public static G(Ljava/lang/Object;Lcom/facebook/common/references/h;)Lcom/facebook/common/references/a;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lv1/t;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "t",
            "resourceReleaser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/facebook/common/references/h<",
            "TT;>;)",
            "Lcom/facebook/common/references/a<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/facebook/common/references/a;->l:Lcom/facebook/common/references/a$d;

    invoke-static {p0, p1, v0}, Lcom/facebook/common/references/a;->H(Ljava/lang/Object;Lcom/facebook/common/references/h;Lcom/facebook/common/references/a$d;)Lcom/facebook/common/references/a;

    move-result-object p0

    return-object p0
.end method

.method public static H(Ljava/lang/Object;Lcom/facebook/common/references/h;Lcom/facebook/common/references/a$d;)Lcom/facebook/common/references/a;
    .locals 2
    .param p0    # Ljava/lang/Object;
        .annotation build Lv1/t;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "t",
            "resourceReleaser",
            "leakHandler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/facebook/common/references/h<",
            "TT;>;",
            "Lcom/facebook/common/references/a$d;",
            ")",
            "Lcom/facebook/common/references/a<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-interface {p2}, Lcom/facebook/common/references/a$d;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 2
    :cond_1
    invoke-static {p0, p1, p2, v0}, Lcom/facebook/common/references/a;->I(Ljava/lang/Object;Lcom/facebook/common/references/h;Lcom/facebook/common/references/a$d;Ljava/lang/Throwable;)Lcom/facebook/common/references/a;

    move-result-object p0

    return-object p0
.end method

.method public static I(Ljava/lang/Object;Lcom/facebook/common/references/h;Lcom/facebook/common/references/a$d;Ljava/lang/Throwable;)Lcom/facebook/common/references/a;
    .locals 2
    .param p0    # Ljava/lang/Object;
        .annotation build Lv1/t;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "t",
            "resourceReleaser",
            "leakHandler",
            "stacktrace"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/facebook/common/references/h<",
            "TT;>;",
            "Lcom/facebook/common/references/a$d;",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/facebook/common/references/a<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    instance-of v0, p0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/facebook/common/references/d;

    if-eqz v0, :cond_2

    .line 2
    :cond_1
    sget v0, Lcom/facebook/common/references/a;->j:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 3
    :cond_2
    new-instance v0, Lcom/facebook/common/references/b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/common/references/b;-><init>(Ljava/lang/Object;Lcom/facebook/common/references/h;Lcom/facebook/common/references/a$d;Ljava/lang/Throwable;)V

    return-object v0

    .line 4
    :cond_3
    new-instance v0, Lcom/facebook/common/references/e;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/common/references/e;-><init>(Ljava/lang/Object;Lcom/facebook/common/references/h;Lcom/facebook/common/references/a$d;Ljava/lang/Throwable;)V

    return-object v0

    .line 5
    :cond_4
    new-instance v0, Lcom/facebook/common/references/g;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/common/references/g;-><init>(Ljava/lang/Object;Lcom/facebook/common/references/h;Lcom/facebook/common/references/a$d;Ljava/lang/Throwable;)V

    return-object v0

    .line 6
    :cond_5
    new-instance v0, Lcom/facebook/common/references/c;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/common/references/c;-><init>(Ljava/lang/Object;Lcom/facebook/common/references/h;Lcom/facebook/common/references/a$d;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static J(I)V
    .locals 0
    .param p0    # I
        .annotation build Lcom/facebook/common/references/a$c;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmapCloseableRefType"
        }
    .end annotation

    sput p0, Lcom/facebook/common/references/a;->j:I

    return-void
.end method

.method public static K()Z
    .locals 2

    sget v0, Lcom/facebook/common/references/a;->j:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic a()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/facebook/common/references/a;->i:Ljava/lang/Class;

    return-object v0
.end method

.method public static h(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;
    .locals 0
    .param p0    # Lcom/facebook/common/references/a;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ref"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/common/references/a<",
            "TT;>;)",
            "Lcom/facebook/common/references/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/common/references/a;->d()Lcom/facebook/common/references/a;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static i(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .param p0    # Ljava/util/Collection;
        .annotation build Lv1/t;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "refs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "Lcom/facebook/common/references/a<",
            "TT;>;>;)",
            "Ljava/util/List<",
            "Lcom/facebook/common/references/a<",
            "TT;>;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/common/references/a;

    .line 3
    invoke-static {v1}, Lcom/facebook/common/references/a;->h(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static k(Lcom/facebook/common/references/a;)V
    .locals 0
    .param p0    # Lcom/facebook/common/references/a;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ref"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a<",
            "*>;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/common/references/a;->close()V

    :cond_0
    return-void
.end method

.method public static p(Ljava/lang/Iterable;)V
    .locals 1
    .param p0    # Ljava/lang/Iterable;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "references"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/facebook/common/references/a<",
            "*>;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/references/a;

    .line 2
    invoke-static {v0}, Lcom/facebook/common/references/a;->k(Lcom/facebook/common/references/a;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract b()Lcom/facebook/common/references/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/a<",
            "TT;>;"
        }
    .end annotation
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/common/references/a;->b()Lcom/facebook/common/references/a;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/common/references/a;->a:Z

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/facebook/common/references/a;->a:Z

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Lcom/facebook/common/references/a;->b:Lcom/facebook/common/references/SharedReference;

    invoke-virtual {v0}, Lcom/facebook/common/references/SharedReference;->e()V

    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized d()Lcom/facebook/common/references/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/common/references/a;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/facebook/common/references/a;->b()Lcom/facebook/common/references/a;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized q()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/common/references/a;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/j;->o(Z)V

    .line 2
    iget-object v0, p0, Lcom/facebook/common/references/a;->b:Lcom/facebook/common/references/SharedReference;

    invoke-virtual {v0}, Lcom/facebook/common/references/SharedReference;->h()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized r()Lcom/facebook/common/references/SharedReference;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/SharedReference<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/common/references/a;->b:Lcom/facebook/common/references/SharedReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public s()I
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/common/references/a;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/common/references/a;->b:Lcom/facebook/common/references/SharedReference;

    invoke-virtual {v0}, Lcom/facebook/common/references/SharedReference;->h()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized y()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/common/references/a;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
