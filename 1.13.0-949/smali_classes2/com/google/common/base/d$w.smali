.class Lcom/google/common/base/d$w;
.super Lcom/google/common/base/d;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "w"
.end annotation


# instance fields
.field final b:Lcom/google/common/base/d;


# direct methods
.method constructor <init>(Lcom/google/common/base/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/base/d;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/d;

    iput-object p1, p0, Lcom/google/common/base/d$w;->b:Lcom/google/common/base/d;

    return-void
.end method


# virtual methods
.method public B(C)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/base/d$w;->b:Lcom/google/common/base/d;

    invoke-virtual {v0, p1}, Lcom/google/common/base/d;->B(C)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public C(Ljava/lang/CharSequence;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/base/d$w;->b:Lcom/google/common/base/d;

    invoke-virtual {v0, p1}, Lcom/google/common/base/d;->E(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public E(Ljava/lang/CharSequence;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/base/d$w;->b:Lcom/google/common/base/d;

    invoke-virtual {v0, p1}, Lcom/google/common/base/d;->C(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public F()Lcom/google/common/base/d;
    .locals 1

    iget-object v0, p0, Lcom/google/common/base/d$w;->b:Lcom/google/common/base/d;

    return-object v0
.end method

.method Q(Ljava/util/BitSet;)V
    .locals 3
    .annotation build Lh3/c;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/google/common/base/d$w;->b:Lcom/google/common/base/d;

    invoke-virtual {v1, v0}, Lcom/google/common/base/d;->Q(Ljava/util/BitSet;)V

    const/4 v1, 0x0

    const/high16 v2, 0x10000

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->flip(II)V

    .line 4
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/d;->e(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public i(Ljava/lang/CharSequence;)I
    .locals 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/base/d$w;->b:Lcom/google/common/base/d;

    invoke-virtual {v1, p1}, Lcom/google/common/base/d;->i(Ljava/lang/CharSequence;)I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/common/base/d$w;->b:Lcom/google/common/base/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".negate()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
