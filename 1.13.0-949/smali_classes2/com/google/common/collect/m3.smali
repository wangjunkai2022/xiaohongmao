.class final Lcom/google/common/collect/m3;
.super Lcom/google/common/collect/s3;
.source "NaturalOrdering.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/s3<",
        "Ljava/lang/Comparable;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation build Lh3/b;
    serializable = true
.end annotation


# static fields
.field static final e:Lcom/google/common/collect/m3;

.field private static final f:J


# instance fields
.field private transient c:Lcom/google/common/collect/s3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/s3<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field private transient d:Lcom/google/common/collect/s3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/s3<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/m3;

    invoke-direct {v0}, Lcom/google/common/collect/m3;-><init>()V

    sput-object v0, Lcom/google/common/collect/m3;->e:Lcom/google/common/collect/m3;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/s3;-><init>()V

    return-void
.end method

.method private K()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/common/collect/m3;->e:Lcom/google/common/collect/m3;

    return-object v0
.end method


# virtual methods
.method public C()Lcom/google/common/collect/s3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/s3<",
            "TS;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/m3;->c:Lcom/google/common/collect/s3;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Lcom/google/common/collect/s3;->C()Lcom/google/common/collect/s3;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/m3;->c:Lcom/google/common/collect/s3;

    :cond_0
    return-object v0
.end method

.method public D()Lcom/google/common/collect/s3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/s3<",
            "TS;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/m3;->d:Lcom/google/common/collect/s3;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Lcom/google/common/collect/s3;->D()Lcom/google/common/collect/s3;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/m3;->d:Lcom/google/common/collect/s3;

    :cond_0
    return-object v0
.end method

.method public G()Lcom/google/common/collect/s3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/s3<",
            "TS;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/j4;->c:Lcom/google/common/collect/j4;

    return-object v0
.end method

.method public J(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/m3;->J(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Ordering.natural()"

    return-object v0
.end method
