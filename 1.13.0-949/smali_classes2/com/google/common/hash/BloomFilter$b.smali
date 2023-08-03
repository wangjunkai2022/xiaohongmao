.class Lcom/google/common/hash/BloomFilter$b;
.super Ljava/lang/Object;
.source "BloomFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/BloomFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final e:J = 0x1L


# instance fields
.field final a:[J

.field final b:I

.field final c:Lcom/google/common/hash/Funnel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/hash/Funnel<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final d:Lcom/google/common/hash/BloomFilter$c;


# direct methods
.method constructor <init>(Lcom/google/common/hash/BloomFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/hash/BloomFilter<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/hash/BloomFilter;->a(Lcom/google/common/hash/BloomFilter;)Lcom/google/common/hash/g$c;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/hash/g$c;->a:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {v0}, Lcom/google/common/hash/g$c;->g(Ljava/util/concurrent/atomic/AtomicLongArray;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/hash/BloomFilter$b;->a:[J

    .line 3
    invoke-static {p1}, Lcom/google/common/hash/BloomFilter;->b(Lcom/google/common/hash/BloomFilter;)I

    move-result v0

    iput v0, p0, Lcom/google/common/hash/BloomFilter$b;->b:I

    .line 4
    invoke-static {p1}, Lcom/google/common/hash/BloomFilter;->c(Lcom/google/common/hash/BloomFilter;)Lcom/google/common/hash/Funnel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/hash/BloomFilter$b;->c:Lcom/google/common/hash/Funnel;

    .line 5
    invoke-static {p1}, Lcom/google/common/hash/BloomFilter;->d(Lcom/google/common/hash/BloomFilter;)Lcom/google/common/hash/BloomFilter$c;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/hash/BloomFilter$b;->d:Lcom/google/common/hash/BloomFilter$c;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/Object;
    .locals 7

    new-instance v6, Lcom/google/common/hash/BloomFilter;

    new-instance v1, Lcom/google/common/hash/g$c;

    iget-object v0, p0, Lcom/google/common/hash/BloomFilter$b;->a:[J

    invoke-direct {v1, v0}, Lcom/google/common/hash/g$c;-><init>([J)V

    iget v2, p0, Lcom/google/common/hash/BloomFilter$b;->b:I

    iget-object v3, p0, Lcom/google/common/hash/BloomFilter$b;->c:Lcom/google/common/hash/Funnel;

    iget-object v4, p0, Lcom/google/common/hash/BloomFilter$b;->d:Lcom/google/common/hash/BloomFilter$c;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/common/hash/BloomFilter;-><init>(Lcom/google/common/hash/g$c;ILcom/google/common/hash/Funnel;Lcom/google/common/hash/BloomFilter$c;Lcom/google/common/hash/BloomFilter$a;)V

    return-object v6
.end method
