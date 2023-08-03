.class public final Lcom/google/common/cache/e;
.super Ljava/lang/Object;
.source "CacheBuilderSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/e$l;,
        Lcom/google/common/cache/e$o;,
        Lcom/google/common/cache/e$b;,
        Lcom/google/common/cache/e$d;,
        Lcom/google/common/cache/e$k;,
        Lcom/google/common/cache/e$n;,
        Lcom/google/common/cache/e$g;,
        Lcom/google/common/cache/e$c;,
        Lcom/google/common/cache/e$j;,
        Lcom/google/common/cache/e$i;,
        Lcom/google/common/cache/e$e;,
        Lcom/google/common/cache/e$h;,
        Lcom/google/common/cache/e$f;,
        Lcom/google/common/cache/e$m;
    }
.end annotation

.annotation build Lh3/c;
.end annotation


# static fields
.field private static final o:Lcom/google/common/base/f0;

.field private static final p:Lcom/google/common/base/f0;

.field private static final q:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Lcom/google/common/cache/e$m;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/lang/Integer;
    .annotation build Lh3/d;
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field b:Ljava/lang/Long;
    .annotation build Lh3/d;
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field c:Ljava/lang/Long;
    .annotation build Lh3/d;
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field d:Ljava/lang/Integer;
    .annotation build Lh3/d;
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field e:Lcom/google/common/cache/j$t;
    .annotation build Lh3/d;
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field f:Lcom/google/common/cache/j$t;
    .annotation build Lh3/d;
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field g:Ljava/lang/Boolean;
    .annotation build Lh3/d;
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field h:J
    .annotation build Lh3/d;
    .end annotation
.end field

.field i:Ljava/util/concurrent/TimeUnit;
    .annotation build Lh3/d;
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field j:J
    .annotation build Lh3/d;
    .end annotation
.end field

.field k:Ljava/util/concurrent/TimeUnit;
    .annotation build Lh3/d;
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field l:J
    .annotation build Lh3/d;
    .end annotation
.end field

.field m:Ljava/util/concurrent/TimeUnit;
    .annotation build Lh3/d;
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field private final n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x2c

    .line 1
    invoke-static {v0}, Lcom/google/common/base/f0;->h(C)Lcom/google/common/base/f0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/f0;->q()Lcom/google/common/base/f0;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/e;->o:Lcom/google/common/base/f0;

    const/16 v0, 0x3d

    .line 2
    invoke-static {v0}, Lcom/google/common/base/f0;->h(C)Lcom/google/common/base/f0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/f0;->q()Lcom/google/common/base/f0;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/e;->p:Lcom/google/common/base/f0;

    .line 3
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/e$e;

    invoke-direct {v1}, Lcom/google/common/cache/e$e;-><init>()V

    const-string v2, "initialCapacity"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$b;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/e$i;

    invoke-direct {v1}, Lcom/google/common/cache/e$i;-><init>()V

    const-string v2, "maximumSize"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$b;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/e$j;

    invoke-direct {v1}, Lcom/google/common/cache/e$j;-><init>()V

    const-string v2, "maximumWeight"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$b;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/e$c;

    invoke-direct {v1}, Lcom/google/common/cache/e$c;-><init>()V

    const-string v2, "concurrencyLevel"

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$b;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/e$g;

    sget-object v2, Lcom/google/common/cache/j$t;->c:Lcom/google/common/cache/j$t;

    invoke-direct {v1, v2}, Lcom/google/common/cache/e$g;-><init>(Lcom/google/common/cache/j$t;)V

    const-string v3, "weakKeys"

    .line 8
    invoke-virtual {v0, v3, v1}, Lcom/google/common/collect/ImmutableMap$b;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/e$n;

    sget-object v3, Lcom/google/common/cache/j$t;->b:Lcom/google/common/cache/j$t;

    invoke-direct {v1, v3}, Lcom/google/common/cache/e$n;-><init>(Lcom/google/common/cache/j$t;)V

    const-string v3, "softValues"

    .line 9
    invoke-virtual {v0, v3, v1}, Lcom/google/common/collect/ImmutableMap$b;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/e$n;

    invoke-direct {v1, v2}, Lcom/google/common/cache/e$n;-><init>(Lcom/google/common/cache/j$t;)V

    const-string v2, "weakValues"

    .line 10
    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$b;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/e$k;

    invoke-direct {v1}, Lcom/google/common/cache/e$k;-><init>()V

    const-string v2, "recordStats"

    .line 11
    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$b;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/e$b;

    invoke-direct {v1}, Lcom/google/common/cache/e$b;-><init>()V

    const-string v2, "expireAfterAccess"

    .line 12
    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$b;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/e$o;

    invoke-direct {v1}, Lcom/google/common/cache/e$o;-><init>()V

    const-string v2, "expireAfterWrite"

    .line 13
    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$b;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/e$l;

    invoke-direct {v1}, Lcom/google/common/cache/e$l;-><init>()V

    const-string v2, "refreshAfterWrite"

    .line 14
    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$b;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/e$l;

    invoke-direct {v1}, Lcom/google/common/cache/e$l;-><init>()V

    const-string v2, "refreshInterval"

    .line 15
    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$b;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$b;->a()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/e;->q:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/cache/e;->n:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/cache/e;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b()Lcom/google/common/cache/e;
    .locals 1

    const-string v0, "maximumSize=0"

    invoke-static {v0}, Lcom/google/common/cache/e;->e(Ljava/lang/String;)Lcom/google/common/cache/e;

    move-result-object v0

    return-object v0
