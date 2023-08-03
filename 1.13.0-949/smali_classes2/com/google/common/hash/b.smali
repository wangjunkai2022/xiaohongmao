.class abstract Lcom/google/common/hash/b;
.super Lcom/google/common/hash/c;
.source "AbstractCompositeHashFunction.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# static fields
.field private static final b:J


# instance fields
.field final a:[Lcom/google/common/hash/m;


# direct methods
.method varargs constructor <init>([Lcom/google/common/hash/m;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/common/hash/c;-><init>()V

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 3
    invoke-static {v2}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/google/common/hash/b;->a:[Lcom/google/common/hash/m;

    return-void
.end method

.method private n([Lcom/google/common/hash/n;)Lcom/google/common/hash/n;
    .locals 1

    new-instance v0, Lcom/google/common/hash/b$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/hash/b$a;-><init>(Lcom/google/common/hash/b;[Lcom/google/common/hash/n;)V

    return-object v0
.end method


# virtual methods
.method public d(I)Lcom/google/common/hash/n;
    .locals 4

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/a0;->d(Z)V

    .line 2
    iget-object v1, p0, Lcom/google/common/hash/b;->a:[Lcom/google/common/hash/m;

    array-length v1, v1

    new-array v2, v1, [Lcom/google/common/hash/n;

    :goto_1
    if-ge v0, v1, :cond_1

    .line 3
    iget-object v3, p0, Lcom/google/common/hash/b;->a:[Lcom/google/common/hash/m;

    aget-object v3, v3, v0

    invoke-interface {v3, p1}, Lcom/google/common/hash/m;->d(I)Lcom/google/common/hash/n;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4
    :cond_1
    invoke-direct {p0, v2}, Lcom/google/common/hash/b;->n([Lcom/google/common/hash/n;)Lcom/google/common/hash/n;

    move-result-object p1

    return-object p1
.end method

.method public h()Lcom/google/common/hash/n;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/hash/b;->a:[Lcom/google/common/hash/m;

    array-length v0, v0

    new-array v1, v0, [Lcom/google/common/hash/n;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2
    iget-object v3, p0, Lcom/google/common/hash/b;->a:[Lcom/google/common/hash/m;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lcom/google/common/hash/m;->h()Lcom/google/common/hash/n;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/common/hash/b;->n([Lcom/google/common/hash/n;)Lcom/google/common/hash/n;

    move-result-object v0

    return-object v0
.end method

.method abstract o([Lcom/google/common/hash/n;)Lcom/google/common/hash/l;
.end method
