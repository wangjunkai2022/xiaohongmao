.class final Lcom/google/common/reflect/TypeToken$f;
.super Lcom/google/common/reflect/TypeToken$TypeSet;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/reflect/TypeToken<",
        "TT;>.TypeSet;"
    }
.end annotation


# static fields
.field private static final f:J


# instance fields
.field private transient d:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "Lcom/google/common/reflect/TypeToken<",
            "-TT;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field final synthetic e:Lcom/google/common/reflect/TypeToken;


# direct methods
.method private constructor <init>(Lcom/google/common/reflect/TypeToken;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/reflect/TypeToken$f;->e:Lcom/google/common/reflect/TypeToken;

    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeToken$TypeSet;-><init>(Lcom/google/common/reflect/TypeToken;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/reflect/TypeToken;Lcom/google/common/reflect/TypeToken$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeToken$f;-><init>(Lcom/google/common/reflect/TypeToken;)V

    return-void
.end method

.method private b0()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$f;->e:Lcom/google/common/reflect/TypeToken;

    invoke-virtual {v0}, Lcom/google/common/reflect/TypeToken;->getTypes()Lcom/google/common/reflect/TypeToken$TypeSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/reflect/TypeToken$TypeSet;->classes()Lcom/google/common/reflect/TypeToken$TypeSet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic L()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken$f;->Y()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic M()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken$f;->Y()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected Y()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/reflect/TypeToken<",
            "-TT;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$f;->d:Lcom/google/common/collect/ImmutableSet;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/common/reflect/TypeToken$i;->a:Lcom/google/common/reflect/TypeToken$i;

    .line 3
    invoke-virtual {v0}, Lcom/google/common/reflect/TypeToken$i;->a()Lcom/google/common/reflect/TypeToken$i;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/reflect/TypeToken$f;->e:Lcom/google/common/reflect/TypeToken;

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeToken$i;->d(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/common/collect/c1;->s(Ljava/lang/Iterable;)Lcom/google/common/collect/c1;

    move-result-object v0

    sget-object v1, Lcom/google/common/reflect/TypeToken$j;->a:Lcom/google/common/reflect/TypeToken$j;

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/common/collect/c1;->n(Lcom/google/common/base/b0;)Lcom/google/common/collect/c1;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/common/collect/c1;->J()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/TypeToken$f;->d:Lcom/google/common/collect/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public classes()Lcom/google/common/reflect/TypeToken$TypeSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken<",
            "TT;>.TypeSet;"
        }
    .end annotation

    return-object p0
.end method

.method public interfaces()Lcom/google/common/reflect/TypeToken$TypeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken<",
            "TT;>.TypeSet;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "classes().interfaces() not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rawTypes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "-TT;>;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/reflect/TypeToken$i;->b:Lcom/google/common/reflect/TypeToken$i;

    .line 2
    invoke-virtual {v0}, Lcom/google/common/reflect/TypeToken$i;->a()Lcom/google/common/reflect/TypeToken$i;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/reflect/TypeToken$f;->e:Lcom/google/common/reflect/TypeToken;

    invoke-static {v1}, Lcom/google/common/reflect/TypeToken;->d(Lcom/google/common/reflect/TypeToken;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeToken$i;->c(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
