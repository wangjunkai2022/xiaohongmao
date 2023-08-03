.class final Lcom/google/common/collect/b4;
.super Lcom/google/common/collect/ImmutableBiMap;
.source "RegularImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableBiMap<",
        "TK;TV;>;"
    }
.end annotation

.annotation build Lh3/b;
    emulated = true
    serializable = true
.end annotation


# static fields
.field static final k:Lcom/google/common/collect/b4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/b4<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient f:[I

.field final transient g:[Ljava/lang/Object;
    .annotation build Lh3/d;
    .end annotation
.end field

.field private final transient h:I

.field private final transient i:I

.field private final transient j:Lcom/google/common/collect/b4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/b4<",
            "TV;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/b4;

    invoke-direct {v0}, Lcom/google/common/collect/b4;-><init>()V

    sput-object v0, Lcom/google/common/collect/b4;->k:Lcom/google/common/collect/b4;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableBiMap;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/common/collect/b4;->f:[I

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    iput-object v1, p0, Lcom/google/common/collect/b4;->g:[Ljava/lang/Object;

    .line 4
    iput v0, p0, Lcom/google/common/collect/b4;->h:I

    .line 5
    iput v0, p0, Lcom/google/common/collect/b4;->i:I

    .line 6
    iput-object p0, p0, Lcom/google/common/collect/b4;->j:Lcom/google/common/collect/b4;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;ILcom/google/common/collect/b4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "I",
            "Lcom/google/common/collect/b4<",
            "TV;TK;>;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableBiMap;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/google/common/collect/b4;->f:[I

    .line 17
    iput-object p2, p0, Lcom/google/common/collect/b4;->g:[Ljava/lang/Object;

    const/4 p1, 0x1

    .line 18
    iput p1, p0, Lcom/google/common/collect/b4;->h:I

    .line 19
    iput p3, p0, Lcom/google/common/collect/b4;->i:I

    .line 20
    iput-object p4, p0, Lcom/google/common/collect/b4;->j:Lcom/google/common/collect/b4;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I)V
    .locals 2

    .line 7
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableBiMap;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/google/common/collect/b4;->g:[Ljava/lang/Object;

    .line 9
    iput p2, p0, Lcom/google/common/collect/b4;->i:I

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/google/common/collect/b4;->h:I

    const/4 v1, 0x2

    if-lt p2, v1, :cond_0

    .line 11
    invoke-static {p2}, Lcom/google/common/collect/ImmutableSet;->l(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-static {p1, p2, v1, v0}, Lcom/google/common/collect/d4;->n([Ljava/lang/Object;III)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/b4;->f:[I

    const/4 v0, 0x1

    .line 13
    invoke-static {p1, p2, v1, v0}, Lcom/google/common/collect/d4;->n([Ljava/lang/Object;III)[I

    move-result-object v0

    .line 14
    new-instance v1, Lcom/google/common/collect/b4;

    invoke-direct {v1, v0, p1, p2, p0}, Lcom/google/common/collect/b4;-><init>([I[Ljava/lang/Object;ILcom/google/common/collect/b4;)V

    iput-object v1, p0, Lcom/google/common/collect/b4;->j:Lcom/google/common/collect/b4;

    return-void
.end method


# virtual methods
.method c()Lcom/google/common/collect/ImmutableSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/d4$a;

    iget-object v1, p0, Lcom/google/common/collect/b4;->g:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/b4;->h:I

    iget v3, p0, Lcom/google/common/collect/b4;->i:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/common/collect/d4$a;-><init>(Lcom/google/common/collect/ImmutableMap;[Ljava/lang/Object;II)V

    return-object v0
.end method

.method d()Lcom/google/common/collect/ImmutableSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TK;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/d4$c;

    iget-object v1, p0, Lcom/google/common/collect/b4;->g:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/b4;->h:I

    iget v3, p0, Lcom/google/common/collect/b4;->i:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/collect/d4$c;-><init>([Ljava/lang/Object;II)V

    .line 2
    new-instance v1, Lcom/google/common/collect/d4$b;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/d4$b;-><init>(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableList;)V

    return-object v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/b4;->f:[I

    iget-object v1, p0, Lcom/google/common/collect/b4;->g:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/b4;->i:I

    iget v3, p0, Lcom/google/common/collect/b4;->h:I

    .line 2
    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/common/collect/d4;->o([I[Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public inverse()Lcom/google/common/collect/ImmutableBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableBiMap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/b4;->j:Lcom/google/common/collect/b4;

    return-object v0
.end method

.method public bridge synthetic inverse()Lcom/google/common/collect/u;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/b4;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/b4;->i:I

    return v0
.end method
