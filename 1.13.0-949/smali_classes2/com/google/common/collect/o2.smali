.class final Lcom/google/common/collect/o2;
.super Lcom/google/common/collect/ImmutableCollection;
.source "ImmutableMapValues.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/o2$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableCollection<",
        "TV;>;"
    }
.end annotation

.annotation build Lh3/b;
    emulated = true
.end annotation


# instance fields
.field private final b:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/o2;->b:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method static synthetic j(Lcom/google/common/collect/o2;)Lcom/google/common/collect/ImmutableMap;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/o2;->b:Lcom/google/common/collect/ImmutableMap;

    return-object p0
.end method


# virtual methods
.method public asList()Lcom/google/common/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/o2;->b:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/common/collect/o2$b;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/o2$b;-><init>(Lcom/google/common/collect/o2;Lcom/google/common/collect/ImmutableList;)V

    return-object v1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/o2;->iterator()Lcom/google/common/collect/k5;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/x2;->q(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method h()Ljava/lang/Object;
    .locals 2
    .annotation build Lh3/c;
    .end annotation

    new-instance v0, Lcom/google/common/collect/o2$c;

    iget-object v1, p0, Lcom/google/common/collect/o2;->b:Lcom/google/common/collect/ImmutableMap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/o2$c;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-object v0
.end method

.method public iterator()Lcom/google/common/collect/k5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/k5<",
            "TV;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/common/collect/o2$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/o2$a;-><init>(Lcom/google/common/collect/o2;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/o2;->iterator()Lcom/google/common/collect/k5;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/o2;->b:Lcom/google/common/collect/ImmutableMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