.end method

.method private static c(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;
    .locals 0
    .param p2    # Ljava/util/concurrent/TimeUnit;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static varargs d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;)Lcom/google/common/cache/e;
    .locals 7

    .line 1
    new-instance v0, Lcom/google/common/cache/e;

    invoke-direct {v0, p0}, Lcom/google/common/cache/e;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3
    sget-object v1, Lcom/google/common/cache/e;->o:Lcom/google/common/base/f0;

    invoke-virtual {v1, p0}, Lcom/google/common/base/f0;->n(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    sget-object v2, Lcom/google/common/cache/e;->p:Lcom/google/common/base/f0;

    invoke-virtual {v2, v1}, Lcom/google/common/base/f0;->n(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 5
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    const-string v5, "blank key-value pair"

    invoke-static {v3, v5}, Lcom/google/common/base/a0;->e(ZLjava/lang/Object;)V

    .line 6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-gt v3, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    const-string v5, "key-value pair %s with more than one equals sign"

    .line 7
    invoke-static {v3, v5, v1}, Lcom/google/common/base/a0;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9
    sget-object v3, Lcom/google/common/cache/e;->q:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v3, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/cache/e$m;

    if-eqz v3, :cond_1

    const/4 v6, 0x1

    :cond_1
    const-string v5, "unknown key %s"

    .line 10
    invoke-static {v6, v5, v1}, Lcom/google/common/base/a0;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 11
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v4, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 12
    :goto_2
    invoke-interface {v3, v0, v1, v2}, Lcom/google/common/cache/e$m;->a(Lcom/google/common/cache/e;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/common/cache/e;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/common/cache/e;

    .line 3
    iget-object v1, p0, Lcom/google/common/cache/e;->a:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/common/cache/e;->a:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/google/common/base/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/common/cache/e;->b:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/common/cache/e;->b:Ljava/lang/Long;

    .line 4
    invoke-static {v1, v3}, Lcom/google/common/base/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/common/cache/e;->c:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/common/cache/e;->c:Ljava/lang/Long;

    .line 5
    invoke-static {v1, v3}, Lcom/google/common/base/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/common/cache/e;->d:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/common/cache/e;->d:Ljava/lang/Integer;

    .line 6
    invoke-static {v1, v3}, Lcom/google/common/base/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/common/cache/e;->e:Lcom/google/common/cache/j$t;

    iget-object v3, p1, Lcom/google/common/cache/e;->e:Lcom/google/common/cache/j$t;

    .line 7
    invoke-static {v1, v3}, Lcom/google/common/base/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/common/cache/e;->f:Lcom/google/common/cache/j$t;

    iget-object v3, p1, Lcom/google/common/cache/e;->f:Lcom/google/common/cache/j$t;

    .line 8
    invoke-static {v1, v3}, Lcom/google/common/base/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/common/cache/e;->g:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/common/cache/e;->g:Ljava/lang/Boolean;

    .line 9
    invoke-static {v1, v3}, Lcom/google/common/base/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/google/common/cache/e;->h:J

    iget-object v1, p0, Lcom/google/common/cache/e;->i:Ljava/util/concurrent/TimeUnit;

    .line 10
    invoke-static {v3, v4, v1}, Lcom/google/common/cache/e;->c(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v1

    iget-wide v3, p1, Lcom/google/common/cache/e;->h:J

    iget-object v5, p1, Lcom/google/common/cache/e;->i:Ljava/util/concurrent/TimeUnit;

    .line 11
    invoke-static {v3, v4, v5}, Lcom/google/common/cache/e;->c(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v3

    .line 12
    invoke-static {v1, v3}, Lcom/google/common/base/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/google/common/cache/e;->j:J

    iget-object v1, p0, Lcom/google/common/cache/e;->k:Ljava/util/concurrent/TimeUnit;

    .line 13
    invoke-static {v3, v4, v1}, Lcom/google/common/cache/e;->c(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v1

    iget-wide v3, p1, Lcom/google/common/cache/e;->j:J

    iget-object v5, p1, Lcom/google/common/cache/e;->k:Ljava/util/concurrent/TimeUnit;

    .line 14
    invoke-static {v3, v4, v5}, Lcom/google/common/cache/e;->c(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v3

    .line 15
    invoke-static {v1, v3}, Lcom/google/common/base/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/google/common/cache/e;->l:J

    iget-object v1, p0, Lcom/google/common/cache/e;->m:Ljava/util/concurrent/TimeUnit;

    .line 16
    invoke-static {v3, v4, v1}, Lcom/google/common/cache/e;->c(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v1

    iget-wide v3, p1, Lcom/google/common/cache/e;->l:J

    iget-object p1, p1, Lcom/google/common/cache/e;->m:Ljava/util/concurrent/TimeUnit;

    .line 17
    invoke-static {v3, v4, p1}, Lcom/google/common/cache/e;->c(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object p1

    .line 18
    invoke-static {v1, p1}, Lcom/google/common/base/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method f()Lcom/google/common/cache/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/d<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/cache/d;->D()Lcom/google/common/cache/d;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/common/cache/e;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/cache/d;->x(I)Lcom/google/common/cache/d;

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/google/common/cache/e;->b:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/common/cache/d;->B(J)Lcom/google/common/cache/d;

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/google/common/cache/e;->c:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/common/cache/d;->C(J)Lcom/google/common/cache/d;

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/google/common/cache/e;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/cache/d;->e(I)Lcom/google/common/cache/d;

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/google/common/cache/e;->e:Lcom/google/common/cache/j$t;

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 11
    sget-object v3, Lcom/google/common/cache/e$a;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    if-ne v1, v2, :cond_4

    .line 12
    invoke-virtual {v0}, Lcom/google/common/cache/d;->M()Lcom/google/common/cache/d;

    goto :goto_0

    .line 13
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 14
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/google/common/cache/e;->f:Lcom/google/common/cache/j$t;

    if-eqz v1, :cond_8

    .line 15
    sget-object v3, Lcom/google/common/cache/e$a;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    if-eq v1, v2, :cond_7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 16
    invoke-virtual {v0}, Lcom/google/common/cache/d;->J()Lcom/google/common/cache/d;

    goto :goto_1

    .line 17
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 18
    :cond_7
    invoke-virtual {v0}, Lcom/google/common/cache/d;->N()Lcom/google/common/cache/d;

    .line 19
    :cond_8
    :goto_1
    iget-object v1, p0, Lcom/google/common/cache/e;->g:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 20
    invoke-virtual {v0}, Lcom/google/common/cache/d;->E()Lcom/google/common/cache/d;

    .line 21
    :cond_9
    iget-object v1, p0, Lcom/google/common/cache/e;->i:Ljava/util/concurrent/TimeUnit;

    if-eqz v1, :cond_a

    .line 22
    iget-wide v2, p0, Lcom/google/common/cache/e;->h:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/common/cache/d;->g(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/d;

    .line 23
    :cond_a
    iget-object v1, p0, Lcom/google/common/cache/e;->k:Ljava/util/concurrent/TimeUnit;

    if-eqz v1, :cond_b

    .line 24
    iget-wide v2, p0, Lcom/google/common/cache/e;->j:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/common/cache/d;->f(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/d;

    .line 25
    :cond_b
    iget-object v1, p0, Lcom/google/common/cache/e;->m:Ljava/util/concurrent/TimeUnit;

    if-eqz v1, :cond_c

    .line 26
    iget-wide v2, p0, Lcom/google/common/cache/e;->l:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/common/cache/d;->F(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/d;

    :cond_c
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/e;->n:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/google/common/cache/e;->a:Ljava/lang/Integer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/common/cache/e;->b:Ljava/lang/Long;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/common/cache/e;->c:Ljava/lang/Long;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/common/cache/e;->d:Ljava/lang/Integer;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/common/cache/e;->e:Lcom/google/common/cache/j$t;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/common/cache/e;->f:Lcom/google/common/cache/j$t;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/common/cache/e;->g:Ljava/lang/Boolean;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/common/cache/e;->h:J

    iget-object v3, p0, Lcom/google/common/cache/e;->i:Ljava/util/concurrent/TimeUnit;

    .line 2
    invoke-static {v1, v2, v3}, Lcom/google/common/cache/e;->c(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/common/cache/e;->j:J

    iget-object v3, p0, Lcom/google/common/cache/e;->k:Ljava/util/concurrent/TimeUnit;

    .line 3
    invoke-static {v1, v2, v3}, Lcom/google/common/cache/e;->c(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/common/cache/e;->l:J

    iget-object v3, p0, Lcom/google/common/cache/e;->m:Ljava/util/concurrent/TimeUnit;

    .line 4
    invoke-static {v1, v2, v3}, Lcom/google/common/cache/e;->c(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 5
    invoke-static {v0}, Lcom/google/common/base/w;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/google/common/base/v;->c(Ljava/lang/Object;)Lcom/google/common/base/v$b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/cache/e;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/v$b;->p(Ljava/lang/Object;)Lcom/google/common/base/v$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/v$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
