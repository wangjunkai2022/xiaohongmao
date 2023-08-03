.class Lcom/google/common/collect/e4;
.super Lcom/google/common/collect/ImmutableMultiset;
.source "RegularImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/e4$c;,
        Lcom/google/common/collect/e4$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMultiset<",
        "TE;>;"
    }
.end annotation

.annotation build Lh3/b;
    emulated = true
    serializable = true
.end annotation


# static fields
.field static final g:Lcom/google/common/collect/e4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/e4<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final transient d:Lcom/google/common/collect/q3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/q3<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final transient e:I

.field private transient f:Lcom/google/common/collect/ImmutableSet;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/collect/e4;

    .line 2
    invoke-static {}, Lcom/google/common/collect/q3;->c()Lcom/google/common/collect/q3;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/e4;-><init>(Lcom/google/common/collect/q3;)V

    sput-object v0, Lcom/google/common/collect/e4;->g:Lcom/google/common/collect/e4;

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/q3;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/q3<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMultiset;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/e4;->d:Lcom/google/common/collect/q3;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Lcom/google/common/collect/q3;->D()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 4
    invoke-virtual {p1, v2}, Lcom/google/common/collect/q3;->l(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v0, v1}, Lcom/google/common/primitives/f;->x(J)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/e4;->e:I

    return-void
.end method


# virtual methods
.method public count(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/e4;->d:Lcom/google/common/collect/q3;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/q3;->g(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public elementSet()Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/e4;->f:Lcom/google/common/collect/ImmutableSet;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/common/collect/e4$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/e4$b;-><init>(Lcom/google/common/collect/e4;Lcom/google/common/collect/e4$a;)V

    iput-object v0, p0, Lcom/google/common/collect/e4;->f:Lcom/google/common/collect/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/e4;->elementSet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method h()Ljava/lang/Object;
    .locals 1
    .annotation build Lh3/c;
    .end annotation

    new-instance v0, Lcom/google/common/collect/e4$c;

    invoke-direct {v0, p0}, Lcom/google/common/collect/e4$c;-><init>(Lcom/google/common/collect/k3;)V

    return-object v0
.end method

.method m(I)Lcom/google/common/collect/k3$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/k3$a<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/e4;->d:Lcom/google/common/collect/q3;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/q3;->h(I)Lcom/google/common/collect/k3$a;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/e4;->e:I

    return v0
.end method
