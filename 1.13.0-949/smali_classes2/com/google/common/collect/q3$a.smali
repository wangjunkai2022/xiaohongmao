.class Lcom/google/common/collect/q3$a;
.super Lcom/google/common/collect/l3$f;
.source "ObjectCountHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/q3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/l3$f<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field b:I

.field final synthetic c:Lcom/google/common/collect/q3;


# direct methods
.method constructor <init>(Lcom/google/common/collect/q3;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/q3$a;->c:Lcom/google/common/collect/q3;

    invoke-direct {p0}, Lcom/google/common/collect/l3$f;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/google/common/collect/q3;->a:[Ljava/lang/Object;

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/google/common/collect/q3$a;->a:Ljava/lang/Object;

    .line 3
    iput p2, p0, Lcom/google/common/collect/q3$a;->b:I

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/q3$a;->b()V

    .line 2
    iget v0, p0, Lcom/google/common/collect/q3$a;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/q3$a;->c:Lcom/google/common/collect/q3;

    iget-object v1, p0, Lcom/google/common/collect/q3$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/q3;->v(Ljava/lang/Object;I)I

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/q3$a;->c:Lcom/google/common/collect/q3;

    iget-object v1, v1, Lcom/google/common/collect/q3;->b:[I

    aget v2, v1, v0

    .line 5
    aput p1, v1, v0

    return v2
.end method

.method b()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/common/collect/q3$a;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/q3$a;->c:Lcom/google/common/collect/q3;

    .line 2
    invoke-virtual {v1}, Lcom/google/common/collect/q3;->D()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/q3$a;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/q3$a;->c:Lcom/google/common/collect/q3;

    iget-object v1, v1, Lcom/google/common/collect/q3;->a:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/q3$a;->b:I

    aget-object v1, v1, v2

    .line 3
    invoke-static {v0, v1}, Lcom/google/common/base/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/q3$a;->c:Lcom/google/common/collect/q3;

    iget-object v1, p0, Lcom/google/common/collect/q3$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/q3;->n(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/q3$a;->b:I

    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/q3$a;->b()V

    .line 2
    iget v0, p0, Lcom/google/common/collect/q3$a;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/q3$a;->c:Lcom/google/common/collect/q3;

    iget-object v1, v1, Lcom/google/common/collect/q3;->b:[I

    aget v0, v1, v0

    :goto_0
    return v0
.end method

.method public getElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/q3$a;->a:Ljava/lang/Object;

    return-object v0
.end method
