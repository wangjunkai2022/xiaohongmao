.class final Lcom/google/common/reflect/TypeToken$g;
.super Lcom/google/common/reflect/TypeToken$TypeSet;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/reflect/TypeToken<",
        "TT;>.TypeSet;"
    }
.end annotation


# static fields
.field private static final g:J


# instance fields
.field private final transient d:Lcom/google/common/reflect/TypeToken$TypeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/reflect/TypeToken<",
            "TT;>.TypeSet;"
        }
    .end annotation
.end field

.field private transient e:Lcom/google/common/collect/ImmutableSet;
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

.field final synthetic f:Lcom/google/common/reflect/TypeToken;


# direct methods
.method constructor <init>(Lcom/google/common/reflect/TypeToken;Lcom/google/common/reflect/TypeToken$TypeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/reflect/TypeToken<",
            "TT;>.TypeSet;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/common/reflect/TypeToken$g;->f:Lcom/google/common/reflect/TypeToken;

    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeToken$TypeSet;-><init>(Lcom/google/common/reflect/TypeToken;)V

    .line 2
    iput-object p2, p0, Lcom/google/common/reflect/TypeToken$g;->d:Lcom/google/common/reflect/TypeToken$TypeSet;

    return-void
.end method

.method private b0()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$g;->f:Lcom/google/common/reflect/TypeToken;

    invoke-virtual {v0}, Lcom/google/common/reflect/TypeToken;->getTypes()Lcom/google/common/reflect/TypeToken$TypeSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/reflect/TypeToken$TypeSet;->interfaces()Lcom/google/common/reflect/TypeToken$TypeSet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic L()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken$g;->Y()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic M()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken$g;->Y()Ljava/util/Set;

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
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$g;->e:Lcom/google/common/collect/ImmutableSet;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$g;->d:Lcom/google/common/reflect/TypeToken$TypeSet;

    .line 3
    invoke-static {v0}, Lcom/google/common/collect/c1;->s(Ljava/lang/Iterable;)Lcom/google/common/collect/c1;

    move-result-object v0

    sget-object v1, Lcom/google/common/reflect/TypeToken$j;->b:Lcom/google/common/reflect/TypeToken$j;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/c1;->n(Lcom/google/common/base/b0;)Lcom/google/common/collect/c1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/c1;->J()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/TypeToken$g;->e:Lcom/google/common/collect/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public classes()Lcom/google/common/reflect/TypeToken$TypeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken<",
            "TT;>.TypeSet;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "interfaces().classes() not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public interfaces()Lcom/google/common/reflect/TypeToken$TypeSet;
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

    iget-object v1, p0, Lcom/google/common/reflect/TypeToken$g;->f:Lcom/google/common/reflect/TypeToken;

    .line 2
    invoke-static {v1}, Lcom/google/common/reflect/TypeToken;->d(Lcom/google/common/reflect/TypeToken;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeToken$i;->c(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/common/collect/c1;->s(Ljava/lang/Iterable;)Lcom/google/common/collect/c1;

    move-result-object v0

    new-instance v1, Lcom/google/common/reflect/TypeToken$g$a;

    invoke-direct {v1, p0}, Lcom/google/common/reflect/TypeToken$g$a;-><init>(Lcom/google/common/reflect/TypeToken$g;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/common/collect/c1;->n(Lcom/google/common/base/b0;)Lcom/google/common/collect/c1;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/common/collect/c1;->J()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
