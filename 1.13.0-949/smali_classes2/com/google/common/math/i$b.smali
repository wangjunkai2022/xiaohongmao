.class public final Lcom/google/common/math/i$b;
.super Ljava/lang/Object;
.source "Quantiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:I


# direct methods
.method private constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Quantile scale must be positive"

    .line 3
    invoke-static {v0, v1}, Lcom/google/common/base/a0;->e(ZLjava/lang/Object;)V

    .line 4
    iput p1, p0, Lcom/google/common/math/i$b;->a:I

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/common/math/i$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/math/i$b;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/common/math/i$c;
    .locals 3

    new-instance v0, Lcom/google/common/math/i$c;

    iget v1, p0, Lcom/google/common/math/i$b;->a:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/google/common/math/i$c;-><init>(IILcom/google/common/math/i$a;)V

    return-object v0
.end method

.method public b(Ljava/util/Collection;)Lcom/google/common/math/i$d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/common/math/i$d;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/math/i$d;

    iget v1, p0, Lcom/google/common/math/i$b;->a:I

    invoke-static {p1}, Lcom/google/common/primitives/f;->B(Ljava/util/Collection;)[I

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/google/common/math/i$d;-><init>(I[ILcom/google/common/math/i$a;)V

    return-object v0
.end method

.method public varargs c([I)Lcom/google/common/math/i$d;
    .locals 3

    new-instance v0, Lcom/google/common/math/i$d;

    iget v1, p0, Lcom/google/common/math/i$b;->a:I

    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/google/common/math/i$d;-><init>(I[ILcom/google/common/math/i$a;)V

    return-object v0
.end method
