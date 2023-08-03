.class Lcom/google/common/util/concurrent/h1$g;
.super Lcom/google/common/util/concurrent/h1$k;
.source "Striped.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/h1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/h1$k<",
        "T",
        "L;",
        ">;"
    }
.end annotation


# instance fields
.field private final f:[Ljava/lang/Object;


# direct methods
.method private constructor <init>(ILcom/google/common/base/i0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/common/base/i0<",
            "T",
            "L;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/h1$k;-><init>(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    if-gt p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v2, "Stripes must be <= 2^30)"

    .line 3
    invoke-static {p1, v2}, Lcom/google/common/base/a0;->e(ZLjava/lang/Object;)V

    .line 4
    iget p1, p0, Lcom/google/common/util/concurrent/h1$k;->e:I

    add-int/2addr p1, v1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/util/concurrent/h1$g;->f:[Ljava/lang/Object;

    .line 5
    :goto_1
    iget-object p1, p0, Lcom/google/common/util/concurrent/h1$g;->f:[Ljava/lang/Object;

    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 6
    invoke-interface {p2}, Lcom/google/common/base/i0;->get()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method synthetic constructor <init>(ILcom/google/common/base/i0;Lcom/google/common/util/concurrent/h1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/h1$g;-><init>(ILcom/google/common/base/i0;)V

    return-void
.end method


# virtual methods
.method public g(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)T",
            "L;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/h1$g;->f:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public p()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/h1$g;->f:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method
