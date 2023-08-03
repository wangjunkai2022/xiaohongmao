.class Lcom/google/common/collect/Range$c;
.super Lcom/google/common/collect/s3;
.source "Range.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Range;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/s3<",
        "Lcom/google/common/collect/Range<",
        "*>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final c:Lcom/google/common/collect/s3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/s3<",
            "Lcom/google/common/collect/Range<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/Range$c;

    invoke-direct {v0}, Lcom/google/common/collect/Range$c;-><init>()V

    sput-object v0, Lcom/google/common/collect/Range$c;->c:Lcom/google/common/collect/s3;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/s3;-><init>()V

    return-void
.end method


# virtual methods
.method public J(Lcom/google/common/collect/Range;Lcom/google/common/collect/Range;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "*>;",
            "Lcom/google/common/collect/Range<",
            "*>;)I"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/g0;->n()Lcom/google/common/collect/g0;

    move-result-object v0

    iget-object v1, p1, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/k0;

    iget-object v2, p2, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/k0;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/g0;->i(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/g0;

    move-result-object v0

    iget-object p1, p1, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/k0;

    iget-object p2, p2, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/k0;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/g0;->i(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/g0;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/common/collect/g0;->m()I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/common/collect/Range;

    check-cast p2, Lcom/google/common/collect/Range;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Range$c;->J(Lcom/google/common/collect/Range;Lcom/google/common/collect/Range;)I

    move-result p1

    return p1
.end method
